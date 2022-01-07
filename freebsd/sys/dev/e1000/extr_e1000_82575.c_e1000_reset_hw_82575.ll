; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_hw_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_hw_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82575\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"PCI-E Set completion timeout has failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = call i64 @e1000_set_pcie_completion_timeout(%struct.e1000_hw* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_IMC, align 4
  %23 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %21, i32 %22, i32 -1)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_RCTL, align 4
  %26 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 0)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = load i32, i32* @E1000_TCTL, align 4
  %29 = load i32, i32* @E1000_TCTL_PSP, align 4
  %30 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %31)
  %33 = call i32 @msec_delay(i32 10)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_CTRL, align 4
  %36 = call i32 @E1000_READ_REG(%struct.e1000_hw* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = load i32, i32* @E1000_CTRL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @E1000_CTRL_RST, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %38, i32 %39, i32 %42)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = call i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw* %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %19
  %49 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %19
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = load i32, i32* @E1000_EECD, align 4
  %53 = call i32 @E1000_READ_REG(%struct.e1000_hw* %51, i32 %52)
  %54 = load i32, i32* @E1000_EECD_PRES, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = call i32 @e1000_reset_init_script_82575(%struct.e1000_hw* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = load i32, i32* @E1000_IMC, align 4
  %63 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %61, i32 %62, i32 -1)
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = load i32, i32* @E1000_ICR, align 4
  %66 = call i32 @E1000_READ_REG(%struct.e1000_hw* %64, i32 %65)
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_set_pcie_completion_timeout(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_reset_init_script_82575(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
