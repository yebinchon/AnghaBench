; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_acquire_phy_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_acquire_phy_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_SWFW_PHY0_SM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"e1000_acquire_phy_82575\00", align 1
@E1000_FUNC_1 = common dso_local global i64 0, align 8
@E1000_SWFW_PHY1_SM = common dso_local global i32 0, align 4
@E1000_FUNC_2 = common dso_local global i64 0, align 8
@E1000_SWFW_PHY2_SM = common dso_local global i32 0, align 4
@E1000_FUNC_3 = common dso_local global i64 0, align 8
@E1000_SWFW_PHY3_SM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_acquire_phy_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_acquire_phy_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load i32, i32* @E1000_SWFW_PHY0_SM, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @E1000_FUNC_1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @E1000_SWFW_PHY1_SM, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @E1000_FUNC_2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @E1000_SWFW_PHY2_SM, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @E1000_FUNC_3, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @E1000_SWFW_PHY3_SM, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %23
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %12
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.0*, i32)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.0*
  %42 = load i32, i32* %3, align 4
  %43 = call i32 %39(%struct.e1000_hw.0* %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
