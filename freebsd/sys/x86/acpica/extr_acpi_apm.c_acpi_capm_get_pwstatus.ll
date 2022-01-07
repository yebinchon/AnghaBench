; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_acpi_capm_get_pwstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_acpi_capm_get_pwstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }
%struct.acpi_battinfo = type { i32, i32 }

@PMDV_ALLDEV = common dso_local global i64 0, align 8
@PMDV_BATT0 = common dso_local global i64 0, align 8
@PMDV_BATT_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@APM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @acpi_capm_get_pwstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_capm_get_pwstatus(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_battinfo, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PMDV_ALLDEV, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PMDV_BATT0, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PMDV_BATT_ALL, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  store i32 1, i32* %2, align 4
  br label %91

27:                                               ; preds = %20, %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PMDV_ALLDEV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @acpi_battery_get_battinfo(i32* null, %struct.acpi_battinfo* %8)
  store i32 %34, i32* %7, align 4
  br label %53

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PMDV_BATT0, align 8
  %40 = sub nsw i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = call i32 @devclass_find(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @devclass_get_device(i32 %42, i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @acpi_battery_get_battinfo(i32* %48, %struct.acpi_battinfo* %8)
  store i32 %49, i32* %7, align 4
  br label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %91

57:                                               ; preds = %53
  %58 = call i32 @acpi_capm_convert_battstate(%struct.acpi_battinfo* %8)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = call i32 @acpi_capm_convert_battflags(%struct.acpi_battinfo* %8)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %76

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 60
  br label %76

76:                                               ; preds = %72, %71
  %77 = phi i32 [ -1, %71 ], [ %75, %72 ]
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = call i64 @acpi_acad_get_acline(i32* %5)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @APM_UNKNOWN, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %76
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %56, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @acpi_battery_get_battinfo(i32*, %struct.acpi_battinfo*) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @acpi_capm_convert_battstate(%struct.acpi_battinfo*) #1

declare dso_local i32 @acpi_capm_convert_battflags(%struct.acpi_battinfo*) #1

declare dso_local i64 @acpi_acad_get_acline(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
