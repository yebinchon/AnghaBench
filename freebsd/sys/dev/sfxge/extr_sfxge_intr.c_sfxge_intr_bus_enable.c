
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {int type; int n_alloc; struct sfxge_intr_hdl* table; } ;
struct sfxge_softc {int dev; int * evq; struct sfxge_intr intr; } ;
struct sfxge_intr_hdl {int eih_tag; int eih_res; } ;
typedef int driver_intr_t ;
typedef int driver_filter_t ;




 int EINVAL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int KASSERT (int ,char*) ;
 int bus_bind_intr (int ,int ,int) ;
 int bus_describe_intr (int ,int ,int ,char*,int) ;
 int bus_setup_intr (int ,int ,int,int *,int *,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int rss_getcpu (int) ;
 int * sfxge_intr_line ;
 int * sfxge_intr_line_filter ;
 int * sfxge_intr_message ;

__attribute__((used)) static int
sfxge_intr_bus_enable(struct sfxge_softc *sc)
{
 struct sfxge_intr *intr;
 struct sfxge_intr_hdl *table;
 driver_filter_t *filter;
 driver_intr_t *handler;
 int index;
 int err;

 intr = &sc->intr;
 table = intr->table;

 switch (intr->type) {
 case 128:
  filter = ((void*)0);
  handler = sfxge_intr_message;
  break;

 case 129:
  filter = sfxge_intr_line_filter;
  handler = sfxge_intr_line;
  break;

 default:
  KASSERT(0, ("Invalid interrupt type"));
  return (EINVAL);
 }


 for (index = 0; index < intr->n_alloc; index++) {
  if ((err = bus_setup_intr(sc->dev, table[index].eih_res,
       INTR_MPSAFE|INTR_TYPE_NET, filter, handler,
       sc->evq[index], &table[index].eih_tag)) != 0) {
   goto fail;
  }
  bus_bind_intr(sc->dev, table[index].eih_res, index);


 }

 return (0);

fail:

 while (--index >= 0)
  bus_teardown_intr(sc->dev, table[index].eih_res,
      table[index].eih_tag);

 return (err);
}
