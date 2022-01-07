; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_power_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_thermal.c_acpi_tz_power_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_tz_softc = type { i32, i32, i32 }

@POWER_PROFILE_PERFORMANCE = common dso_local global i32 0, align 4
@POWER_PROFILE_ECONOMY = common dso_local global i32 0, align 4
@TZ_FLAG_NO_SCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_SCP\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"can't evaluate %s._SCP - %s\0A\00", align 1
@TZ_FLAG_GETSETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_tz_power_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_tz_power_profile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_tz_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.acpi_tz_softc*
  store %struct.acpi_tz_softc* %7, %struct.acpi_tz_softc** %4, align 8
  %8 = call i32 (...) @power_profile_get_state()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @POWER_PROFILE_PERFORMANCE, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @POWER_PROFILE_ECONOMY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %67

17:                                               ; preds = %12, %1
  %18 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TZ_FLAG_NO_SCP, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %17
  %25 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @POWER_PROFILE_PERFORMANCE, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  %33 = call i64 @acpi_SetInteger(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @ACPI_FAILURE(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %24
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @AE_NOT_FOUND, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @acpi_device_get_parent_softc(i32 %47)
  %49 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @acpi_name(i32 %51)
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @AcpiFormatException(i64 %53)
  %55 = call i32 @ACPI_VPRINT(i32 %44, i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %41, %37
  %57 = load i32, i32* @TZ_FLAG_NO_SCP, align 4
  %58 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_tz_softc, %struct.acpi_tz_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %66

62:                                               ; preds = %24
  %63 = load %struct.acpi_tz_softc*, %struct.acpi_tz_softc** %4, align 8
  %64 = load i32, i32* @TZ_FLAG_GETSETTINGS, align 4
  %65 = call i32 @acpi_tz_signal(%struct.acpi_tz_softc* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %16, %66, %17
  ret void
}

declare dso_local i32 @power_profile_get_state(...) #1

declare dso_local i64 @acpi_SetInteger(i32, i8*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_VPRINT(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @acpi_device_get_parent_softc(i32) #1

declare dso_local i32 @acpi_name(i32) #1

declare dso_local i32 @AcpiFormatException(i64) #1

declare dso_local i32 @acpi_tz_signal(%struct.acpi_tz_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
