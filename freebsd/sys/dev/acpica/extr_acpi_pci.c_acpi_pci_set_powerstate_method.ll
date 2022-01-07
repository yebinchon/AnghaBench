; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_set_powerstate_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci.c_acpi_pci_set_powerstate_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pci_powerstate = common dso_local global i32 0, align 4
@pci_do_power_suspend = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"set ACPI power state D%d on %s\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to set ACPI power state D%d on %s: %s\0A\00", align 1
@pci_do_power_resume = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @acpi_pci_set_powerstate_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_set_powerstate_method(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ACPI_STATE_D0, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ACPI_STATE_D3, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %90

21:                                               ; preds = %15
  %22 = load i32, i32* @pci_powerstate, align 4
  %23 = call i32 @ACPI_SERIAL_BEGIN(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pci_get_powerstate(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i64, i64* @pci_do_power_suspend, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pci_set_powerstate_method(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %86

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %29, %21
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @acpi_get_handle(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @acpi_pwr_switch_consumer(i32 %44, i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @ACPI_SUCCESS(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i64, i64* @bootverbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @acpi_name(i32 %56)
  %58 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %50
  br label %73

60:                                               ; preds = %41
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @AE_NOT_FOUND, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @acpi_name(i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @AcpiFormatException(i64 %69)
  %71 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %64, %60
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i64, i64* @pci_do_power_resume, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @pci_set_powerstate_method(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %80, %77, %73
  br label %86

86:                                               ; preds = %85, %39
  %87 = load i32, i32* @pci_powerstate, align 4
  %88 = call i32 @ACPI_SERIAL_END(i32 %87)
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @pci_get_powerstate(i32) #1

declare dso_local i32 @pci_set_powerstate_method(i32, i32, i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @acpi_pwr_switch_consumer(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @acpi_name(i32) #1

declare dso_local i32 @AcpiFormatException(i64) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
