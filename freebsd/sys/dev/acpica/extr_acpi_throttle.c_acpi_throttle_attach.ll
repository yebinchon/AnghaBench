; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_throttle_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_throttle_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_throttle_softc = type { i32, i32, i32, i32 }
%struct.cf_setting = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"attach failed to get Processor obj - %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_throttle_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_throttle_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_throttle_softc*, align 8
  %5 = alloca %struct.cf_setting, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.acpi_throttle_softc* @device_get_softc(i32 %10)
  store %struct.acpi_throttle_softc* %11, %struct.acpi_throttle_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @acpi_get_handle(i32 %15)
  %17 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @AcpiEvaluateObject(i32 %24, i32* null, i32* null, %struct.TYPE_8__* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @AcpiFormatException(i32 %31)
  %33 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = call i32 @AcpiOsFree(%struct.TYPE_7__* %51)
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @device_get_unit(i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %58 = call i32 @acpi_throttle_quirks(%struct.acpi_throttle_softc* %57)
  br label %59

59:                                               ; preds = %56, %35
  %60 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %4, align 8
  %61 = call i32 @acpi_throttle_evaluate(%struct.acpi_throttle_softc* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %5, i32 0, i32 0
  store i32 10000, i32* %67, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @acpi_thr_set(i32 %68, %struct.cf_setting* %5)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @cpufreq_register(i32 %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %64, %29
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.acpi_throttle_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_7__*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @acpi_throttle_quirks(%struct.acpi_throttle_softc*) #1

declare dso_local i32 @acpi_throttle_evaluate(%struct.acpi_throttle_softc*) #1

declare dso_local i32 @acpi_thr_set(i32, %struct.cf_setting*) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
