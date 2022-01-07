; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_set_phy_mode_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_set_phy_mode_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_7__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.e1000_hw.1*, i32, i32, i32*)* }
%struct.e1000_hw.1 = type opaque
%struct.TYPE_8__ = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"e1000_set_phy_mode_82540\00", align 1
@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@NVM_PHY_CLASS_WORD = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@NVM_RESERVED_WORD = common dso_local global i32 0, align 4
@NVM_PHY_CLASS_A = common dso_local global i32 0, align 4
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_set_phy_mode_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_phy_mode_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @e1000_82545_rev_3, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32 (%struct.e1000_hw.1*, i32, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32, i32*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.1*
  %22 = load i32, i32* @NVM_PHY_CLASS_WORD, align 4
  %23 = call i32 %19(%struct.e1000_hw.1* %21, i32 %22, i32 1, i32* %4)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @E1000_ERR_PHY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %14
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NVM_RESERVED_WORD, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NVM_PHY_CLASS_A, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.0*
  %46 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %47 = call i32 %43(%struct.e1000_hw.0* %45, i32 %46, i32 11)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @E1000_ERR_PHY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %70

53:                                               ; preds = %38
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %57, align 8
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %60 = bitcast %struct.e1000_hw* %59 to %struct.e1000_hw.0*
  %61 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %62 = call i32 %58(%struct.e1000_hw.0* %60, i32 %61, i32 33028)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @E1000_ERR_PHY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %33, %29
  br label %70

70:                                               ; preds = %69, %65, %50, %26, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
