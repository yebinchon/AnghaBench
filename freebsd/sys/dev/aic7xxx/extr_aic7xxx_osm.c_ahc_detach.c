
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahc_softc {TYPE_1__* platform_data; } ;
typedef int device_t ;
struct TYPE_2__ {int ih; int irq; } ;


 int FALSE ;
 int TAILQ_REMOVE (int *,struct ahc_softc*,int ) ;
 int ahc_free (struct ahc_softc*) ;
 int ahc_intr_enable (struct ahc_softc*,int ) ;
 int ahc_lock (struct ahc_softc*) ;
 int ahc_tailq ;
 int ahc_unlock (struct ahc_softc*) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct ahc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int links ;

int
ahc_detach(device_t dev)
{
 struct ahc_softc *ahc;

 device_printf(dev, "detaching device\n");
 ahc = device_get_softc(dev);
 ahc_lock(ahc);
 TAILQ_REMOVE(&ahc_tailq, ahc, links);
 ahc_intr_enable(ahc, FALSE);
 bus_teardown_intr(dev, ahc->platform_data->irq, ahc->platform_data->ih);
 ahc_unlock(ahc);
 ahc_free(ahc);
 return (0);
}
