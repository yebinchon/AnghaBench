
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; scalar_t__ device_file; scalar_t__ command_dmatag; scalar_t__ sg_dmatag; int timer; int dev; } ;
typedef TYPE_1__ ips_softc_t ;


 int DEVICE_PRINTF (int,int ,char*) ;
 int EBUSY ;
 int IPS_DEV_OPEN ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int callout_drain (int *) ;
 int destroy_dev (scalar_t__) ;
 int device_printf (int ,char*) ;
 scalar_t__ ips_cmdqueue_free (TYPE_1__*) ;
 int ips_diskdev_free (TYPE_1__*) ;

int ips_adapter_free(ips_softc_t *sc)
{
 int error = 0;
 if(sc->state & IPS_DEV_OPEN)
  return EBUSY;
 if((error = ips_diskdev_free(sc)))
  return error;
 if(ips_cmdqueue_free(sc)){
  device_printf(sc->dev,
       "trying to exit when command queue is not empty!\n");
  return EBUSY;
 }
 DEVICE_PRINTF(1, sc->dev, "free\n");
 callout_drain(&sc->timer);

 if(sc->sg_dmatag)
  bus_dma_tag_destroy(sc->sg_dmatag);
 if(sc->command_dmatag)
  bus_dma_tag_destroy(sc->command_dmatag);
 if(sc->device_file)
         destroy_dev(sc->device_file);
        return 0;
}
