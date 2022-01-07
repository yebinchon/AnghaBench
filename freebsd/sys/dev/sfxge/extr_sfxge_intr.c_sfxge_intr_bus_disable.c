
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {int n_alloc; struct sfxge_intr_hdl* table; } ;
struct sfxge_softc {int dev; struct sfxge_intr intr; } ;
struct sfxge_intr_hdl {int eih_tag; int eih_res; } ;


 int bus_teardown_intr (int ,int ,int ) ;

__attribute__((used)) static void
sfxge_intr_bus_disable(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 struct sfxge_intr_hdl *table;
 int i;

 intr = &sc->intr;
 table = intr->table;


 for (i = 0; i < intr->n_alloc; i++)
  bus_teardown_intr(sc->dev, table[i].eih_res,
      table[i].eih_tag);
}
