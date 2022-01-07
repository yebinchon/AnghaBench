
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicsmb_softc {int smbus; int lock; } ;
typedef int device_t ;


 int MTX_DEF ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 scalar_t__ device_get_softc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
iicsmb_attach(device_t dev)
{
 struct iicsmb_softc *sc = (struct iicsmb_softc *)device_get_softc(dev);

 mtx_init(&sc->lock, "iicsmb", ((void*)0), MTX_DEF);

 sc->smbus = device_add_child(dev, "smbus", -1);


 bus_generic_attach(dev);

 return (0);
}
