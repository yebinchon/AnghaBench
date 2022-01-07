
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pcie2hb_softc {int dummy; } ;
typedef int device_t ;


 int bhnd_pcie2_generic_detach (int ) ;
 int bhnd_pcie2_wars_hwdown (struct bhnd_pcie2hb_softc*) ;
 struct bhnd_pcie2hb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pcie2_hostb_detach(device_t dev)
{
 struct bhnd_pcie2hb_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bhnd_pcie2_wars_hwdown(sc)))
  return (error);

 return (bhnd_pcie2_generic_detach(dev));
}
