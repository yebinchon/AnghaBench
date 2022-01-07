
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dc_nsets; int dc_linesize; scalar_t__ dc_nways; int dc_size; } ;
struct TYPE_3__ {int ic_nsets; int ic_linesize; int ic_nways; int dc_nsets; int dc_linesize; int dc_nways; int dc_size; int ic_size; } ;
struct mips_cpuinfo {scalar_t__ icache_virtual; TYPE_2__ l2; TYPE_1__ l1; } ;


 int MAX (int,int) ;
 int PAGE_SIZE ;
 int mips_dcache_max_linesize ;
 int mips_pdcache_linesize ;
 int mips_picache_linesize ;
 int mips_sdcache_linesize ;
 int pdcache_loopcount ;
 int pdcache_size ;
 int pdcache_stride ;
 int pdcache_way_mask ;
 int picache_loopcount ;
 int picache_size ;
 int picache_stride ;
 int picache_way_mask ;
 int printf (char*,...) ;
 scalar_t__ sdcache_loopcount ;
 int sdcache_size ;
 int sdcache_stride ;
 scalar_t__ sdcache_way_mask ;

void
mipsNN_cache_init(struct mips_cpuinfo * cpuinfo)
{
 int flush_multiple_lines_per_way;

 flush_multiple_lines_per_way = cpuinfo->l1.ic_nsets * cpuinfo->l1.ic_linesize * cpuinfo->l1.ic_linesize > PAGE_SIZE;
 if (cpuinfo->icache_virtual) {





  flush_multiple_lines_per_way = 0;
 }

 if (flush_multiple_lines_per_way) {
  picache_stride = PAGE_SIZE;
  picache_loopcount = (cpuinfo->l1.ic_nsets * cpuinfo->l1.ic_linesize / PAGE_SIZE) *
      cpuinfo->l1.ic_nways;
 } else {
  picache_stride = cpuinfo->l1.ic_nsets * cpuinfo->l1.ic_linesize;
  picache_loopcount = cpuinfo->l1.ic_nways;
 }

 if (cpuinfo->l1.dc_nsets * cpuinfo->l1.dc_linesize < PAGE_SIZE) {
  pdcache_stride = cpuinfo->l1.dc_nsets * cpuinfo->l1.dc_linesize;
  pdcache_loopcount = cpuinfo->l1.dc_nways;
 } else {
  pdcache_stride = PAGE_SIZE;
  pdcache_loopcount = (cpuinfo->l1.dc_nsets * cpuinfo->l1.dc_linesize / PAGE_SIZE) *
      cpuinfo->l1.dc_nways;
 }

 mips_picache_linesize = cpuinfo->l1.ic_linesize;
 mips_pdcache_linesize = cpuinfo->l1.dc_linesize;

 picache_size = cpuinfo->l1.ic_size;
 picache_way_mask = cpuinfo->l1.ic_nways - 1;
 pdcache_size = cpuinfo->l1.dc_size;
 pdcache_way_mask = cpuinfo->l1.dc_nways - 1;

 sdcache_stride = cpuinfo->l2.dc_nsets * cpuinfo->l2.dc_linesize;
 sdcache_loopcount = cpuinfo->l2.dc_nways;
 sdcache_size = cpuinfo->l2.dc_size;
 sdcache_way_mask = cpuinfo->l2.dc_nways - 1;

 mips_sdcache_linesize = cpuinfo->l2.dc_linesize;
 mips_dcache_max_linesize = MAX(mips_pdcache_linesize,
     mips_sdcache_linesize);



 printf("Cache info:\n");
 if (cpuinfo->icache_virtual)
  printf("  icache is virtual\n");
 printf("  picache_stride    = %d\n", picache_stride);
 printf("  picache_loopcount = %d\n", picache_loopcount);
 printf("  pdcache_stride    = %d\n", pdcache_stride);
 printf("  pdcache_loopcount = %d\n", pdcache_loopcount);
 printf("  max line size     = %d\n", mips_dcache_max_linesize);

}
