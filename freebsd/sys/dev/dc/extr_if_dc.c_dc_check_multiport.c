
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc_softc {scalar_t__ dc_romwidth; int * dc_srom; int * dc_dev; int * dc_eaddr; } ;
typedef int * device_t ;
typedef int devclass_t ;


 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 int DC_ROM_SIZE (scalar_t__) ;
 int ENOENT ;
 int ENOMEM ;
 int ETHER_ADDR_LEN ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int bcopy (int *,int *,int ) ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;
 int device_get_nameunit (int *) ;
 scalar_t__ device_get_parent (int *) ;
 struct dc_softc* device_get_softc (int *) ;
 int device_get_unit (int *) ;
 scalar_t__ device_is_attached (int *) ;
 int device_printf (int *,char*,...) ;
 int free (int *,int ) ;
 int * malloc (int ,int ,int ) ;

__attribute__((used)) static int
dc_check_multiport(struct dc_softc *sc)
{
 struct dc_softc *dsc;
 devclass_t dc;
 device_t child;
 uint8_t *eaddr;
 int unit;

 dc = devclass_find("dc");
 for (unit = 0; unit < devclass_get_maxunit(dc); unit++) {
  child = devclass_get_device(dc, unit);
  if (child == ((void*)0))
   continue;
  if (child == sc->dc_dev)
   continue;
  if (device_get_parent(child) != device_get_parent(sc->dc_dev))
   continue;
  if (unit > device_get_unit(sc->dc_dev))
   continue;
  if (device_is_attached(child) == 0)
   continue;
  dsc = device_get_softc(child);
  device_printf(sc->dc_dev,
      "Using station address of %s as base\n",
      device_get_nameunit(child));
  bcopy(dsc->dc_eaddr, sc->dc_eaddr, ETHER_ADDR_LEN);
  eaddr = (uint8_t *)sc->dc_eaddr;
  eaddr[5]++;

  if (DC_IS_INTEL(sc) && dsc->dc_srom != ((void*)0) &&
      sc->dc_romwidth != 0) {
   free(sc->dc_srom, M_DEVBUF);
   sc->dc_romwidth = dsc->dc_romwidth;
   sc->dc_srom = malloc(DC_ROM_SIZE(sc->dc_romwidth),
       M_DEVBUF, M_NOWAIT);
   if (sc->dc_srom == ((void*)0)) {
    device_printf(sc->dc_dev,
        "Could not allocate SROM buffer\n");
    return (ENOMEM);
   }
   bcopy(dsc->dc_srom, sc->dc_srom,
       DC_ROM_SIZE(sc->dc_romwidth));
  }
  return (0);
 }
 return (ENOENT);
}
