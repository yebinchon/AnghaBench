
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {scalar_t__ mr_size; } ;


 int FALSE ;
 int PLATFORM_MEM_REGIONS (int ,struct mem_region*,int*,struct mem_region*,int*) ;
 int TRUE ;
 struct mem_region* aregions ;
 int memcpy (struct mem_region*,struct mem_region*,int) ;
 int memr_merge (struct mem_region*,struct mem_region*) ;
 int memr_overlap (struct mem_region*,struct mem_region*) ;
 int mr_cmp ;
 int naregions ;
 int npregions ;
 int plat_obj ;
 struct mem_region* pregions ;
 int qsort (struct mem_region*,int,int,int ) ;

void
mem_regions(struct mem_region **phys, int *physsz, struct mem_region **avail,
    int *availsz)
{
 int i, j, still_merging;

 if (npregions == 0) {
  PLATFORM_MEM_REGIONS(plat_obj, pregions, &npregions,
      aregions, &naregions);
  qsort(pregions, npregions, sizeof(*pregions), mr_cmp);
  qsort(aregions, naregions, sizeof(*aregions), mr_cmp);


  do {
   still_merging = FALSE;
   for (i = 0; i < naregions; i++) {
    if (aregions[i].mr_size == 0)
     continue;
    for (j = i+1; j < naregions; j++) {
     if (aregions[j].mr_size == 0)
      continue;
     if (!memr_overlap(&aregions[j],
         &aregions[i]))
      continue;

     memr_merge(&aregions[j], &aregions[i]);

     aregions[j].mr_size = 0;
     still_merging = TRUE;
    }
   }
  } while (still_merging == TRUE);


  for (i = 0; i < naregions; i++) {
   if (aregions[i].mr_size == 0) {
    memcpy(&aregions[i], &aregions[i+1],
        (naregions - i - 1)*sizeof(*aregions));
    naregions--;
    i--;
   }
  }
 }

 if (phys != ((void*)0))
  *phys = pregions;
 if (avail != ((void*)0))
  *avail = aregions;
 if (physsz != ((void*)0))
  *physsz = npregions;
 if (availsz != ((void*)0))
  *availsz = naregions;
}
