; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_phy_hw_reset_sgmii_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_phy_hw_reset_sgmii_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"e1000_phy_hw_reset_sgmii_82575\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Soft resetting SGMII attached PHY...\0A\00", align 1
@M88E1512_E_PHY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_hw_reset_sgmii_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_hw_reset_sgmii_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  store %struct.e1000_phy_info* %7, %struct.e1000_phy_info** %4, align 8
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %13, align 8
  %15 = icmp ne i64 (%struct.e1000_hw.1*, i32, i32)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.1*
  %25 = call i64 %22(%struct.e1000_hw.1* %24, i32 27, i32 32900)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %51

29:                                               ; preds = %17
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.0*
  %37 = call i64 %34(%struct.e1000_hw.0* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %51

41:                                               ; preds = %29
  %42 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @M88E1512_E_PHY_ID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = call i64 @e1000_initialize_M88E1512_phy(%struct.e1000_hw* %48)
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %40, %28, %16
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_initialize_M88E1512_phy(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
