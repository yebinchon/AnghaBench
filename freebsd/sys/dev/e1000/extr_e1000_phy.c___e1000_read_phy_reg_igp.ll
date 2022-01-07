; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_read_phy_reg_igp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_read_phy_reg_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"__e1000_read_phy_reg_igp\00", align 1
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*, i32)* @__e1000_read_phy_reg_igp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_read_phy_reg_igp(%struct.e1000_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %11, i64* %10, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %19, align 8
  %21 = icmp ne i64 (%struct.e1000_hw.1*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %23, i64* %5, align 8
  br label %71

24:                                               ; preds = %15
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.1*
  %32 = call i64 %29(%struct.e1000_hw.1* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %5, align 8
  br label %71

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %43, i32 %44, i32 %45)
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %52, %53
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %51, i32 %54, i32* %55)
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = call i32 %65(%struct.e1000_hw.0* %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %69, %35, %22
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
