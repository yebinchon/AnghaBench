
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {struct sfxge_intr_hdl* table; } ;
struct sfxge_softc {struct sfxge_intr intr; int dev; } ;
struct sfxge_intr_hdl {int eih_rid; struct resource* eih_res; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int ENOMEM ;
 int M_SFXGE ;
 int M_WAITOK ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_printf (int ,char*,int) ;
 struct sfxge_intr_hdl* malloc (int,int ,int ) ;

__attribute__((used)) static int
sfxge_intr_alloc(struct sfxge_softc *sc, int count)
{
 device_t dev;
 struct sfxge_intr_hdl *table;
 struct sfxge_intr *intr;
 struct resource *res;
 int rid;
 int error;
 int i;

 dev = sc->dev;
 intr = &sc->intr;
 error = 0;

 table = malloc(count * sizeof(struct sfxge_intr_hdl),
     M_SFXGE, M_WAITOK);
 intr->table = table;

 for (i = 0; i < count; i++) {
  rid = i + 1;
  res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
      RF_SHAREABLE | RF_ACTIVE);
  if (res == ((void*)0)) {
   device_printf(dev, "Couldn't allocate interrupts for "
       "message %d\n", rid);
   error = ENOMEM;
   break;
  }
  table[i].eih_rid = rid;
  table[i].eih_res = res;
 }

 if (error != 0) {
  count = i - 1;
  for (i = 0; i < count; i++)
   bus_release_resource(dev, SYS_RES_IRQ,
       table[i].eih_rid, table[i].eih_res);
 }

 return (error);
}
