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
	if (FUNC1(name, "allocstall1") == 0) {
		FUNC0("Examine PARTIAL_RAT_STALLS.SLOW_LEA_WINDOW / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh > .05";
	} else if (FUNC1(name, "allocstall2") == 0) {
		FUNC0("Examine PARTIAL_RAT_STALLS.FLAGS_MERGE_UOP_CYCLES/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh > .05";
	} else if (FUNC1(name, "br_miss") == 0) {
		FUNC0("Examine (20 * BR_MISP_RETIRED.ALL_BRANCHES)/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .2";
	} else if (FUNC1(name, "splitload") == 0) {
		FUNC0("Examine MEM_UOPS_RETIRED.SPLIT_LOADS * 5) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .1";
	} else if (FUNC1(name, "splitstore") == 0) {
		FUNC0("Examine MEM_UOPS_RETIRED.SPLIT_STORES / MEM_UOPS_RETIRED.ALL_STORES\n");
		mythresh = "thresh >= .01";
	} else if (FUNC1(name, "contested") == 0) {
		FUNC0("Examine (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 60) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .05";
	} else if (FUNC1(name, "blockstorefwd") == 0) {
		FUNC0("Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .05";
	} else if (FUNC1(name, "cache2") == 0) {
		FUNC0("Examine ((MEM_LOAD_RETIRED.L3_HIT * 26) + \n");
		FUNC0("         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HIT * 43) + \n");
		FUNC0("         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 60)) / CPU_CLK_UNHALTED.THREAD_P\n");
		FUNC0("**Note we have it labeled MEM_LOAD_UOPS_RETIRED.LLC_HIT not MEM_LOAD_RETIRED.L3_HIT\n");
		mythresh = "thresh >= .2";
	} else if (FUNC1(name, "cache1") == 0) {
		FUNC0("Examine (MEM_LOAD_UOPS_MISC_RETIRED.LLC_MISS * 180) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .2";
	} else if (FUNC1(name, "dtlbmissload") == 0) {
		FUNC0("Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\n");
		FUNC0("         / CPU_CLK_UNHALTED.THREAD_P)\n");
		mythresh = "thresh >= .1";
	} else if (FUNC1(name, "frontendstall") == 0) {
		FUNC0("Examine IDQ_UOPS_NOT_DELIVERED.CORE / (CPU_CLK_UNHALTED.THREAD_P * 4)\n");
		mythresh = "thresh >= .15";
	} else if (FUNC1(name, "clears") == 0) {
		FUNC0("Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \n");
		FUNC0("          MACHINE_CLEARS.SMC + \n");
		FUNC0("          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .02";
	} else if (FUNC1(name, "microassist") == 0) {
		FUNC0("Examine IDQ.MS_CYCLES / (CPU_CLK_UNHALTED.THREAD_P * 4)\n");
		FUNC0("***We use IDQ.MS_UOPS,cmask=1 to get cycles\n");
		mythresh = "thresh >= .05";
	} else if (FUNC1(name, "aliasing_4k") == 0) {
		FUNC0("Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "thresh >= .1";
	} else if (FUNC1(name, "fpassist") == 0) {
		FUNC0("Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\n");
		mythresh = "look for a excessive value";
	} else if (FUNC1(name, "otherassistavx") == 0) {
		FUNC0("Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "look for a excessive value";
	} else if (FUNC1(name, "otherassistsse") == 0) {
		FUNC0("Examine (OTHER_ASSISTS.SSE_TO_AVX * 75)/CPU_CLK_UNHALTED.THREAD_P\n");
		mythresh = "look for a excessive value";
	} else if (FUNC1(name, "eff1") == 0) {
		FUNC0("Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\n");
		mythresh = "thresh < .9";
	} else if (FUNC1(name, "eff2") == 0) {
		FUNC0("Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\n");
		mythresh = "thresh > 1.0";
	} else if (FUNC1(name, "dtlbmissstore") == 0) {
		FUNC0("Examine (((DTLB_STORE_MISSES.STLB_HIT * 7) + DTLB_STORE_MISSES.WALK_DURATION)\n");
		FUNC0("         / CPU_CLK_UNHALTED.THREAD_P)\n");
		mythresh = "thresh >= .05";
	} else {
		FUNC0("Unknown name:%s\n", name);
		mythresh = "unknown entry";
        }
	FUNC0("If the value printed is %s we may have the ability to improve performance\n", mythresh);
}