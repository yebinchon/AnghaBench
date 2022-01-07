
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct fire_softc {int sc_ign; } ;
struct fire_msiqarg {int dummy; } ;
struct fire_icarg {void* fica_clr; void* fica_map; struct fire_softc* fica_sc; } ;
typedef void* bus_addr_t ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ FO_EQ_FIRST_INO ;
 scalar_t__ FO_EQ_LAST_INO ;
 int INTMAP_VEC (int ,scalar_t__) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ fire_get_intrmap (struct fire_softc*,scalar_t__,void**,void**) ;
 int fire_ic ;
 int free (struct fire_icarg*,int ) ;
 int intr_controller_register (int ,int *,struct fire_icarg*) ;
 struct fire_icarg* malloc (int,int ,int) ;

__attribute__((used)) static int
fire_intr_register(struct fire_softc *sc, u_int ino)
{
 struct fire_icarg *fica;
 bus_addr_t intrclr, intrmap;
 int error;

 if (fire_get_intrmap(sc, ino, &intrmap, &intrclr) == 0)
  return (ENXIO);
 fica = malloc((ino >= FO_EQ_FIRST_INO && ino <= FO_EQ_LAST_INO) ?
     sizeof(struct fire_msiqarg) : sizeof(struct fire_icarg), M_DEVBUF,
     M_NOWAIT | M_ZERO);
 if (fica == ((void*)0))
  return (ENOMEM);
 fica->fica_sc = sc;
 fica->fica_map = intrmap;
 fica->fica_clr = intrclr;
 error = (intr_controller_register(INTMAP_VEC(sc->sc_ign, ino),
     &fire_ic, fica));
 if (error != 0)
  free(fica, M_DEVBUF);
 return (error);
}
