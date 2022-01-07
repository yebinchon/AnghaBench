
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_cflag; int t_state; scalar_t__ t_actout; int t_dev; } ;
struct rp_port {int rp_channel; } ;
typedef int CHANNEL_t ;


 int CHANINT_EN ;
 scalar_t__ FALSE ;
 int HUPCL ;
 scalar_t__ ISCALLOUT (int ) ;
 int MCINT_EN ;
 int RXINT_EN ;
 int SRCINT_EN ;
 scalar_t__* TSA_CARR_ON (struct tty*) ;
 int TS_ISOPEN ;
 int TXINT_EN ;
 int sClrDTR (int *) ;
 int sClrTxXOFF (int *) ;
 int sDisCTSFlowCtl (int *) ;
 int sDisInterrupts (int *,int) ;
 int sDisRTSFlowCtl (int *) ;
 int sDisTransmit (int *) ;
 int sDisTxSoftFlowCtl (int *) ;
 int sFlushRxFIFO (int *) ;
 int sFlushTxFIFO (int *) ;
 struct rp_port* tty_softc (struct tty*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
rphardclose(struct tty *tp)
{
 struct rp_port *rp;
 CHANNEL_t *cp;

 rp = tty_softc(tp);
 cp = &rp->rp_channel;

 sFlushRxFIFO(cp);
 sFlushTxFIFO(cp);
 sDisTransmit(cp);
 sDisInterrupts(cp, TXINT_EN|MCINT_EN|RXINT_EN|SRCINT_EN|CHANINT_EN);
 sDisRTSFlowCtl(cp);
 sDisCTSFlowCtl(cp);
 sDisTxSoftFlowCtl(cp);
 sClrTxXOFF(cp);
}
