; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_lv_phy_workarounds_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_lv_phy_workarounds_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"e1000_lv_phy_workarounds_ich8lan\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8
@I82579_MSE_THRESHOLD = common dso_local global i32 0, align 4
@I82579_MSE_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_lv_phy_workarounds_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_lv_phy_workarounds_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_pch2lan, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %14, i64* %2, align 8
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %56

22:                                               ; preds = %15
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %26, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = bitcast %struct.e1000_hw* %28 to %struct.e1000_hw.1*
  %30 = call i64 %27(%struct.e1000_hw.1* %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %2, align 8
  br label %56

35:                                               ; preds = %22
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = load i32, i32* @I82579_MSE_THRESHOLD, align 4
  %38 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %36, i32 %37, i32 52)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @I82579_MSE_LINK_DOWN, align 4
  %45 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %43, i32 %44, i32 5)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %42, %41
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.0*
  %54 = call i32 %51(%struct.e1000_hw.0* %53)
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %46, %33, %20, %13
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
