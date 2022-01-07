; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_px_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_px_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.acpi_perf_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Px transition to %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @acpi_px_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_px_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.acpi_perf_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %11 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %127

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.acpi_perf_softc* @device_get_softc(i32 %16)
  store %struct.acpi_perf_softc* %17, %struct.acpi_perf_softc** %6, align 8
  %18 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %3, align 4
  br label %127

24:                                               ; preds = %15
  %25 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %50, %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %36 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %39 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @CPUFREQ_CMP(i32 %37, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %53

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %28

53:                                               ; preds = %48, %28
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %56 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %127

61:                                               ; preds = %53
  %62 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %63 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %66 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PX_SET_REG(i32 %64, i32 %72)
  %74 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %75 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %105, %61
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 1000
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %87 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PX_GET_REG(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, -256
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 255
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %85
  br label %108

103:                                              ; preds = %97, %93
  %104 = call i32 @DELAY(i32 10)
  br label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %82

108:                                              ; preds = %102, %82
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 1000
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %114 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %108
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.acpi_perf_softc*, %struct.acpi_perf_softc** %6, align 8
  %126 = getelementptr inbounds %struct.acpi_perf_softc, %struct.acpi_perf_softc* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %111, %59, %22, %13
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.acpi_perf_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPUFREQ_CMP(i32, i32) #1

declare dso_local i32 @PX_SET_REG(i32, i32) #1

declare dso_local i32 @PX_GET_REG(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
