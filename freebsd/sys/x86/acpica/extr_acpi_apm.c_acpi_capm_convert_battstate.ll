; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_acpi_capm_convert_battstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_acpi_capm_convert_battstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battinfo = type { i32, i32 }

@APM_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_DISCHARG = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_CRITICAL = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battinfo*)* @acpi_capm_convert_battstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_capm_convert_battstate(%struct.acpi_battinfo* %0) #0 {
  %2 = alloca %struct.acpi_battinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_battinfo* %0, %struct.acpi_battinfo** %2, align 8
  %4 = load i32, i32* @APM_UNKNOWN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ACPI_BATT_STAT_DISCHARG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 50
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %18

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ACPI_BATT_STAT_CRITICAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 2, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %2, align 8
  %29 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ACPI_BATT_STAT_CHARGING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 3, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @APM_UNKNOWN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.acpi_battinfo*, %struct.acpi_battinfo** %2, align 8
  %41 = getelementptr inbounds %struct.acpi_battinfo, %struct.acpi_battinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 50
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
