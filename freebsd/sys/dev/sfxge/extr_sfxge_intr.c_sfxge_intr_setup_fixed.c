
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {int n_alloc; struct sfxge_intr_hdl* table; int type; } ;
struct sfxge_softc {struct sfxge_intr intr; int dev; } ;
struct sfxge_intr_hdl {int eih_rid; struct resource* eih_res; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int EFX_INTR_LINE ;
 int ENOMEM ;
 int M_SFXGE ;
 int M_WAITOK ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int) ;
 struct sfxge_intr_hdl* malloc (int,int ,int ) ;

__attribute__((used)) static int
sfxge_intr_setup_fixed(struct sfxge_softc *sc)
{
 struct sfxge_intr_hdl *table;
 struct sfxge_intr *intr;
 struct resource *res;
 device_t dev;
 int rid;

 dev = sc->dev;
 intr = &sc->intr;

 rid = 0;
 res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (res == ((void*)0))
  return (ENOMEM);

 table = malloc(sizeof(struct sfxge_intr_hdl), M_SFXGE, M_WAITOK);
 table[0].eih_rid = rid;
 table[0].eih_res = res;

 intr->type = EFX_INTR_LINE;
 intr->n_alloc = 1;
 intr->table = table;

 return (0);
}
