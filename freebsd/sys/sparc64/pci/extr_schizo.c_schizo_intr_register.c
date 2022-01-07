
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct schizo_softc {int sc_ign; int sc_dev; } ;
struct schizo_icarg {void* sica_clr; void* sica_map; struct schizo_softc* sica_sc; } ;
typedef void* bus_addr_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTMAP_VEC (int ,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 scalar_t__ SCHIZO_PCI_READ_8 (struct schizo_softc*,void*) ;
 int device_printf (int ,char*,int ,int ,int ,int ) ;
 int free (struct schizo_icarg*,int ) ;
 int intr_controller_register (int ,int *,struct schizo_icarg*) ;
 struct schizo_icarg* malloc (int,int ,int ) ;
 scalar_t__ schizo_get_intrmap (struct schizo_softc*,int ,void**,void**) ;
 int schizo_ic ;

__attribute__((used)) static int
schizo_intr_register(struct schizo_softc *sc, u_int ino)
{
 struct schizo_icarg *sica;
 bus_addr_t intrclr, intrmap;
 int error;

 if (schizo_get_intrmap(sc, ino, &intrmap, &intrclr) == 0)
  return (ENXIO);
 sica = malloc(sizeof(*sica), M_DEVBUF, M_NOWAIT);
 if (sica == ((void*)0))
  return (ENOMEM);
 sica->sica_sc = sc;
 sica->sica_map = intrmap;
 sica->sica_clr = intrclr;





 error = (intr_controller_register(INTMAP_VEC(sc->sc_ign, ino),
     &schizo_ic, sica));
 if (error != 0)
  free(sica, M_DEVBUF);
 return (error);
}
