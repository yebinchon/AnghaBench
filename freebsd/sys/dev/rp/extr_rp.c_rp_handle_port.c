
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct rp_port {unsigned int rp_intmask; struct tty* rp_tty; int rp_channel; } ;
typedef int CHANNEL_t ;


 unsigned int CD_ACT ;
 unsigned int DELTA_CD ;
 unsigned int RXF_TRIG ;
 int rp_do_receive (struct rp_port*,struct tty*,int *,unsigned int) ;
 unsigned int sGetChanIntID (int *) ;
 unsigned int sGetChanStatus (int *) ;
 int ttydisc_modem (struct tty*,int) ;

__attribute__((used)) static void rp_handle_port(struct rp_port *rp)
{
 CHANNEL_t *cp;
 struct tty *tp;
 unsigned int IntMask, ChanStatus;

 if(!rp)
  return;

 cp = &rp->rp_channel;
 tp = rp->rp_tty;
 IntMask = sGetChanIntID(cp);
 IntMask = IntMask & rp->rp_intmask;
 ChanStatus = sGetChanStatus(cp);
 if(IntMask & RXF_TRIG)
  rp_do_receive(rp, tp, cp, ChanStatus);
 if(IntMask & DELTA_CD) {
  if(ChanStatus & CD_ACT) {
   (void)ttydisc_modem(tp, 1);
  } else {
   (void)ttydisc_modem(tp, 0);
  }
 }






}
