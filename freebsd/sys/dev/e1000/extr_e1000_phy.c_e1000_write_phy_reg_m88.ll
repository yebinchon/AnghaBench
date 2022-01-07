; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_m88.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_phy_reg_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"e1000_write_phy_reg_m88\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_write_phy_reg_m88(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %13, align 8
  %15 = icmp ne i64 (%struct.e1000_hw.1*)* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %17, i64* %4, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.1*
  %26 = call i64 %23(%struct.e1000_hw.1* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %4, align 8
  br label %47

31:                                               ; preds = %18
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %32, i32 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.0*
  %45 = call i32 %42(%struct.e1000_hw.0* %44)
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %31, %29, %16
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
