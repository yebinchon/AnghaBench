; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_get_temperature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_tz_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"acpi_tz_get_temperature\00", align 1
@acpi_tz_tmp_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"error fetching current temperature -- %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ACPI_DB_VALUES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"got %d.%dC\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_tz_softc*)* @acpi_tz_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tz_get_temperature(%struct.acpi_tz_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_tz_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_tz_softc* %0, %struct.acpi_tz_softc** %3, align 8
  %6 = call i32 @ACPI_FUNCTION_NAME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @acpi_tz_tmp_name, align 4
  %11 = call i32 @acpi_GetInteger(i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @acpi_device_get_parent_softc(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @AcpiFormatException(i32 %23)
  %25 = call i32 @ACPI_VPRINT(i32 %18, i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %29 = load i32, i32* @acpi_tz_tmp_name, align 4
  %30 = call i32 @acpi_tz_sanity(%struct.acpi_tz_softc* %28, i32* %4, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load i32, i32* @ACPI_DB_VALUES, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TZ_KELVTOC(i32 %37)
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %33, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i8*) #1

declare dso_local i32 @acpi_GetInteger(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_VPRINT(i32, i32, i8*, i32) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

declare dso_local i32 @acpi_tz_sanity(%struct.acpi_tz_softc*, i32*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @TZ_KELVTOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
