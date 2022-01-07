
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct jz4780_nemc_softc {int simplebus_sc; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_activate_resource (int ,int ,int,int,struct resource*) ;
 struct jz4780_nemc_softc* device_get_softc (int ) ;
 int jz4780_nemc_configure_bank (struct jz4780_nemc_softc*,int ,int ) ;
 int jz4780_nemc_decode_bank (int *,struct resource*,int *) ;

__attribute__((used)) static int
jz4780_nemc_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 struct jz4780_nemc_softc *sc;
 u_int bank;
 int err;

 if (type == SYS_RES_MEMORY) {
  sc = device_get_softc(bus);


  err = jz4780_nemc_decode_bank(&sc->simplebus_sc, r, &bank);
  if (err == 0) {

   err = jz4780_nemc_configure_bank(sc, child, bank);
   if (err != 0)
    return (err);
  }
 }


 return (bus_generic_activate_resource(bus, child,
  type, rid, r));
}
