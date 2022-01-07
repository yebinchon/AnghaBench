; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_read_i2c_byte_aq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_i2c.c_ixl_read_i2c_byte_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE = common dso_local global i32 0, align 4
@IXL_DBG_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"I2C byte read status %s, error %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixl_read_i2c_byte_aq(%struct.ixl_pf* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 0
  store %struct.i40e_hw* %13, %struct.i40e_hw** %9, align 8
  %14 = load i64, i64* @I40E_SUCCESS, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %16 = load i32, i32* @I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @i40e_aq_get_phy_register(%struct.i40e_hw* %15, i32 %16, i64 %17, i64 %18, i64* %11, i32* null)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %24 = load i32, i32* @IXL_DBG_I2C, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @i40e_stat_str(%struct.i40e_hw* %25, i64 %26)
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i40e_aq_str(%struct.i40e_hw* %28, i32 %32)
  %34 = call i32 @ixl_dbg(%struct.ixl_pf* %23, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %33)
  br label %38

35:                                               ; preds = %4
  %36 = load i64, i64* %11, align 8
  %37 = load i64*, i64** %8, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %22
  %39 = load i64, i64* %10, align 8
  ret i64 %39
}

declare dso_local i64 @i40e_aq_get_phy_register(%struct.i40e_hw*, i32, i64, i64, i64*, i32*) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
