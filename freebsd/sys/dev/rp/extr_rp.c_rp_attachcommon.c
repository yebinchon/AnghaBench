
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct tty {int dummy; } ;
struct rp_port {int rp_port; int rp_unit; int rp_chan; int rp_aiop; int rp_intmask; int rp_cts; int rp_channel; TYPE_1__* rp_ctlp; int rp_timer; struct tty* rp_tty; } ;
struct TYPE_6__ {int num_ports; int hwmtx_init; int hwmtx; int dev; struct rp_port* rp; } ;
typedef TYPE_1__ CONTROLLER_T ;


 int CTS_ACT ;
 int DELTA_CD ;
 int DELTA_CTS ;
 int DELTA_DSR ;
 int ENOMEM ;
 int ENXIO ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int RXF_TRIG ;
 char* RocketPortVersion ;
 int SRC_INT ;
 int TXFIFO_MT ;
 int callout_init_mtx (int *,int ,int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,int,char*,int) ;
 int rp_releaseresource (TYPE_1__*) ;
 int rp_tty_class ;
 int sGetAiopNumChan (TYPE_1__*,int) ;
 int sGetChanStatus (int *) ;
 scalar_t__ sInitChan (TYPE_1__*,int *,int,int) ;
 struct tty* tty_alloc (int *,struct rp_port*) ;
 int tty_getlock (struct tty*) ;
 int tty_makedev (struct tty*,int *,char*,int,int) ;

int
rp_attachcommon(CONTROLLER_T *ctlp, int num_aiops, int num_ports)
{
 int unit;
 int num_chan;
 int aiop, chan, port;
 int ChanStatus;
 int retval;
 struct rp_port *rp;
 struct tty *tp;

 unit = device_get_unit(ctlp->dev);

 printf("RocketPort%d (Version %s) %d ports.\n", unit,
  RocketPortVersion, num_ports);

 ctlp->num_ports = num_ports;
 ctlp->rp = rp = (struct rp_port *)
  malloc(sizeof(struct rp_port) * num_ports, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (rp == ((void*)0)) {
  device_printf(ctlp->dev, "rp_attachcommon: Could not malloc rp_ports structures.\n");
  retval = ENOMEM;
  goto nogo;
 }

 port = 0;
 for(aiop=0; aiop < num_aiops; aiop++) {
  num_chan = sGetAiopNumChan(ctlp, aiop);
  for(chan=0; chan < num_chan; chan++, port++, rp++) {
   rp->rp_tty = tp = tty_alloc(&rp_tty_class, rp);
   callout_init_mtx(&rp->rp_timer, tty_getlock(tp), 0);
   rp->rp_port = port;
   rp->rp_ctlp = ctlp;
   rp->rp_unit = unit;
   rp->rp_chan = chan;
   rp->rp_aiop = aiop;

   rp->rp_intmask = RXF_TRIG | TXFIFO_MT | SRC_INT |
    DELTA_CD | DELTA_CTS | DELTA_DSR;



   if(sInitChan(ctlp, &rp->rp_channel, aiop, chan) == 0) {
    device_printf(ctlp->dev, "RocketPort sInitChan(%d, %d, %d) failed.\n",
           unit, aiop, chan);
    retval = ENXIO;
    goto nogo;
   }
   ChanStatus = sGetChanStatus(&rp->rp_channel);
   rp->rp_cts = (ChanStatus & CTS_ACT) != 0;
   tty_makedev(tp, ((void*)0), "R%r%r", unit, port);
  }
 }

 mtx_init(&ctlp->hwmtx, "rp_hwmtx", ((void*)0), MTX_DEF);
 ctlp->hwmtx_init = 1;
 return (0);

nogo:
 rp_releaseresource(ctlp);

 return (retval);
}
