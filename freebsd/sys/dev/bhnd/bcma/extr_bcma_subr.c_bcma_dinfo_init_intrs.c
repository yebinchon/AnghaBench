
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct bcma_intr {int dummy; } ;
struct bcma_devinfo {scalar_t__ num_intrs; int intrs; int * res_agent; } ;
typedef int device_t ;


 scalar_t__ BCMA_DINFO_COREIDX (struct bcma_devinfo*) ;
 int BCMA_DMP_CFG_OOB ;
 int BCMA_DMP_CONFIG ;
 int BCMA_DMP_GET_FLAG (scalar_t__,int ) ;
 int BCMA_DMP_OOBSELOUT (int ,scalar_t__) ;
 scalar_t__ BCMA_DMP_OOBSEL_BUSLINE_MASK ;
 scalar_t__ BCMA_DMP_OOBSEL_SHIFT (scalar_t__) ;
 int BCMA_DMP_OOB_OUTWIDTH (int ) ;
 int BCMA_OOB_BANK_INTR ;
 scalar_t__ BCMA_OOB_NUM_SEL ;
 int ENOMEM ;
 int STAILQ_INSERT_HEAD (int *,struct bcma_intr*,int ) ;
 scalar_t__ UINT_MAX ;
 struct bcma_intr* bcma_alloc_intr (int ,scalar_t__,scalar_t__) ;
 scalar_t__ bhnd_bus_read_4 (int *,int ) ;
 int device_printf (int ,char*,scalar_t__,scalar_t__) ;
 int i_link ;

__attribute__((used)) static int
bcma_dinfo_init_intrs(device_t bus, device_t child,
    struct bcma_devinfo *dinfo)
{
 uint32_t dmpcfg, oobw;


 if (dinfo->res_agent == ((void*)0))
  return (0);


 dmpcfg = bhnd_bus_read_4(dinfo->res_agent, BCMA_DMP_CONFIG);
 if (!BCMA_DMP_GET_FLAG(dmpcfg, BCMA_DMP_CFG_OOB))
  return (0);


 oobw = bhnd_bus_read_4(dinfo->res_agent,
      BCMA_DMP_OOB_OUTWIDTH(BCMA_OOB_BANK_INTR));
 if (oobw >= BCMA_OOB_NUM_SEL) {
  device_printf(bus, "ignoring invalid OOBOUTWIDTH for core %u: "
      "%#x\n", BCMA_DINFO_COREIDX(dinfo), oobw);
  return (0);
 }



 for (uint32_t sel = 0; sel < oobw; sel++) {
  struct bcma_intr *intr;
  uint32_t selout;
  uint8_t line;

  if (dinfo->num_intrs == UINT_MAX)
   return (ENOMEM);

  selout = bhnd_bus_read_4(dinfo->res_agent, BCMA_DMP_OOBSELOUT(
      BCMA_OOB_BANK_INTR, sel));

  line = (selout >> BCMA_DMP_OOBSEL_SHIFT(sel)) &
      BCMA_DMP_OOBSEL_BUSLINE_MASK;

  intr = bcma_alloc_intr(BCMA_OOB_BANK_INTR, sel, line);
  if (intr == ((void*)0)) {
   device_printf(bus, "failed allocating interrupt "
       "descriptor %#x for core %u\n", sel,
       BCMA_DINFO_COREIDX(dinfo));
   return (ENOMEM);
  }

  STAILQ_INSERT_HEAD(&dinfo->intrs, intr, i_link);
  dinfo->num_intrs++;
 }

 return (0);
}
