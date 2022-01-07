
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int device_t ;
struct TYPE_7__ {int * irq; int dev; } ;


 int ENXIO ;
 scalar_t__ alloc_resource (TYPE_1__*) ;
 int bus_generic_attach (int ) ;
 int bzero (TYPE_1__*,int) ;
 TYPE_1__* device_get_softc (int ) ;
 int gusc_intr ;
 int release_resource (TYPE_1__*) ;
 int snd_setup_intr (int ,int *,int ,int ,TYPE_1__*,void**) ;

__attribute__((used)) static int
gusc_attach(device_t dev)
{
 sc_p scp;
 void *ih;

 scp = device_get_softc(dev);

 bzero(scp, sizeof(*scp));

 scp->dev = dev;
 if (alloc_resource(scp)) {
  release_resource(scp);
  return (ENXIO);
 }

 if (scp->irq != ((void*)0))
  snd_setup_intr(dev, scp->irq, 0, gusc_intr, scp, &ih);
 bus_generic_attach(dev);

 return (0);
}
