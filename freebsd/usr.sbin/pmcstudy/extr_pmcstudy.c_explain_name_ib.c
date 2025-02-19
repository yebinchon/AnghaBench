
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
explain_name_ib(const char *name)
{
 const char *mythresh;
 if (strcmp(name, "br_miss") == 0) {
  printf("Examine ((BR_MISP_RETIRED.ALL_BRANCHES /(BR_MISP_RETIRED.ALL_BRANCHES +\n");
  printf("         MACHINE_CLEAR.COUNT) * ((UOPS_ISSUED.ANY - UOPS_RETIRED.RETIRE_SLOTS + 4 * INT_MISC.RECOVERY_CYCLES)\n");
  printf("/ (4 * CPU_CLK_UNHALTED.THREAD))))\n");
  mythresh = "thresh >= .2";
 } else if (strcmp(name, "eff1") == 0) {
  printf("Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\n");
  mythresh = "thresh < .9";
 } else if (strcmp(name, "eff2") == 0) {
  printf("Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\n");
  mythresh = "thresh > 1.0";
 } else if (strcmp(name, "cache1") == 0) {
  printf("Examine (MEM_LOAD_UOPS_LLC_MISS_RETIRED.LOCAL_DRAM * 180) / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .2";
 } else if (strcmp(name, "cache2") == 0) {
  printf("Examine (MEM_LOAD_UOPS_RETIRED.LLC_HIT / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .2";
 } else if (strcmp(name, "itlbmiss") == 0) {
  printf("Examine ITLB_MISSES.WALK_DURATION / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh > .05";
 } else if (strcmp(name, "icachemiss") == 0) {
  printf("Examine (ICACHE.IFETCH_STALL - ITLB_MISSES.WALK_DURATION)/ CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh > .05";
 } else if (strcmp(name, "lcpstall") == 0) {
  printf("Examine ILD_STALL.LCP/CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh > .05";
 } else if (strcmp(name, "datashare") == 0) {
  printf("Examine (MEM_LOAD_UOPS_L3_HIT_RETIRED.XSNP_HIT * 43)/CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh > .05";
 } else if (strcmp(name, "blockstorefwd") == 0) {
  printf("Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .05";
 } else if (strcmp(name, "splitload") == 0) {
  printf("Examine  ((L1D_PEND_MISS.PENDING / MEM_LOAD_UOPS_RETIRED.L1_MISS) *\n");
  printf("         LD_BLOCKS.NO_SR)/CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .1";
 } else if (strcmp(name, "splitstore") == 0) {
  printf("Examine MEM_UOPS_RETIRED.SPLIT_STORES / MEM_UOPS_RETIRED.ALL_STORES\n");
  mythresh = "thresh >= .01";
 } else if (strcmp(name, "aliasing_4k") == 0) {
  printf("Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .1";
 } else if (strcmp(name, "dtlbmissload") == 0) {
  printf("Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\n");
  printf("         / CPU_CLK_UNHALTED.THREAD_P)\n");
  mythresh = "thresh >= .1";
 } else if (strcmp(name, "dtlbmissstore") == 0) {
  printf("Examine (((DTLB_STORE_MISSES.STLB_HIT * 7) + DTLB_STORE_MISSES.WALK_DURATION)\n");
  printf("         / CPU_CLK_UNHALTED.THREAD_P)\n");
  mythresh = "thresh >= .05";
 } else if (strcmp(name, "contested") == 0) {
  printf("Examine (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 60) / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .05";
 } else if (strcmp(name, "clears") == 0) {
  printf("Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \n");
  printf("          MACHINE_CLEARS.SMC + \n");
  printf("          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "thresh >= .02";
 } else if (strcmp(name, "microassist") == 0) {
  printf("Examine IDQ.MS_CYCLES / (4 * CPU_CLK_UNHALTED.THREAD_P)\n");
  printf("***We use IDQ.MS_UOPS,cmask=1 to get cycles\n");
  mythresh = "thresh >= .05";
 } else if (strcmp(name, "fpassist") == 0) {
  printf("Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\n");
  mythresh = "look for a excessive value";
 } else if (strcmp(name, "otherassistavx") == 0) {
  printf("Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "look for a excessive value";
 } else if (strcmp(name, "otherassistsse") == 0) {
  printf("Examine (OTHER_ASSISTS.SSE_TO_AVX * 75)/CPU_CLK_UNHALTED.THREAD_P\n");
  mythresh = "look for a excessive value";
 } else {
  printf("Unknown name:%s\n", name);
  mythresh = "unknown entry";
        }
 printf("If the value printed is %s we may have the ability to improve performance\n", mythresh);
}
