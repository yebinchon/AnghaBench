
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int mr_start; int mr_size; } ;
typedef int ssize_t ;
typedef int platform_t ;
typedef int physacells ;
typedef int phandle_t ;
typedef int memoryprop ;
typedef int cell_t ;


 int BUS_SPACE_MAXADDR_32BIT ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,int*,int) ;
 int OF_parent (int) ;
 int PHYS_AVAIL_SZ ;

void
powermac_mem_regions(platform_t plat, struct mem_region *phys, int *physsz,
    struct mem_region *avail, int *availsz)
{
 phandle_t memory;
 cell_t memoryprop[PHYS_AVAIL_SZ * 2];
 ssize_t propsize, i, j;
 int physacells = 1;

 memory = OF_finddevice("/memory");
 if (memory == -1)
  memory = OF_finddevice("/memory@0");


 OF_getprop(OF_parent(memory), "#address-cells", &physacells,
     sizeof(physacells));

 propsize = OF_getprop(memory, "reg", memoryprop, sizeof(memoryprop));
 propsize /= sizeof(cell_t);
 for (i = 0, j = 0; i < propsize; i += physacells+1, j++) {
  phys[j].mr_start = memoryprop[i];
  if (physacells == 2) {


   if (memoryprop[i] != 0) {
    j--;
    continue;
   }



   phys[j].mr_start |= memoryprop[i+1];
  }
  phys[j].mr_size = memoryprop[i + physacells];
 }
 *physsz = j;


 propsize = OF_getprop(memory, "available", memoryprop,
     sizeof(memoryprop));
 if (propsize <= 0) {
  for (i = 0; i < *physsz; i++) {
   avail[i].mr_start = phys[i].mr_start;
   avail[i].mr_size = phys[i].mr_size;
  }

  *availsz = *physsz;
 } else {
  propsize /= sizeof(cell_t);
  for (i = 0, j = 0; i < propsize; i += 2, j++) {
   avail[j].mr_start = memoryprop[i];
   avail[j].mr_size = memoryprop[i + 1];
  }
  *availsz = j;
 }
}
