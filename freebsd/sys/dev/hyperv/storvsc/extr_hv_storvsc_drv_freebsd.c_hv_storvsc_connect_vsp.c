
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmstor_chan_props {int dummy; } ;
struct storvsc_softc {TYPE_1__* hs_drv_props; int hs_chan; } ;
struct TYPE_2__ {int drv_ringbuffer_size; } ;


 int hv_storvsc_channel_init (struct storvsc_softc*) ;
 int hv_storvsc_on_channel_callback ;
 int memset (struct vmstor_chan_props*,int ,int) ;
 int vmbus_chan_cpu_rr (int ) ;
 int vmbus_chan_open (int ,int ,int ,void*,int,int ,struct storvsc_softc*) ;

__attribute__((used)) static int
hv_storvsc_connect_vsp(struct storvsc_softc *sc)
{
 int ret = 0;
 struct vmstor_chan_props props;

 memset(&props, 0, sizeof(struct vmstor_chan_props));




 vmbus_chan_cpu_rr(sc->hs_chan);
 ret = vmbus_chan_open(
  sc->hs_chan,
  sc->hs_drv_props->drv_ringbuffer_size,
  sc->hs_drv_props->drv_ringbuffer_size,
  (void *)&props,
  sizeof(struct vmstor_chan_props),
  hv_storvsc_on_channel_callback, sc);

 if (ret != 0) {
  return ret;
 }

 ret = hv_storvsc_channel_init(sc);
 return (ret);
}
