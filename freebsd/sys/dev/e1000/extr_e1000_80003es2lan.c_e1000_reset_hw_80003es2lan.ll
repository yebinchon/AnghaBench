; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_reset_hw_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_reset_hw_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"e1000_reset_hw_80003es2lan\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INBAND_PARAM = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_IBIST_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Error disabling far-end loopback\0A\00", align 1
@E1000_ICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = call i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @E1000_IMC, align 4
  %18 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %16, i32 %17, i32 -1)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = load i32, i32* @E1000_RCTL, align 4
  %21 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %19, i32 %20, i32 0)
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = load i32, i32* @E1000_TCTL, align 4
  %24 = load i32, i32* @E1000_TCTL_PSP, align 4
  %25 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %26)
  %28 = call i32 @msec_delay(i32 10)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = load i32, i32* @E1000_CTRL, align 4
  %31 = call i32 @E1000_READ_REG(%struct.e1000_hw* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = call i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw* %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %14
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %84

38:                                               ; preds = %14
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = load i32, i32* @E1000_CTRL, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @E1000_CTRL_RST, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %40, i32 %41, i32 %44)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = call i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw* %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %50 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %48, i32 %49, i32* %6)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @E1000_KMRNCTRLSTA_IBIST_DISABLE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %57, i32 %58, i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %53
  br label %68

66:                                               ; preds = %38
  %67 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %65
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = call i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %84

75:                                               ; preds = %68
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load i32, i32* @E1000_IMC, align 4
  %78 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %76, i32 %77, i32 -1)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = load i32, i32* @E1000_ICR, align 4
  %81 = call i32 @E1000_READ_REG(%struct.e1000_hw* %79, i32 %80)
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %83 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %82)
  store i64 %83, i64* %2, align 8
  br label %84

84:                                               ; preds = %75, %73, %36
  %85 = load i64, i64* %2, align 8
  ret i64 %85
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_acquire_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_release_phy_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_get_auto_rd_done_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
