; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_broad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_explain_name_broad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"eff1\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Examine (UOPS_RETIRED.RETIRE_SLOTS)/(4 *CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"thresh < .75\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eff2\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Examine CPU_CLK_UNHALTED.THREAD_P/INST_RETIRED.ANY_P\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"thresh > 1.0\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"itlbmiss\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"Examine (7 * ITLB_MISSES_STLB_HIT_4K + ITLB_MISSES.WALK_DURATION)/ CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"thresh > .05\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"icachemiss\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"Examine ( 36.0 * ICACHE.MISSES)/ CPU_CLK_UNHALTED.THREAD_P ??? may not be right \0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"lcpstall\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Examine ILD_STALL.LCP/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"cache1\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"Examine (MEM_LOAD_UOPS_LLC_MISS_RETIRED.LOCAL_DRAM * 180) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"thresh >= .1\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"cache2\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"Examine (36.0 * MEM_LOAD_UOPS_RETIRED.L3_HIT / CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"thresh >= .2\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"contested\00", align 1
@.str.20 = private unnamed_addr constant [128 x i8] c"Examine ((MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM * 84) +  MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_MISS)/ CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"thresh >= .05\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"datashare\00", align 1
@.str.23 = private unnamed_addr constant [80 x i8] c"Examine (MEM_LOAD_UOPS_L3_HIT_RETIRED.XSNP_HIT * 72)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"blockstorefwd\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"Examine (LD_BLOCKS_STORE_FORWARD * 13) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"aliasing_4k\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"Examine (LD_BLOCKS_PARTIAL.ADDRESS_ALIAS * 7) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"dtlbmissload\00", align 1
@.str.29 = private unnamed_addr constant [77 x i8] c"Examine (((DTLB_LOAD_MISSES.STLB_HIT * 7) + DTLB_LOAD_MISSES.WALK_DURATION)\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"         / CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"br_miss\00", align 1
@.str.32 = private unnamed_addr constant [100 x i8] c"Examine BR_MISP_RETIRED.ALL_BRANCHS_PS / (BR_MISP_RETIED.ALL_BRANCHES_PS + MACHINE_CLEARS.COUNT) *\0A\00", align 1
@.str.33 = private unnamed_addr constant [82 x i8] c" (UOPS_ISSUEDF.ANY - UOPS_RETIRED.RETIRE_SLOTS + 4 * INT_MISC.RECOVERY_CYCLES) /\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"CPU_CLK_UNHALTED.THREAD * 4)\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"clears\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Examine ((MACHINE_CLEARS.MEMORY_ORDERING + \0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"          MACHINE_CLEARS.SMC + \0A\00", align 1
@.str.38 = private unnamed_addr constant [72 x i8] c"          MACHINE_CLEARS.MASKMOV ) * 100 ) / CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"thresh >= .02\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"fpassist\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Examine FP_ASSIST.ANY/INST_RETIRED.ANY_P\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"look for a excessive value\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"otherassistavx\00", align 1
@.str.44 = private unnamed_addr constant [67 x i8] c"Examine (OTHER_ASSISTS.AVX_TO_SSE * 75)/CPU_CLK_UNHALTED.THREAD_P\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"microassist\00", align 1
@.str.46 = private unnamed_addr constant [104 x i8] c"Examine (UOPS_RETIRED.RETIRE_SLOTS/UOPS_ISSUED.ANY) * (IDQ.MS_CYCLES / (4 * CPU_CLK_UNHALTED.THREAD_P)\0A\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"***We use IDQ.MS_UOPS,cmask=1 to get cycles\0A\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Unknown name:%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"unknown entry\00", align 1
@.str.50 = private unnamed_addr constant [75 x i8] c"If the value printed is %s we may have the ability to improve performance\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @explain_name_broad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @explain_name_broad(i8* %0) #0 {
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
  br label %130

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %129

15:                                               ; preds = %9
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %128

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %127

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %126

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.14, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %125

39:                                               ; preds = %33
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.17, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %124

45:                                               ; preds = %39
  %46 = load i8*, i8** %2, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.20, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %123

51:                                               ; preds = %45
  %52 = load i8*, i8** %2, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.23, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %122

57:                                               ; preds = %51
  %58 = load i8*, i8** %2, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %121

63:                                               ; preds = %57
  %64 = load i8*, i8** %2, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %120

69:                                               ; preds = %63
  %70 = load i8*, i8** %2, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.29, i64 0, i64 0))
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %119

76:                                               ; preds = %69
  %77 = load i8*, i8** %2, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.32, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.33, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0))
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %118

84:                                               ; preds = %76
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i64 0, i64 0))
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.38, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %117

92:                                               ; preds = %84
  %93 = load i8*, i8** %2, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %116

98:                                               ; preds = %92
  %99 = load i8*, i8** %2, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.44, i64 0, i64 0))
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %115

104:                                              ; preds = %98
  %105 = load i8*, i8** %2, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.46, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %114

111:                                              ; preds = %104
  %112 = load i8*, i8** %2, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* %112)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0), i8** %3, align 8
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %96
  br label %117

117:                                              ; preds = %116, %88
  br label %118

118:                                              ; preds = %117, %80
  br label %119

119:                                              ; preds = %118, %73
  br label %120

120:                                              ; preds = %119, %67
  br label %121

121:                                              ; preds = %120, %61
  br label %122

122:                                              ; preds = %121, %55
  br label %123

123:                                              ; preds = %122, %49
  br label %124

124:                                              ; preds = %123, %43
  br label %125

125:                                              ; preds = %124, %37
  br label %126

126:                                              ; preds = %125, %31
  br label %127

127:                                              ; preds = %126, %25
  br label %128

128:                                              ; preds = %127, %19
  br label %129

129:                                              ; preds = %128, %13
  br label %130

130:                                              ; preds = %129, %7
  %131 = load i8*, i8** %3, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.50, i64 0, i64 0), i8* %131)
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
