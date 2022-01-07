; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_write_phy_reg_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_write_phy_reg_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"e1000_write_phy_reg_82543\00", align 1
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@PHY_PREAMBLE = common dso_local global i32 0, align 4
@PHY_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@PHY_TURNAROUND = common dso_local global i32 0, align 4
@PHY_OP_WRITE = common dso_local global i32 0, align 4
@PHY_SOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32, i64)* @e1000_write_phy_reg_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_write_phy_reg_82543(%struct.e1000_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @E1000_ERR_PARAM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = load i32, i32* @PHY_PREAMBLE, align 4
  %22 = load i32, i32* @PHY_PREAMBLE_SIZE, align 4
  %23 = call i32 @e1000_shift_out_mdi_bits_82543(%struct.e1000_hw* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @PHY_TURNAROUND, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 2
  %27 = or i32 %24, %26
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 7
  %33 = or i32 %27, %32
  %34 = load i32, i32* @PHY_OP_WRITE, align 4
  %35 = shl i32 %34, 12
  %36 = or i32 %33, %35
  %37 = load i32, i32* @PHY_SOF, align 4
  %38 = shl i32 %37, 14
  %39 = or i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 16
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @e1000_shift_out_mdi_bits_82543(%struct.e1000_hw* %46, i32 %47, i32 32)
  br label %49

49:                                               ; preds = %19, %14
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @e1000_shift_out_mdi_bits_82543(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
