
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hs_xact_ctx; int dev; int hs_chan; } ;
typedef TYPE_1__ hv_kbd_sc ;
typedef int device_t ;


 int ENOMEM ;
 int HV_KBD_PROTO_REQ_SZ ;
 int HV_KBD_PROTO_RESP_SZ ;
 int bus_get_dma_tag (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int hv_kbd_attach1 (int ,int ) ;
 int hv_kbd_connect_vsp (TYPE_1__*) ;
 int hv_kbd_detach (int ) ;
 int hv_kbd_drv_attach (int ) ;
 int hv_kbd_init (TYPE_1__*) ;
 int hv_kbd_read_channel ;
 int hv_kbd_sysctl (int ) ;
 int vmbus_get_channel (int ) ;
 int * vmbus_xact_ctx_create (int ,int ,int ,int ) ;

__attribute__((used)) static int
hv_kbd_attach(device_t dev)
{
 int error = 0;
 hv_kbd_sc *sc;

 sc = device_get_softc(dev);
 sc->hs_chan = vmbus_get_channel(dev);
 sc->dev = dev;
 hv_kbd_init(sc);
 sc->hs_xact_ctx = vmbus_xact_ctx_create(bus_get_dma_tag(dev),
     HV_KBD_PROTO_REQ_SZ, HV_KBD_PROTO_RESP_SZ, 0);
 if (sc->hs_xact_ctx == ((void*)0)) {
  error = ENOMEM;
  goto failed;
 }

 error = hv_kbd_attach1(dev, hv_kbd_read_channel);
 if (error)
  goto failed;
 error = hv_kbd_connect_vsp(sc);
 if (error)
  goto failed;

 error = hv_kbd_drv_attach(dev);
 if (error)
  goto failed;
 hv_kbd_sysctl(dev);
 return (0);
failed:
 hv_kbd_detach(dev);
 return (error);
}
