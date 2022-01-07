
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct rp_port {int rp_overflows; } ;
typedef int CHANNEL_t ;


 unsigned int RXBREAK ;
 unsigned int RXFOVERFL ;
 unsigned int RXFRAME ;
 unsigned int RXPARITY ;
 unsigned int STATMODE ;
 unsigned int STMBREAK ;
 unsigned int STMFRAMEH ;
 unsigned int STMPARITYH ;
 unsigned int STMRCVROVRH ;
 int TRE_FRAMING ;
 int TRE_OVERRUN ;
 int TRE_PARITY ;
 int rp_readch1 (int *,int ) ;
 unsigned int rp_readch2 (int *,int ) ;
 int sDisRxStatusMode (int *) ;
 int sEnRxStatusMode (int *) ;
 int sGetRxCnt (int *) ;
 int sGetTxRxDataIO (int *) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int) ;
 int ttydisc_rint_done (struct tty*) ;

__attribute__((used)) static void rp_do_receive(struct rp_port *rp, struct tty *tp,
   CHANNEL_t *cp, unsigned int ChanStatus)
{
 unsigned int CharNStat;
 int ToRecv, ch, err = 0;

 ToRecv = sGetRxCnt(cp);
 if(ToRecv == 0)
  return;






 if(ChanStatus & (RXFOVERFL | RXBREAK | RXFRAME | RXPARITY)) {
  if(!(ChanStatus & STATMODE)) {
   ChanStatus |= STATMODE;
   sEnRxStatusMode(cp);
  }
 }





 tty_lock(tp);
 if(ChanStatus & STATMODE) {
  while(ToRecv) {
   CharNStat = rp_readch2(cp,sGetTxRxDataIO(cp));
   ch = CharNStat & 0xff;

   if((CharNStat & STMBREAK) || (CharNStat & STMFRAMEH))
    err |= TRE_FRAMING;
   else if (CharNStat & STMPARITYH)
    err |= TRE_PARITY;
   else if (CharNStat & STMRCVROVRH) {
    rp->rp_overflows++;
    err |= TRE_OVERRUN;
   }

   ttydisc_rint(tp, ch, err);
   ToRecv--;
  }




  if(sGetRxCnt(cp) == 0) {
   sDisRxStatusMode(cp);
  }
 } else {
  ToRecv = sGetRxCnt(cp);
  while (ToRecv) {
   ch = rp_readch1(cp,sGetTxRxDataIO(cp));
   ttydisc_rint(tp, ch & 0xff, err);
   ToRecv--;
  }
 }
        ttydisc_rint_done(tp);
        tty_unlock(tp);
}
