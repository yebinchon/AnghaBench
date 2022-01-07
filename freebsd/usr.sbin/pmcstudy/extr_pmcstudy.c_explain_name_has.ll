; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_has.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_has.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"eff1\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"thresh < .75\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eff2\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"thresh > 1.0\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"itlbmiss\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Examine ITLB_MISSES.WALK_DURATION / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"thresh > .05\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"icachemiss\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Examine (36 * ICACHE.MISSES)/ CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"lcpstall\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Examine ILD_STALL.LCP/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cache1\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"Examine (MEM_LOAD_UOPS_LLC_MISS_RETIRED.LOCAL_DRAM * 180) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"thresh >= .2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"cache2\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"Examine ((MEM_LOAD_UOPS_RETIRED.LLC_HIT * 36) + \0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HIT * 72) + \0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 84))\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"          / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"contested\00", align 1
@.str.22 = private unnamed_addr constant [84 x i8] c"Examine (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 84) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"thresh >= .05\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"datashare\00", align 1
@.str.25 = private unnamed_addr constant [80 x i8] c"Examine (MEM_LOAD_UOPS_L3_HIT_RETIRED.XSNP_HIT * 72)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"blockstorefwd\00", align 1
@.str.27 = private unnamed_addr constant [68 x i8] c"Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"splitload\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"Examine  (MEM_UOPS_RETIRED.SPLIT_LOADS * 5) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"thresh >= .1\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"splitstore\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"Examine MEM_UOPS_RETIRED.SPLIT_STORES / MEM_UOPS_RETIRED.ALL_STORES\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"thresh >= .01\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"aliasing_4k\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"dtlbmissload\00", align 1
@.str.37 = private unnamed_addr constant [77 x i8] c"Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"         / CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"br_miss\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Examine (20 * BR_MISP_RETIRED.ALL_BRANCHES)/CPU_CLK_UNHALTED.THREAD\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"clears\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"          MACHINE_CLEARS.SMC + \0A\00", align 1
@.str.44 = private unnamed_addr constant [72 x i8] c"          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"thresh >= .02\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"microassist\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"Examine IDQ.MS_CYCLES / (4 * CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.48 = private unnamed_addr constant [45 x i8] c"***We use IDQ.MS_UOPS,cmask=1 to get cycles\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"fpassist\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"look for a excessive value\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"otherassistavx\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"otherassistsse\00", align 1
@.str.55 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.SSE_TO_AVX * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Unknown name:%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"unknown entry\00", align 1
@.str.58 = private unnamed_addr constant [75 x i8] c"If the value printed is %s we may have the ability to improve performance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @explain_name_has to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_name_has(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %152

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %151

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %150

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %149

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %148

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.14, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %147

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %146

48:                                               ; preds = %39
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.22, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %145

54:                                               ; preds = %48
  %55 = load i8*, i8** %2, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.25, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %144

60:                                               ; preds = %54
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %143

66:                                               ; preds = %60
  %67 = load i8*, i8** %2, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %142

72:                                               ; preds = %66
  %73 = load i8*, i8** %2, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8** %3, align 8
  br label %141

78:                                               ; preds = %72
  %79 = load i8*, i8** %2, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.35, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %140

84:                                               ; preds = %78
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.37, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %139

91:                                               ; preds = %84
  %92 = load i8*, i8** %2, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.40, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %138

97:                                               ; preds = %91
  %98 = load i8*, i8** %2, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.44, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i8** %3, align 8
  br label %137

105:                                              ; preds = %97
  %106 = load i8*, i8** %2, align 8
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0))
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.48, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %136

112:                                              ; preds = %105
  %113 = load i8*, i8** %2, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i8** %3, align 8
  br label %135

118:                                              ; preds = %112
  %119 = load i8*, i8** %2, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.53, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i8** %3, align 8
  br label %134

124:                                              ; preds = %118
  %125 = load i8*, i8** %2, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.55, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i8** %3, align 8
  br label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %2, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0), i8* %131)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i8** %3, align 8
  br label %133

133:                                              ; preds = %130, %128
  br label %134

134:                                              ; preds = %133, %122
  br label %135

135:                                              ; preds = %134, %116
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136, %101
  br label %138

138:                                              ; preds = %137, %95
  br label %139

139:                                              ; preds = %138, %88
  br label %140

140:                                              ; preds = %139, %82
  br label %141

141:                                              ; preds = %140, %76
  br label %142

142:                                              ; preds = %141, %70
  br label %143

143:                                              ; preds = %142, %64
  br label %144

144:                                              ; preds = %143, %58
  br label %145

145:                                              ; preds = %144, %52
  br label %146

146:                                              ; preds = %145, %43
  br label %147

147:                                              ; preds = %146, %37
  br label %148

148:                                              ; preds = %147, %31
  br label %149

149:                                              ; preds = %148, %25
  br label %150

150:                                              ; preds = %149, %19
  br label %151

151:                                              ; preds = %150, %13
  br label %152

152:                                              ; preds = %151, %7
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.58, i64 0, i64 0), i8* %153)
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
