
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_softc {int sc_devnode; } ;
typedef int device_t ;


 int destroy_dev (int ) ;
 struct smb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
smb_detach(device_t dev)
{
 struct smb_softc *sc;

 sc = device_get_softc(dev);
 destroy_dev(sc->sc_devnode);
 return (0);
}
