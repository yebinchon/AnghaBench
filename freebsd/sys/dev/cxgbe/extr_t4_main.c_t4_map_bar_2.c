
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int wc_en; } ;
struct adapter {scalar_t__ rdmacaps; int doorbells; TYPE_1__ iwt; int dev; int * udbs_res; scalar_t__ udbs_base; int udbs_rid; } ;


 int A_SGE_STAT_CFG ;
 scalar_t__ CHELSIO_T5 ;
 int DOORBELL_UDB ;
 int DOORBELL_UDBWC ;
 int DOORBELL_WCWR ;
 int ENXIO ;
 int PAT_WRITE_COMBINING ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int V_STATMODE (int ) ;
 int V_STATSOURCE_T5 (int) ;
 int V_T6_STATMODE (int ) ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 scalar_t__ chip_id (struct adapter*) ;
 int clrbit (int *,int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ is_t4 (struct adapter*) ;
 scalar_t__ is_t5 (struct adapter*) ;
 scalar_t__ isset (int *,int ) ;
 int pmap_change_attr (int ,int ,int ) ;
 int rman_get_size (int *) ;
 scalar_t__ rman_get_virtual (int *) ;
 int setbit (int *,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 scalar_t__ t5_write_combine ;

int
t4_map_bar_2(struct adapter *sc)
{





 if (is_t4(sc) && sc->rdmacaps == 0)
  return (0);

 sc->udbs_rid = PCIR_BAR(2);
 sc->udbs_res = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
     &sc->udbs_rid, RF_ACTIVE);
 if (sc->udbs_res == ((void*)0)) {
  device_printf(sc->dev, "cannot map doorbell BAR.\n");
  return (ENXIO);
 }
 sc->udbs_base = rman_get_virtual(sc->udbs_res);

 if (chip_id(sc) >= CHELSIO_T5) {
  setbit(&sc->doorbells, DOORBELL_UDB);

  if (t5_write_combine) {
   int rc, mode;
   rc = pmap_change_attr((vm_offset_t)sc->udbs_base,
       rman_get_size(sc->udbs_res), PAT_WRITE_COMBINING);
   if (rc == 0) {
    clrbit(&sc->doorbells, DOORBELL_UDB);
    setbit(&sc->doorbells, DOORBELL_WCWR);
    setbit(&sc->doorbells, DOORBELL_UDBWC);
   } else {
    device_printf(sc->dev,
        "couldn't enable write combining: %d\n",
        rc);
   }

   mode = is_t5(sc) ? V_STATMODE(0) : V_T6_STATMODE(0);
   t4_write_reg(sc, A_SGE_STAT_CFG,
       V_STATSOURCE_T5(7) | mode);
  }

 }
 sc->iwt.wc_en = isset(&sc->doorbells, DOORBELL_UDBWC) ? 1 : 0;

 return (0);
}
