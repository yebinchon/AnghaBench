; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_write_smbus_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_write_smbus_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_STRAP = common dso_local global i32 0, align 4
@E1000_STRAP_SMT_FREQ_MASK = common dso_local global i32 0, align 4
@E1000_STRAP_SMT_FREQ_SHIFT = common dso_local global i32 0, align 4
@E1000_STRAP_SMBUS_ADDRESS_MASK = common dso_local global i32 0, align 4
@HV_SMB_ADDR = common dso_local global i32 0, align 4
@HV_SMB_ADDR_MASK = common dso_local global i32 0, align 4
@E1000_STRAP_SMBUS_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@HV_SMB_ADDR_PEC_EN = common dso_local global i32 0, align 4
@HV_SMB_ADDR_VALID = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@HV_SMB_ADDR_FREQ_MASK = common dso_local global i32 0, align 4
@HV_SMB_ADDR_FREQ_LOW_SHIFT = common dso_local global i32 0, align 4
@HV_SMB_ADDR_FREQ_HIGH_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unsupported SMB frequency in PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_write_smbus_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_write_smbus_addr(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = load i32, i32* @E1000_STRAP, align 4
  %10 = call i32 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @E1000_STRAP_SMT_FREQ_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @E1000_STRAP_SMT_FREQ_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @E1000_STRAP_SMBUS_ADDRESS_MASK, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = load i32, i32* @HV_SMB_ADDR, align 4
  %21 = call i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw* %19, i32 %20, i32* %4)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %2, align 8
  br label %77

26:                                               ; preds = %1
  %27 = load i32, i32* @HV_SMB_ADDR_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @E1000_STRAP_SMBUS_ADDRESS_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @HV_SMB_ADDR_PEC_EN, align 4
  %37 = load i32, i32* @HV_SMB_ADDR_VALID, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @e1000_phy_i217, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %26
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* @HV_SMB_ADDR_FREQ_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 1
  %58 = load i32, i32* @HV_SMB_ADDR_FREQ_LOW_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 2
  %64 = load i32, i32* @HV_SMB_ADDR_FREQ_HIGH_SHIFT, align 4
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 %63, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %47
  %70 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %51
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = load i32, i32* @HV_SMB_ADDR, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw* %73, i32 %74, i32 %75)
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %72, %24
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_write_phy_reg_hv_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
