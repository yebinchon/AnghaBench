
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahd_softc {TYPE_1__* platform_data; } ;
typedef int device_t ;
struct TYPE_2__ {int ih; int irq; } ;


 int FALSE ;
 int TAILQ_REMOVE (int *,struct ahd_softc*,int ) ;
 int ahd_free (struct ahd_softc*) ;
 int ahd_intr_enable (struct ahd_softc*,int ) ;
 int ahd_lock (struct ahd_softc*) ;
 int ahd_tailq ;
 int ahd_unlock (struct ahd_softc*) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct ahd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int links ;

int
ahd_detach(device_t dev)
{
 struct ahd_softc *ahd;

 device_printf(dev, "detaching device\n");
 ahd = device_get_softc(dev);
 ahd_lock(ahd);
 TAILQ_REMOVE(&ahd_tailq, ahd, links);
 ahd_intr_enable(ahd, FALSE);
 bus_teardown_intr(dev, ahd->platform_data->irq, ahd->platform_data->ih);
 ahd_unlock(ahd);
 ahd_free(ahd);
 return (0);
}
