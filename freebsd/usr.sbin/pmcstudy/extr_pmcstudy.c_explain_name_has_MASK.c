#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2(const char *name)
{
	const char *mythresh;
	if (FUNC1(name, "eff1") == 0) {
		FUNC0("Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\n");
		mythresh = "thresh < .75";
	} else if (FUNC1(name, "eff2") == 0) {
		FUNC0("Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\n");
		mythresh = "thresh > 1.0";
	} else if (FUNC1(name, "itlbmiss") == 0) {
		FUNC0("Examine ITLB_MISSES.WALK_DURATION / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh > .05"; 
	} else if (FUNC1(name, "icachemiss") == 0) {
		FUNC0("Examine (36 * ICACHE.MISSES)/ CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh > .05";
	} else if (FUNC1(name, "lcpstall") == 0) {
		FUNC0("Examine ILD_STALL.LCP/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh > .05";
	} else if (FUNC1(name, "cache1") == 0) {
		FUNC0("Examine (MEM_LOAD_UOPS_LLC_MISS_RETIRED.LOCAL_DRAM * 180) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .2";
	} else if (FUNC1(name, "cache2") == 0) {
		FUNC0("Examine ((MEM_LOAD_UOPS_RETIRED.LLC_HIT * 36) + \n");
		FUNC0("         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HIT * 72) + \n");
		FUNC0("         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 84))\n");
		FUNC0("          / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .2";
	} else if (FUNC1(name, "contested") == 0) {
		FUNC0("Examine (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 84) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .05";
	} else if (FUNC1(name, "datashare") == 0) {
		FUNC0("Examine (MEM_LOAD_UOPS_L3_HIT_RETIRED.XSNP_HIT * 72)/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh > .05";
	} else if (FUNC1(name, "blockstorefwd") == 0) {
		FUNC0("Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .05";
	} else if (FUNC1(name, "splitload") == 0) {
		FUNC0("Examine  (MEM_UOPS_RETIRED.SPLIT_LOADS * 5) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .1";
	} else if (FUNC1(name, "splitstore") == 0) {
		FUNC0("Examine MEM_UOPS_RETIRED.SPLIT_STORES / MEM_UOPS_RETIRED.ALL_STORES\n");
		mythresh = "thresh >= .01";
	} else if (FUNC1(name, "aliasing_4k") == 0) {
		FUNC0("Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .1";
	} else if (FUNC1(name, "dtlbmissload") == 0) {
		FUNC0("Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\n");
		FUNC0("         / CPU_CLK_UNHALTED.THREAD_P)\n");
		mythresh = "thresh >= .1";
	} else if (FUNC1(name, "br_miss") == 0) {
		FUNC0("Examine (20 * BR_MISP_RETIRED.ALL_BRANCHES)/CPU_CLK_UNHALTED.THREAD\n");
		mythresh = "thresh >= .2";
	} else if (FUNC1(name, "clears") == 0) {
		FUNC0("Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \n");
		FUNC0("          MACHINE_CLEARS.SMC + \n");
		FUNC0("          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .02";
	} else if (FUNC1(name, "microassist") == 0) {
		FUNC0("Examine IDQ.MS_CYCLES / (4 * CPU_CLK_UNHALTED.THREAD_P)\n");
		FUNC0("***We use IDQ.MS_UOPS,cmask=1 to get cycles\n");
		mythresh = "thresh >= .05";
	} else if (FUNC1(name, "fpassist") == 0) {
		FUNC0("Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\n");
		mythresh = "look for a excessive value";
	} else if (FUNC1(name, "otherassistavx") == 0) {
		FUNC0("Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "look for a excessive value";
	} else if (FUNC1(name, "otherassistsse") == 0) {
		FUNC0("Examine (OTHER_ASSISTS.SSE_TO_AVX * 75)/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "look for a excessive value";
	} else {
		FUNC0("Unknown name:%s\n", name);
		mythresh = "unknown entry";
        }
	FUNC0("If the value printed is %s we may have the ability to improve performance\n", mythresh);
}