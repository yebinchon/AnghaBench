
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_16__ {int* TxControl; } ;
struct rp_port {unsigned int rp_intmask; TYPE_1__* rp_ctlp; int rp_timer; TYPE_2__ rp_channel; } ;
struct TYPE_15__ {int dev; } ;


 int CHANINT_EN ;
 int MCINT_EN ;
 int POLL_INTERVAL ;
 int RXINT_EN ;
 int SET_DTR ;
 int SET_RTS ;
 int SRCINT_EN ;
 int TRIG_1 ;
 int TXINT_EN ;
 int _INDX_ADDR ;
 int callout_reset (int *,int ,int ,struct rp_port*) ;
 int device_busy (int ) ;
 int le32dec (int*) ;
 int rp_do_poll ;
 int rp_writech4 (TYPE_2__*,int ,int ) ;
 int sClrTxXOFF (TYPE_2__*) ;
 int sDisRxStatusMode (TYPE_2__*) ;
 int sDisTxSoftFlowCtl (TYPE_2__*) ;
 int sEnInterrupts (TYPE_2__*,int) ;
 int sEnRxFIFO (TYPE_2__*) ;
 int sEnTransmit (TYPE_2__*) ;
 int sFlushRxFIFO (TYPE_2__*) ;
 int sFlushTxFIFO (TYPE_2__*) ;
 unsigned int sGetChanIntID (TYPE_2__*) ;
 unsigned int sGetChanStatus (TYPE_2__*) ;
 int sSetRxTrigger (TYPE_2__*,int ) ;
 int sStartRxProcessor (TYPE_2__*) ;
 struct rp_port* tty_softc (struct tty*) ;

__attribute__((used)) static int
rpopen(struct tty *tp)
{
 struct rp_port *rp;
 int flags;
 unsigned int IntMask, ChanStatus;

 rp = tty_softc(tp);

 flags = 0;
 flags |= SET_RTS;
 flags |= SET_DTR;
 rp->rp_channel.TxControl[3] =
  ((rp->rp_channel.TxControl[3]
  & ~(SET_RTS | SET_DTR)) | flags);
 rp_writech4(&rp->rp_channel,_INDX_ADDR,
  le32dec(rp->rp_channel.TxControl));
 sSetRxTrigger(&rp->rp_channel, TRIG_1);
 sDisRxStatusMode(&rp->rp_channel);
 sFlushRxFIFO(&rp->rp_channel);
 sFlushTxFIFO(&rp->rp_channel);

 sEnInterrupts(&rp->rp_channel,
  (TXINT_EN|MCINT_EN|RXINT_EN|SRCINT_EN|CHANINT_EN));
 sSetRxTrigger(&rp->rp_channel, TRIG_1);

 sDisRxStatusMode(&rp->rp_channel);
 sClrTxXOFF(&rp->rp_channel);




 sDisTxSoftFlowCtl(&rp->rp_channel);

 sStartRxProcessor(&rp->rp_channel);

 sEnRxFIFO(&rp->rp_channel);
 sEnTransmit(&rp->rp_channel);





 IntMask = sGetChanIntID(&rp->rp_channel);
 IntMask = IntMask & rp->rp_intmask;
 ChanStatus = sGetChanStatus(&rp->rp_channel);

 callout_reset(&rp->rp_timer, POLL_INTERVAL, rp_do_poll, rp);

 device_busy(rp->rp_ctlp->dev);
 return(0);
}
