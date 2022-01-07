
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {int dev_softc; TYPE_1__* platform_data; } ;
struct TYPE_2__ {int ih; int irq; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int ahd_platform_intr ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct ahd_softc*,int *) ;
 int device_printf (int ,char*,int) ;

int
ahd_map_int(struct ahd_softc *ahd)
{
 int error;


 error = bus_setup_intr(ahd->dev_softc, ahd->platform_data->irq,
          INTR_TYPE_CAM|INTR_MPSAFE, ((void*)0),
          ahd_platform_intr, ahd, &ahd->platform_data->ih);
 if (error != 0)
  device_printf(ahd->dev_softc, "bus_setup_intr() failed: %d\n",
         error);
 return (error);
}
