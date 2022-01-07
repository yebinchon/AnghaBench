
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int chip_id; } ;
struct bhnd_pmu_softc {int chipc_dev; int caps; TYPE_1__ cid; } ;
struct TYPE_6__ {scalar_t__ resnum; scalar_t__ updown; } ;
typedef TYPE_2__ pmu_res_updown_t ;
typedef int (* pmu_res_filter ) (struct bhnd_pmu_softc*) ;
struct TYPE_7__ {int res_mask; int action; scalar_t__ depend_mask; int (* filter ) (struct bhnd_pmu_softc*) ;} ;
typedef TYPE_3__ pmu_res_depend_t ;
typedef int name ;
struct TYPE_8__ {int depend_mask; } ;
 int BHND_PMURES_BIT (scalar_t__) ;
 int BHND_PMU_CAP_RC ;
 scalar_t__ BHND_PMU_GET_BITS (int ,int ) ;
 int BHND_PMU_MAX_RES_MASK ;
 int BHND_PMU_MIN_RES_MASK ;
 scalar_t__ BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_RES_DEP_MASK ;
 int BHND_PMU_RES_TABLE_SEL ;
 int BHND_PMU_RES_UPDN_TIMER ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,scalar_t__) ;
 int DELAY (int) ;
 int ENOENT ;
 int KASSERT (int ,char*) ;
 int PMU_DEBUG (struct bhnd_pmu_softc*,char*,scalar_t__,...) ;
 int PMU_LOG (struct bhnd_pmu_softc*,char*,char*,int) ;



 void* bcm4315a0_res_depend ;
 void* bcm4315a0_res_updown ;
 void* bcm4319a0_res_depend ;
 void* bcm4319a0_res_updown ;
 void* bcm4325a0_res_depend ;
 void* bcm4325a0_res_updown ;
 void* bcm4328a0_res_depend ;
 void* bcm4328a0_res_updown ;
 void* bcm4329_res_depend ;
 void* bcm4329_res_updown ;
 void* bcm4330a0_res_depend ;
 void* bcm4330a0_res_updown ;
 void* bcm4336a0_res_depend ;
 void* bcm4336a0_res_updown ;
 int bhnd_nvram_getvar_uint32 (int ,char*,scalar_t__*) ;
 int bhnd_pmu_res_masks (struct bhnd_pmu_softc*,scalar_t__*,scalar_t__*) ;
 size_t nitems (void*) ;
 int panic (char*,int) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 TYPE_4__* table ;

int
bhnd_pmu_res_init(struct bhnd_pmu_softc *sc)
{
 const pmu_res_updown_t *pmu_res_updown_table;
 const pmu_res_depend_t *pmu_res_depend_table;
 size_t pmu_res_updown_table_sz;
 size_t pmu_res_depend_table_sz;
 uint32_t max_mask, min_mask;
 uint8_t rsrcs;
 int error;

 pmu_res_depend_table = ((void*)0);
 pmu_res_depend_table_sz = 0;

 pmu_res_updown_table = ((void*)0);
 pmu_res_updown_table_sz = 0;

 switch (sc->cid.chip_id) {
 case 137:

  pmu_res_updown_table = bcm4315a0_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4315a0_res_updown);


  pmu_res_depend_table = bcm4315a0_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4315a0_res_depend);
  break;

 case 135:

  pmu_res_updown_table = bcm4325a0_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4325a0_res_updown);


  pmu_res_depend_table = bcm4325a0_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4325a0_res_depend);
  break;

 case 134:

  pmu_res_updown_table = bcm4328a0_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4328a0_res_updown);


  pmu_res_depend_table = bcm4328a0_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4328a0_res_depend);
  break;

 case 133:

  pmu_res_updown_table = bcm4329_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4329_res_updown);


  pmu_res_depend_table = bcm4329_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4329_res_depend);
  break;

 case 136:

  pmu_res_updown_table = bcm4319a0_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4319a0_res_updown);


  pmu_res_depend_table = bcm4319a0_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4319a0_res_depend);
  break;

 case 131:

  pmu_res_updown_table = bcm4336a0_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4336a0_res_updown);


  pmu_res_depend_table = bcm4336a0_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4336a0_res_depend);
  break;

 case 132:

  pmu_res_updown_table = bcm4330a0_res_updown;
  pmu_res_updown_table_sz = nitems(bcm4330a0_res_updown);


  pmu_res_depend_table = bcm4330a0_res_depend;
  pmu_res_depend_table_sz = nitems(bcm4330a0_res_depend);
  break;
 default:
  break;
 }


 rsrcs = BHND_PMU_GET_BITS(sc->caps, BHND_PMU_CAP_RC);


 for (size_t i = 0; i < pmu_res_updown_table_sz; i++) {
  const pmu_res_updown_t *updt;

  KASSERT(pmu_res_updown_table != ((void*)0), ("no updown tables"));

  updt = &pmu_res_updown_table[pmu_res_updown_table_sz - i - 1];

  PMU_DEBUG(sc, "Changing rsrc %d res_updn_timer to %#x\n",
      updt->resnum, updt->updown);

  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_TABLE_SEL, updt->resnum);
  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_UPDN_TIMER, updt->updown);
 }


 for (uint8_t i = 0; i < rsrcs; i++) {
  char name[6];
  uint32_t val;

  snprintf(name, sizeof(name), "r%dt", i);
  error = bhnd_nvram_getvar_uint32(sc->chipc_dev, name, &val);

  if (error == ENOENT) {
   continue;
  } else if (error) {
   PMU_LOG(sc, "NVRAM error reading %s: %d\n",
       name, error);
   return (error);
  }

  PMU_DEBUG(sc, "Applying %s=%d to rsrc %d res_updn_timer\n",
      name, val, i);

  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_TABLE_SEL, i);
  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_UPDN_TIMER, val);
 }


 for (size_t i = 0; i < pmu_res_depend_table_sz; i++) {
  const pmu_res_depend_t *rdep;
  pmu_res_filter filter;
  uint32_t depend_mask;

  KASSERT(pmu_res_depend_table != ((void*)0), ("no depend tables"));

  rdep = &pmu_res_depend_table[pmu_res_depend_table_sz - i - 1];
  filter = rdep->filter;

  if (filter != ((void*)0) && !filter(sc))
   continue;

  for (uint8_t i = 0; i < rsrcs; i++) {
   if ((rdep->res_mask & BHND_PMURES_BIT(i)) == 0)
    continue;

   BHND_PMU_WRITE_4(sc, BHND_PMU_RES_TABLE_SEL, i);
   depend_mask = BHND_PMU_READ_4(sc,
       BHND_PMU_RES_DEP_MASK);
   switch (rdep->action) {
   case 128:
    PMU_DEBUG(sc, "Changing rsrc %hhu res_dep_mask to "
        "%#x\n", i, table->depend_mask);
    depend_mask = rdep->depend_mask;
    break;

   case 130:
    PMU_DEBUG(sc, "Adding %#x to rsrc %hhu "
        "res_dep_mask\n", table->depend_mask, i);

    depend_mask |= rdep->depend_mask;
    break;

   case 129:
    PMU_DEBUG(sc, "Removing %#x from rsrc %hhu "
        "res_dep_mask\n", table->depend_mask, i);

    depend_mask &= ~(rdep->depend_mask);
    break;

   default:
    panic("unknown RES_DEPEND action: %d\n",
        rdep->action);
    break;
   }


  }
 }


 for (uint8_t i = 0; i < rsrcs; i++) {
  char name[6];
  uint32_t val;

  snprintf(name, sizeof(name), "r%dd", i);
  error = bhnd_nvram_getvar_uint32(sc->chipc_dev, name, &val);

  if (error == ENOENT) {
   continue;
  } else if (error) {
   PMU_LOG(sc, "NVRAM error reading %s: %d\n", name,
       error);
   return (error);
  }

  PMU_DEBUG(sc, "Applying %s=%d to rsrc %d res_dep_mask\n", name,
      val, i);

  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_TABLE_SEL, i);
  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_DEP_MASK, val);
 }


 if ((error = bhnd_pmu_res_masks(sc, &min_mask, &max_mask)))
  return (error);




 if (max_mask != 0) {
  PMU_DEBUG(sc, "Changing max_res_mask to 0x%x\n", max_mask);
  BHND_PMU_WRITE_4(sc, BHND_PMU_MAX_RES_MASK, max_mask);
 }



 if (min_mask != 0) {
  PMU_DEBUG(sc, "Changing min_res_mask to 0x%x\n", min_mask);
  BHND_PMU_WRITE_4(sc, BHND_PMU_MIN_RES_MASK, min_mask);
 }


 DELAY(2000);

 return (0);
}
