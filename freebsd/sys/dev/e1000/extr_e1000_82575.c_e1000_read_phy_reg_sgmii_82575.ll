; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_read_phy_reg_sgmii_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_read_phy_reg_sgmii_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_ERR_PARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"e1000_read_phy_reg_sgmii_82575\00", align 1
@E1000_MAX_SGMII_PHY_REG_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"PHY Address %u is out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i32*)* @e1000_read_phy_reg_sgmii_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_read_phy_reg_sgmii_82575(%struct.e1000_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* @E1000_ERR_PARAM, align 8
  %9 = sub nsw i64 0, %8
  store i64 %9, i64* %7, align 8
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @E1000_MAX_SGMII_PHY_REG_ADDR, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.1*
  %25 = call i64 %22(%struct.e1000_hw.1* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %42

29:                                               ; preds = %17
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @e1000_read_phy_reg_i2c(%struct.e1000_hw* %30, i64 %31, i32* %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.0*
  %41 = call i32 %38(%struct.e1000_hw.0* %40)
  br label %42

42:                                               ; preds = %29, %28, %14
  %43 = load i64, i64* %7, align 8
  ret i64 %43
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i64 @e1000_read_phy_reg_i2c(%struct.e1000_hw*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
