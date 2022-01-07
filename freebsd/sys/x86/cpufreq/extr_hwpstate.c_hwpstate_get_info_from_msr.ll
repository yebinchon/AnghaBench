; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_get_info_from_msr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_get_info_from_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwpstate_softc = type { i32, %struct.hwpstate_setting* }
%struct.hwpstate_setting = type { i32, i32, i8*, i8*, i8* }

@cpu_id = common dso_local global i32 0, align 4
@MSR_AMD_10H_11H_LIMIT = common dso_local global i64 0, align 8
@MSR_AMD_10H_11H_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"msr is not valid.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unexpected did: 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"get_info_from_msr: AMD family 0x%02x CPUs are not supported yet\0A\00", align 1
@CPUFREQ_VAL_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hwpstate_get_info_from_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpstate_get_info_from_msr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwpstate_softc*, align 8
  %5 = alloca %struct.hwpstate_setting*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @cpu_id, align 4
  %12 = call i32 @CPUID_TO_FAMILY(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.hwpstate_softc* @device_get_softc(i32 %13)
  store %struct.hwpstate_softc* %14, %struct.hwpstate_softc** %4, align 8
  %15 = load i64, i64* @MSR_AMD_10H_11H_LIMIT, align 8
  %16 = call i32 @rdmsr(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @AMD_10H_11H_GET_PSTATE_MAX_VAL(i32 %17)
  %19 = add nsw i32 1, %18
  %20 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %4, align 8
  %21 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %4, align 8
  %23 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %22, i32 0, i32 1
  %24 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %23, align 8
  store %struct.hwpstate_setting* %24, %struct.hwpstate_setting** %5, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %122, %1
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %4, align 8
  %28 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %125

31:                                               ; preds = %25
  %32 = load i64, i64* @MSR_AMD_10H_11H_CONFIG, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @rdmsr(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, undef
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @HWPSTATE_DEBUG(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %126

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @AMD_10H_11H_CUR_DID(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @AMD_10H_11H_CUR_FID(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %92 [
    i32 17, label %50
    i32 16, label %61
    i32 18, label %61
    i32 21, label %61
    i32 22, label %61
    i32 23, label %72
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 8
  %53 = mul nsw i32 100, %52
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %53, %54
  %56 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %56, i64 %58
  %60 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 8
  br label %97

61:                                               ; preds = %44, %44, %44, %44
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 16
  %64 = mul nsw i32 100, %63
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %64, %65
  %67 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %67, i64 %69
  %71 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 8
  br label %97

72:                                               ; preds = %44
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @AMD_17H_CUR_DID(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i32, i8*, ...) @HWPSTATE_DEBUG(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @AMD_17H_CUR_FID(i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 200, %83
  %85 = load i32, i32* %10, align 4
  %86 = sdiv i32 %84, %85
  %87 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %87, i64 %89
  %91 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 8
  br label %97

92:                                               ; preds = %44
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, ...) @HWPSTATE_DEBUG(i32 %93, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %2, align 4
  br label %126

97:                                               ; preds = %80, %61, %50
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %99, i64 %101
  %103 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 4
  %104 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %105 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %105, i64 %107
  %109 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %108, i32 0, i32 4
  store i8* %104, i8** %109, align 8
  %110 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %111 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %111, i64 %113
  %115 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %114, i32 0, i32 3
  store i8* %110, i8** %115, align 8
  %116 = load i8*, i8** @CPUFREQ_VAL_UNKNOWN, align 8
  %117 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %117, i64 %119
  %121 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %120, i32 0, i32 2
  store i8* %116, i8** %121, align 8
  br label %122

122:                                              ; preds = %97
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %25

125:                                              ; preds = %25
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %92, %40
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local %struct.hwpstate_softc* @device_get_softc(i32) #1

declare dso_local i32 @rdmsr(i64) #1

declare dso_local i32 @AMD_10H_11H_GET_PSTATE_MAX_VAL(i32) #1

declare dso_local i32 @HWPSTATE_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @AMD_10H_11H_CUR_DID(i32) #1

declare dso_local i32 @AMD_10H_11H_CUR_FID(i32) #1

declare dso_local i32 @AMD_17H_CUR_DID(i32) #1

declare dso_local i32 @AMD_17H_CUR_FID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
