
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmstor_chan_props {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct storvsc_softc {TYPE_1__* hs_drv_props; } ;
typedef int props ;
struct TYPE_2__ {int drv_ringbuffer_size; } ;


 int hv_storvsc_on_channel_callback ;
 int memset (struct vmstor_chan_props*,int ,int) ;
 int vmbus_chan_cpu_rr (struct vmbus_channel*) ;
 int vmbus_chan_open (struct vmbus_channel*,int ,int ,void*,int,int ,struct storvsc_softc*) ;

__attribute__((used)) static void
storvsc_subchan_attach(struct storvsc_softc *sc,
    struct vmbus_channel *new_channel)
{
 struct vmstor_chan_props props;
 int ret = 0;

 memset(&props, 0, sizeof(props));

 vmbus_chan_cpu_rr(new_channel);
 ret = vmbus_chan_open(new_channel,
     sc->hs_drv_props->drv_ringbuffer_size,
       sc->hs_drv_props->drv_ringbuffer_size,
     (void *)&props,
     sizeof(struct vmstor_chan_props),
     hv_storvsc_on_channel_callback, sc);
}
