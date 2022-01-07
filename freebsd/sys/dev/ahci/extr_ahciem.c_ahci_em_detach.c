
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_enclosure {int channels; int mtx; scalar_t__ r_memr; scalar_t__ r_memt; scalar_t__ r_memc; int sim; int path; TYPE_1__* leds; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ led; } ;


 int AC_LOST_DEVICE ;
 int AHCI_NUM_LEDS ;
 int SYS_RES_MEMORY ;
 int TRUE ;
 int bus_release_resource (int ,int ,int,scalar_t__) ;
 int cam_sim_free (int ,int ) ;
 int cam_sim_path (int ) ;
 struct ahci_enclosure* device_get_softc (int ) ;
 int led_destroy (scalar_t__) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static int
ahci_em_detach(device_t dev)
{
 struct ahci_enclosure *enc = device_get_softc(dev);
 int i;

 for (i = 0; i < enc->channels * AHCI_NUM_LEDS; i++) {
  if (enc->leds[i].led)
   led_destroy(enc->leds[i].led);
 }
 mtx_lock(&enc->mtx);
 xpt_async(AC_LOST_DEVICE, enc->path, ((void*)0));
 xpt_free_path(enc->path);
 xpt_bus_deregister(cam_sim_path(enc->sim));
 cam_sim_free(enc->sim, TRUE);
 mtx_unlock(&enc->mtx);

 bus_release_resource(dev, SYS_RES_MEMORY, 0, enc->r_memc);
 bus_release_resource(dev, SYS_RES_MEMORY, 1, enc->r_memt);
 if (enc->r_memr)
  bus_release_resource(dev, SYS_RES_MEMORY, 2, enc->r_memr);
 mtx_destroy(&enc->mtx);
 return (0);
}
