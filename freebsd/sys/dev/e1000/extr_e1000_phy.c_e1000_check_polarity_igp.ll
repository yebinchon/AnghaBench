; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_check_polarity_igp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_check_polarity_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [25 x i8] c"e1000_check_polarity_igp\00", align 1
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PCS_INIT_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_POLARITY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_POLARITY_REVERSED = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_polarity_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_phy_info* %10, %struct.e1000_phy_info** %4, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %14, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = bitcast %struct.e1000_hw* %16 to %struct.e1000_hw.0*
  %18 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %19 = call i64 %15(%struct.e1000_hw.0* %17, i32 %18, i32* %6)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %62

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @IGP01E1000_PHY_POLARITY_MASK, align 4
  store i32 %32, i32* %8, align 4
  br label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @IGP01E1000_PSSR_POLARITY_REVERSED, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64 (%struct.e1000_hw.0*, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32*)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.0*
  %43 = load i32, i32* %7, align 4
  %44 = call i64 %40(%struct.e1000_hw.0* %42, i32 %43, i32* %6)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %36
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %60, %22
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
