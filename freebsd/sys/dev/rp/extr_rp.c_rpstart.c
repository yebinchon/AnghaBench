
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_7__ {char* TxControl; } ;
struct rp_port {int * TxBuf; scalar_t__ rp_xmit_stopped; TYPE_1__ rp_channel; } ;
typedef TYPE_1__ CHANNEL_t ;


 int TXFIFO_SIZE ;
 int le16dec (int *) ;
 int rp_writech1 (TYPE_1__*,int ,int ) ;
 int rp_writech2 (TYPE_1__*,int ,int ) ;
 int sEnTransmit (TYPE_1__*) ;
 int sGetTxCnt (TYPE_1__*) ;
 int sGetTxRxDataIO (TYPE_1__*) ;
 struct rp_port* tty_softc (struct tty*) ;
 int ttydisc_getc (struct tty*,int **,int) ;

__attribute__((used)) static void
rpstart(struct tty *tp)
{
 struct rp_port *rp;
 CHANNEL_t *cp;
 char flags;
 int xmit_fifo_room;
 int i, count, wcount;

 rp = tty_softc(tp);
 cp = &rp->rp_channel;
 flags = rp->rp_channel.TxControl[3];

 if(rp->rp_xmit_stopped) {
  sEnTransmit(cp);
  rp->rp_xmit_stopped = 0;
 }

 xmit_fifo_room = TXFIFO_SIZE - sGetTxCnt(cp);
 count = ttydisc_getc(tp, &rp->TxBuf, xmit_fifo_room);
 if(xmit_fifo_room > 0) {
  for( i = 0, wcount = count >> 1; wcount > 0; i += 2, wcount-- ) {
   rp_writech2(cp, sGetTxRxDataIO(cp), le16dec(&rp->TxBuf[i]));
  }
  if ( count & 1 ) {
   rp_writech1(cp, sGetTxRxDataIO(cp), rp->TxBuf[(count-1)]);
  }
 }
}
