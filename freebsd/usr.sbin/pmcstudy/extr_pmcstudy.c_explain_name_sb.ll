; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"allocstall1\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Examine PARTIAL_RAT_STALLS.SLOW_LEA_WINDOW / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"thresh > .05\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"allocstall2\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Examine PARTIAL_RAT_STALLS.FLAGS_MERGE_UOP_CYCLES/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"br_miss\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Examine (20 * BR_MISP_RETIRED.ALL_BRANCHES)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"thresh >= .2\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"splitload\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Examine MEM_UOPS_RETIRED.SPLIT_LOADS * 5) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"thresh >= .1\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"splitstore\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"Examine MEM_UOPS_RETIRED.SPLIT_STORES / MEM_UOPS_RETIRED.ALL_STORES\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"thresh >= .01\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"contested\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"Examine (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 60) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"thresh >= .05\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"blockstorefwd\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"cache2\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Examine ((MEM_LOAD_RETIRED.L3_HIT * 26) + \0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HIT * 43) + \0A\00", align 1
@.str.22 = private unnamed_addr constant [86 x i8] c"         (MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 60)) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.23 = private unnamed_addr constant [85 x i8] c"**Note we have it labeled MEM_LOAD_UOPS_RETIRED.LLC_HIT not MEM_LOAD_RETIRED.L3_HIT\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"cache1\00", align 1
@.str.25 = private unnamed_addr constant [81 x i8] c"Examine (MEM_LOAD_UOPS_MISC_RETIRED.LLC_MISS * 180) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"dtlbmissload\00", align 1
@.str.27 = private unnamed_addr constant [77 x i8] c"Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"         / CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"frontendstall\00", align 1
@.str.30 = private unnamed_addr constant [71 x i8] c"Examine IDQ_UOPS_NOT_DELIVERED.CORE / (CPU_CLK_UNHALTED.THREAD_P * 4)\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"thresh >= .15\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"clears\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"          MACHINE_CLEARS.SMC + \0A\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"thresh >= .02\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"microassist\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"Examine IDQ.MS_CYCLES / (CPU_CLK_UNHALTED.THREAD_P * 4)\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"***We use IDQ.MS_UOPS,cmask=1 to get cycles\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"aliasing_4k\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 5) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"fpassist\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"look for a excessive value\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"otherassistavx\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"otherassistsse\00", align 1
@.str.48 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.SSE_TO_AVX * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"eff1\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"thresh < .9\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"eff2\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\0A\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"thresh > 1.0\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"dtlbmissstore\00", align 1
@.str.56 = private unnamed_addr constant [79 x i8] c"Examine (((DTLB_STORE_MISSES.STLB_HIT * 7) + DTLB_STORE_MISSES.WALK_DURATION)\0A\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"Unknown name:%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"unknown entry\00", align 1
@.str.59 = private unnamed_addr constant [75 x i8] c"If the value printed is %s we may have the ability to improve performance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @explain_name_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_name_sb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %153

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %152

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %151

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %150

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %149

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.15, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %148

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %147

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.23, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %146

54:                                               ; preds = %45
  %55 = load i8*, i8** %2, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %145

60:                                               ; preds = %54
  %61 = load i8*, i8** %2, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.27, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %144

67:                                               ; preds = %60
  %68 = load i8*, i8** %2, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.30, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %143

73:                                               ; preds = %67
  %74 = load i8*, i8** %2, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0))
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.35, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8** %3, align 8
  br label %142

81:                                               ; preds = %73
  %82 = load i8*, i8** %2, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %141

88:                                               ; preds = %81
  %89 = load i8*, i8** %2, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.41, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %140

94:                                               ; preds = %88
  %95 = load i8*, i8** %2, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %139

100:                                              ; preds = %94
  %101 = load i8*, i8** %2, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %138

106:                                              ; preds = %100
  %107 = load i8*, i8** %2, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.48, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %137

112:                                              ; preds = %106
  %113 = load i8*, i8** %2, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.50, i64 0, i64 0))
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8** %3, align 8
  br label %136

118:                                              ; preds = %112
  %119 = load i8*, i8** %2, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.53, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0), i8** %3, align 8
  br label %135

124:                                              ; preds = %118
  %125 = load i8*, i8** %2, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.56, i64 0, i64 0))
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %134

131:                                              ; preds = %124
  %132 = load i8*, i8** %2, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* %132)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i8** %3, align 8
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %122
  br label %136

136:                                              ; preds = %135, %116
  br label %137

137:                                              ; preds = %136, %110
  br label %138

138:                                              ; preds = %137, %104
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %92
  br label %141

141:                                              ; preds = %140, %85
  br label %142

142:                                              ; preds = %141, %77
  br label %143

143:                                              ; preds = %142, %71
  br label %144

144:                                              ; preds = %143, %64
  br label %145

145:                                              ; preds = %144, %58
  br label %146

146:                                              ; preds = %145, %49
  br label %147

147:                                              ; preds = %146, %43
  br label %148

148:                                              ; preds = %147, %37
  br label %149

149:                                              ; preds = %148, %31
  br label %150

150:                                              ; preds = %149, %25
  br label %151

151:                                              ; preds = %150, %19
  br label %152

152:                                              ; preds = %151, %13
  br label %153

153:                                              ; preds = %152, %7
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.59, i64 0, i64 0), i8* %154)
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
