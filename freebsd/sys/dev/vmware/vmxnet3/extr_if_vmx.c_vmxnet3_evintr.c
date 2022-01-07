
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct vmxnet3_txq_shared {scalar_t__ stopped; int error; } ;
struct vmxnet3_softc {TYPE_3__* vmx_rxq; TYPE_2__* vmx_txq; TYPE_1__* vmx_ds; int vmx_dev; } ;
struct vmxnet3_rxq_shared {scalar_t__ stopped; int error; } ;
typedef int device_t ;
struct TYPE_6__ {struct vmxnet3_rxq_shared* vxrxq_rs; } ;
struct TYPE_5__ {struct vmxnet3_txq_shared* vxtxq_ts; } ;
struct TYPE_4__ {int event; } ;


 int VMXNET3_BAR1_EVENT ;
 int VMXNET3_CMD_GET_STATUS ;
 int VMXNET3_EVENT_DEBUG ;
 int VMXNET3_EVENT_DIC ;
 int VMXNET3_EVENT_LINK ;
 int VMXNET3_EVENT_RQERROR ;
 int VMXNET3_EVENT_TQERROR ;
 int device_printf (int ,char*,...) ;
 int vmxnet3_link_status (struct vmxnet3_softc*) ;
 int vmxnet3_read_cmd (struct vmxnet3_softc*,int ) ;
 int vmxnet3_write_bar1 (struct vmxnet3_softc*,int ,int) ;

__attribute__((used)) static void
vmxnet3_evintr(struct vmxnet3_softc *sc)
{
 device_t dev;
 struct vmxnet3_txq_shared *ts;
 struct vmxnet3_rxq_shared *rs;
 uint32_t event;

 dev = sc->vmx_dev;


 event = sc->vmx_ds->event;
 vmxnet3_write_bar1(sc, VMXNET3_BAR1_EVENT, event);

 if (event & VMXNET3_EVENT_LINK)
  vmxnet3_link_status(sc);

 if (event & (VMXNET3_EVENT_TQERROR | VMXNET3_EVENT_RQERROR)) {
  vmxnet3_read_cmd(sc, VMXNET3_CMD_GET_STATUS);
  ts = sc->vmx_txq[0].vxtxq_ts;
  if (ts->stopped != 0)
   device_printf(dev, "Tx queue error %#x\n", ts->error);
  rs = sc->vmx_rxq[0].vxrxq_rs;
  if (rs->stopped != 0)
   device_printf(dev, "Rx queue error %#x\n", rs->error);


  device_printf(dev, "Rx/Tx queue error event ... "
      "waiting for iflib watchdog reset\n");
 }

 if (event & VMXNET3_EVENT_DIC)
  device_printf(dev, "device implementation change event\n");
 if (event & VMXNET3_EVENT_DEBUG)
  device_printf(dev, "debug event\n");
}
