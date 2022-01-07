; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_init_TSC_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_init_TSC_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i8*, i32, i32 }

@cpu_feature = common dso_local global i32 0, align 4
@CPUID_TSC = common dso_local global i32 0, align 4
@tsc_disabled = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@POWER_PM_TYPE_APM = common dso_local global i64 0, align 8
@tsc_timecounter = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"TSC timecounter disabled: APM enabled.\0A\00", align 1
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@amd_pminfo = common dso_local global i32 0, align 4
@AMDPM_TSC_INVARIANT = common dso_local global i32 0, align 4
@TC_FLAGS_C2STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"TSC timecounter disables C2 and C3.\0A\00", align 1
@tsc_is_invariant = common dso_local global i64 0, align 8
@tsc_shift = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@CPUID_SSE2 = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@CPU_VENDOR_AMD = common dso_local global i64 0, align 8
@tsc_get_timecount_low_mfence = common dso_local global i32 0, align 4
@tsc_get_timecount_mfence = common dso_local global i32 0, align 4
@tsc_get_timecount_low_lfence = common dso_local global i32 0, align 4
@tsc_get_timecount_lfence = common dso_local global i32 0, align 4
@tsc_get_timecount_low = common dso_local global i32 0, align 4
@tsc_get_timecount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"TSC-low\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"TSC timecounter discards lower %d bit(s)\0A\00", align 1
@smp_tsc_adjust = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_TSC_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_TSC_tc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @cpu_feature, align 4
  %4 = load i32, i32* @CPUID_TSC, align 4
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @tsc_disabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %0
  br label %125

11:                                               ; preds = %7
  %12 = load i32, i32* @UINT_MAX, align 4
  store i32 %12, i32* %1, align 4
  %13 = call i64 (...) @power_pm_get_type()
  %14 = load i64, i64* @POWER_PM_TYPE_APM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  store i32 -1000, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 0), align 8
  %17 = load i64, i64* @bootverbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  br label %48

22:                                               ; preds = %11
  %23 = load i64, i64* @cpu_vendor_id, align 8
  %24 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32, i32* @amd_pminfo, align 4
  %28 = load i32, i32* @AMDPM_TSC_INVARIANT, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @TC_FLAGS_C2STOP, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 5), align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 5), align 4
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  br label %40

40:                                               ; preds = %39, %26, %22
  %41 = load i64, i64* @tsc_is_invariant, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1000, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* @tsc_shift, align 4
  %46 = load i32, i32* %1, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %44, %21
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %2, align 4
  %51 = icmp sle i32 %50, 31
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @tsc_freq, align 4
  %54 = load i32, i32* %2, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %1, align 4
  %57 = icmp sgt i32 %55, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %49

64:                                               ; preds = %58
  %65 = load i32, i32* @cpu_feature, align 4
  %66 = load i32, i32* @CPUID_SSE2, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = load i32, i32* @mp_ncpus, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i64, i64* @cpu_vendor_id, align 8
  %74 = load i64, i64* @CPU_VENDOR_AMD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32, i32* %2, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @tsc_get_timecount_low_mfence, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @tsc_get_timecount_mfence, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 4), align 8
  br label %94

85:                                               ; preds = %72
  %86 = load i32, i32* %2, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @tsc_get_timecount_low_lfence, align 4
  br label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @tsc_get_timecount_lfence, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 4), align 8
  br label %94

94:                                               ; preds = %92, %83
  br label %104

95:                                               ; preds = %69, %64
  %96 = load i32, i32* %2, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @tsc_get_timecount_low, align 4
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @tsc_get_timecount, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 4), align 8
  br label %104

104:                                              ; preds = %102, %94
  %105 = load i32, i32* %2, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 1), align 8
  %108 = load i64, i64* @bootverbose, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %2, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %104
  %115 = load i32, i32* @tsc_freq, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* @tsc_freq, align 4
  %119 = load i32, i32* %2, align 4
  %120 = ashr i32 %118, %119
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 2), align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tsc_timecounter, i32 0, i32 3), align 8
  %124 = call i32 @tc_init(%struct.TYPE_3__* @tsc_timecounter)
  br label %125

125:                                              ; preds = %10, %117, %114
  ret void
}

declare dso_local i64 @power_pm_get_type(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tc_init(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
