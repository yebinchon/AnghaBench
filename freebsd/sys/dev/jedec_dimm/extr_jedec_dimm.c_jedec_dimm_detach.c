
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jedec_dimm_softc {int slotid_str; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct jedec_dimm_softc* device_get_softc (int ) ;
 int free (int ,int ) ;

__attribute__((used)) static int
jedec_dimm_detach(device_t dev)
{
 struct jedec_dimm_softc *sc;

 sc = device_get_softc(dev);
 free(sc->slotid_str, M_DEVBUF);

 return (0);
}
