; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_ib.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"br_miss\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Examine ((BR_MISP_RETIRED.ALL_BRANCHES /(BR_MISP_RETIRED.ALL_BRANCHES +\0A\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"         MACHINE_CLEAR.COUNT) * ((UOPS_ISSUED.ANY - UOPS_RETIRED.RETIRE_SLOTS + 4 * INT_MISC.RECOVERY_CYCLES)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"/ (4 * CPU_CLK_UNHALTED.THREAD))))\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"thresh >= .2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"eff1\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"thresh < .9\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"eff2\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"thresh > 1.0\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cache1\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"Examine (MEM_LOAD_UOPS_LLC_MISS_RETIRED.LOCAL_DRAM * 180) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cache2\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"Examine (MEM_LOAD_UOPS_RETIRED.LLC_HIT / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"itlbmiss\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Examine ITLB_MISSES.WALK_DURATION / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"thresh > .05\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"icachemiss\00", align 1
@.str.19 = private unnamed_addr constant [86 x i8] c"Examine (ICACHE.IFETCH_STALL - ITLB_MISSES.WALK_DURATION)/ CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"lcpstall\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"Examine ILD_STALL.LCP/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"datashare\00", align 1
@.str.23 = private unnamed_addr constant [80 x i8] c"Examine (MEM_LOAD_UOPS_L3_HIT_RETIRED.XSNP_HIT * 43)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"blockstorefwd\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"thresh >= .05\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"splitload\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"Examine  ((L1D_PEND_MISS.PENDING / MEM_LOAD_UOPS_RETIRED.L1_MISS) *\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"         LD_BLOCKS.NO_SR)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"thresh >= .1\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"splitstore\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Examine MEM_UOPS_RETIRED.SPLIT_STORES / MEM_UOPS_RETIRED.ALL_STORES\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"thresh >= .01\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"aliasing_4k\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"dtlbmissload\00", align 1
@.str.37 = private unnamed_addr constant [77 x i8] c"Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"         / CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"dtlbmissstore\00", align 1
@.str.40 = private unnamed_addr constant [79 x i8] c"Examine (((DTLB_STORE_MISSES.STLB_HIT * 7) + DTLB_STORE_MISSES.WALK_DURATION)\0A\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"contested\00", align 1
@.str.42 = private unnamed_addr constant [84 x i8] c"Examine (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 60) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"clears\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"          MACHINE_CLEARS.SMC + \0A\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"thresh >= .02\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"microassist\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"Examine IDQ.MS_CYCLES / (4 * CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"***We use IDQ.MS_UOPS,cmask=1 to get cycles\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"fpassist\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"look for a excessive value\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"otherassistavx\00", align 1
@.str.55 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"otherassistsse\00", align 1
@.str.57 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.SSE_TO_AVX * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Unknown name:%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"unknown entry\00", align 1
@.str.60 = private unnamed_addr constant [75 x i8] c"If the value printed is %s we may have the ability to improve performance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @explain_name_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_name_ib(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %160

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %159

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %158

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %157

29:                                               ; preds = %23
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %156

35:                                               ; preds = %29
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %155

41:                                               ; preds = %35
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.19, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %154

47:                                               ; preds = %41
  %48 = load i8*, i8** %2, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %153

53:                                               ; preds = %47
  %54 = load i8*, i8** %2, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.23, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %152

59:                                               ; preds = %53
  %60 = load i8*, i8** %2, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %151

65:                                               ; preds = %59
  %66 = load i8*, i8** %2, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %150

72:                                               ; preds = %65
  %73 = load i8*, i8** %2, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %149

78:                                               ; preds = %72
  %79 = load i8*, i8** %2, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.35, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %148

84:                                               ; preds = %78
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.37, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %147

91:                                               ; preds = %84
  %92 = load i8*, i8** %2, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.40, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %146

98:                                               ; preds = %91
  %99 = load i8*, i8** %2, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.42, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %145

104:                                              ; preds = %98
  %105 = load i8*, i8** %2, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0))
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8** %3, align 8
  br label %144

112:                                              ; preds = %104
  %113 = load i8*, i8** %2, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.49, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %143

119:                                              ; preds = %112
  %120 = load i8*, i8** %2, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i8** %3, align 8
  br label %142

125:                                              ; preds = %119
  %126 = load i8*, i8** %2, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.55, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i8** %3, align 8
  br label %141

131:                                              ; preds = %125
  %132 = load i8*, i8** %2, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i8** %3, align 8
  br label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %2, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i8* %138)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8** %3, align 8
  br label %140

140:                                              ; preds = %137, %135
  br label %141

141:                                              ; preds = %140, %129
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142, %116
  br label %144

144:                                              ; preds = %143, %108
  br label %145

145:                                              ; preds = %144, %102
  br label %146

146:                                              ; preds = %145, %95
  br label %147

147:                                              ; preds = %146, %88
  br label %148

148:                                              ; preds = %147, %82
  br label %149

149:                                              ; preds = %148, %76
  br label %150

150:                                              ; preds = %149, %69
  br label %151

151:                                              ; preds = %150, %63
  br label %152

152:                                              ; preds = %151, %57
  br label %153

153:                                              ; preds = %152, %51
  br label %154

154:                                              ; preds = %153, %45
  br label %155

155:                                              ; preds = %154, %39
  br label %156

156:                                              ; preds = %155, %33
  br label %157

157:                                              ; preds = %156, %27
  br label %158

158:                                              ; preds = %157, %21
  br label %159

159:                                              ; preds = %158, %15
  br label %160

160:                                              ; preds = %159, %7
  %161 = load i8*, i8** %3, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.60, i64 0, i64 0), i8* %161)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
