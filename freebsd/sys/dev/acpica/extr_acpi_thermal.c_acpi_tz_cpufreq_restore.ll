; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_cpufreq_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_cpufreq_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_tz_softc = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"temperature %d.%dC: resuming previous clock speed (%d MHz)\0A\00", align 1
@CPUFREQ_PRIO_KERN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_tz_softc*)* @acpi_tz_cpufreq_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tz_cpufreq_restore(%struct.acpi_tz_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_tz_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_tz_softc* %0, %struct.acpi_tz_softc** %3, align 8
  %6 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = call i32 @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* @devclass_get_device(i32 %12, i32 0)
  store i32* %13, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %11
  %18 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @acpi_device_get_parent_softc(i32 %23)
  %25 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TZ_KELVTOC(i32 %27)
  %29 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ACPI_VPRINT(i32 %20, i32 %24, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @CPUFREQ_PRIO_KERN, align 4
  %35 = call i32 @CPUFREQ_SET(i32* %33, i32* null, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load i64, i64* @FALSE, align 8
  %40 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %17
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %15, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @ACPI_VPRINT(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @TZ_KELVTOC(i32) #1

declare dso_local i32 @CPUFREQ_SET(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
