; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_get_info_from_acpi_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_get_info_from_acpi_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwpstate_softc = type { i32, %struct.hwpstate_setting* }
%struct.hwpstate_setting = type { i32, i32, i32, i32, i32 }
%struct.cf_setting = type { i32*, i32, i32, i32, i32 }

@MAX_SETTINGS = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nomem\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error: CPUFREQ_DRV_SETTINGS.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ACPI _PSS object mismatch.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hwpstate_get_info_from_acpi_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpstate_get_info_from_acpi_perf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwpstate_softc*, align 8
  %7 = alloca %struct.cf_setting*, align 8
  %8 = alloca %struct.hwpstate_setting*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MAX_SETTINGS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 24
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_TEMP, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = call %struct.cf_setting* @malloc(i32 %15, i32 %16, i32 %17)
  store %struct.cf_setting* %18, %struct.cf_setting** %7, align 8
  %19 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %20 = icmp eq %struct.cf_setting* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @HWPSTATE_DEBUG(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %128

25:                                               ; preds = %2
  %26 = load i32, i32* @MAX_SETTINGS, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %29 = call i32 @CPUFREQ_DRV_SETTINGS(i32 %27, %struct.cf_setting* %28, i32* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @HWPSTATE_DEBUG(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %119

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.hwpstate_softc* @device_get_softc(i32 %36)
  store %struct.hwpstate_softc* %37, %struct.hwpstate_softc** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %40 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %42 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %41, i32 0, i32 1
  %43 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %42, align 8
  store %struct.hwpstate_setting* %43, %struct.hwpstate_setting** %8, align 8
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %115, %35
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %118

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %50, i64 %52
  %54 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %49, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %61, i64 %63
  %65 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %66, i64 %68
  %70 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %72, i64 %74
  %76 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %75, i32 0, i32 4
  store i32 %71, i32* %76, align 4
  %77 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %77, i64 %79
  %81 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %83, i64 %85
  %87 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %86, i32 0, i32 3
  store i32 %82, i32* %87, align 4
  %88 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %88, i64 %90
  %92 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %94, i64 %96
  %98 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %97, i32 0, i32 2
  store i32 %93, i32* %98, align 4
  %99 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %99, i64 %101
  %103 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %105, i64 %107
  %109 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  br label %114

110:                                              ; preds = %48
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @HWPSTATE_DEBUG(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %10, align 4
  br label %119

114:                                              ; preds = %59
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %44

118:                                              ; preds = %44
  br label %119

119:                                              ; preds = %118, %110, %32
  %120 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %121 = icmp ne %struct.cf_setting* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.cf_setting*, %struct.cf_setting** %7, align 8
  %124 = load i32, i32* @M_TEMP, align 4
  %125 = call i32 @free(%struct.cf_setting* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %21
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.cf_setting* @malloc(i32, i32, i32) #1

declare dso_local i32 @HWPSTATE_DEBUG(i32, i8*) #1

declare dso_local i32 @CPUFREQ_DRV_SETTINGS(i32, %struct.cf_setting*, i32*) #1

declare dso_local %struct.hwpstate_softc* @device_get_softc(i32) #1

declare dso_local i32 @free(%struct.cf_setting*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
