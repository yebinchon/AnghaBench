; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_probe_tsc_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_probe_tsc_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@cpu_power_ecx = common dso_local global i32 0, align 4
@CPUID_PERF_STAT = common dso_local global i32 0, align 4
@MSR_MPERF = common dso_local global i32 0, align 4
@MSR_APERF = common dso_local global i32 0, align 4
@tsc_perf_stat = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_VMWARE = common dso_local global i64 0, align 8
@cpu_vendor_id = common dso_local global i32 0, align 4
@amd_pminfo = common dso_local global i32 0, align 4
@AMDPM_TSC_INVARIANT = common dso_local global i32 0, align 4
@VM_GUEST_NO = common dso_local global i64 0, align 8
@cpu_id = common dso_local global i32 0, align 4
@tsc_is_invariant = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@CPUID_SSE2 = common dso_local global i32 0, align 4
@tsc_get_timecount_mfence = common dso_local global i8* null, align 8
@tsc_timecounter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tsc_get_timecount_lfence = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"machdep.disable_tsc_calibration\00", align 1
@tsc_skip_calibration = common dso_local global i32 0, align 4
@ACPI_FADT_LEGACY_DEVICES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Skipping TSC calibration since no legacy devices reported by FADT and CPUID works\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Calibrating TSC clock ... \00", align 1
@tsc_freq = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"TSC clock: %ju Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @probe_tsc_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_tsc_freq() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @cpu_power_ecx, align 4
  %5 = load i32, i32* @CPUID_PERF_STAT, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %0
  %9 = load i32, i32* @MSR_MPERF, align 4
  %10 = call i32 @wrmsr(i32 %9, i32 0)
  %11 = load i32, i32* @MSR_APERF, align 4
  %12 = call i32 @wrmsr(i32 %11, i32 0)
  %13 = call i32 @DELAY(i32 10)
  %14 = load i32, i32* @MSR_MPERF, align 4
  %15 = call i32 @rdmsr(i32 %14)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load i32, i32* @MSR_APERF, align 4
  %19 = call i32 @rdmsr(i32 %18)
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* @tsc_perf_stat, align 4
  br label %22

22:                                               ; preds = %21, %17, %8
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i64, i64* @vm_guest, align 8
  %25 = load i64, i64* @VM_GUEST_VMWARE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @tsc_freq_vmware()
  br label %163

29:                                               ; preds = %23
  %30 = load i32, i32* @cpu_vendor_id, align 4
  switch i32 %30, label %113 [
    i32 130, label %31
    i32 128, label %53
    i32 129, label %87
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @amd_pminfo, align 4
  %33 = load i32, i32* @AMDPM_TSC_INVARIANT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @vm_guest, align 8
  %38 = load i64, i64* @VM_GUEST_NO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @cpu_id, align 4
  %42 = call i32 @CPUID_TO_FAMILY(i32 %41)
  %43 = icmp sge i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %31
  store i32 1, i32* @tsc_is_invariant, align 4
  br label %45

45:                                               ; preds = %44, %40, %36
  %46 = load i32, i32* @cpu_feature, align 4
  %47 = load i32, i32* @CPUID_SSE2, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8*, i8** @tsc_get_timecount_mfence, align 8
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tsc_timecounter, i32 0, i32 0), align 8
  br label %52

52:                                               ; preds = %50, %45
  br label %113

53:                                               ; preds = %29
  %54 = load i32, i32* @amd_pminfo, align 4
  %55 = load i32, i32* @AMDPM_TSC_INVARIANT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @vm_guest, align 8
  %60 = load i64, i64* @VM_GUEST_NO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i32, i32* @cpu_id, align 4
  %64 = call i32 @CPUID_TO_FAMILY(i32 %63)
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @cpu_id, align 4
  %68 = call i32 @CPUID_TO_MODEL(i32 %67)
  %69 = icmp sge i32 %68, 14
  br i1 %69, label %78, label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @cpu_id, align 4
  %72 = call i32 @CPUID_TO_FAMILY(i32 %71)
  %73 = icmp eq i32 %72, 15
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* @cpu_id, align 4
  %76 = call i32 @CPUID_TO_MODEL(i32 %75)
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %66, %53
  store i32 1, i32* @tsc_is_invariant, align 4
  br label %79

79:                                               ; preds = %78, %74, %70, %58
  %80 = load i32, i32* @cpu_feature, align 4
  %81 = load i32, i32* @CPUID_SSE2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** @tsc_get_timecount_lfence, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tsc_timecounter, i32 0, i32 0), align 8
  br label %86

86:                                               ; preds = %84, %79
  br label %113

87:                                               ; preds = %29
  %88 = load i64, i64* @vm_guest, align 8
  %89 = load i64, i64* @VM_GUEST_NO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* @cpu_id, align 4
  %93 = call i32 @CPUID_TO_FAMILY(i32 %92)
  %94 = icmp eq i32 %93, 6
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @cpu_id, align 4
  %97 = call i32 @CPUID_TO_MODEL(i32 %96)
  %98 = icmp sge i32 %97, 15
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = call i32 @rdmsr(i32 4611)
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, 4294967296
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* @tsc_is_invariant, align 4
  br label %105

105:                                              ; preds = %104, %99, %95, %91, %87
  %106 = load i32, i32* @cpu_feature, align 4
  %107 = load i32, i32* @CPUID_SSE2, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i8*, i8** @tsc_get_timecount_lfence, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tsc_timecounter, i32 0, i32 0), align 8
  br label %112

112:                                              ; preds = %110, %105
  br label %113

113:                                              ; preds = %29, %112, %86, %52
  %114 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* @tsc_skip_calibration)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %113
  %117 = call i64 @acpi_get_fadt_bootflags(i32* %3)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @ACPI_FADT_LEGACY_DEVICES, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = call i64 (...) @tsc_freq_cpuid()
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @tsc_skip_calibration, align 4
  br label %129

129:                                              ; preds = %127, %124, %119, %116
  br label %130

130:                                              ; preds = %129, %113
  %131 = load i32, i32* @tsc_skip_calibration, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = call i64 (...) @tsc_freq_cpuid()
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %143

137:                                              ; preds = %133
  %138 = load i32, i32* @cpu_vendor_id, align 4
  %139 = icmp eq i32 %138, 128
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (...) @tsc_freq_intel()
  br label %142

142:                                              ; preds = %140, %137
  br label %143

143:                                              ; preds = %142, %136
  br label %156

144:                                              ; preds = %130
  %145 = load i64, i64* @bootverbose, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = call i64 (...) @rdtsc()
  store i64 %150, i64* %1, align 8
  %151 = call i32 @DELAY(i32 1000000)
  %152 = call i64 (...) @rdtsc()
  store i64 %152, i64* %2, align 8
  %153 = load i64, i64* %2, align 8
  %154 = load i64, i64* %1, align 8
  %155 = sub nsw i64 %153, %154
  store i64 %155, i64* @tsc_freq, align 8
  br label %156

156:                                              ; preds = %149, %143
  %157 = load i64, i64* @bootverbose, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i64, i64* @tsc_freq, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %27, %159, %156
  ret void
}

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @tsc_freq_vmware(...) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i64 @acpi_get_fadt_bootflags(i32*) #1

declare dso_local i64 @tsc_freq_cpuid(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tsc_freq_intel(...) #1

declare dso_local i64 @rdtsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
