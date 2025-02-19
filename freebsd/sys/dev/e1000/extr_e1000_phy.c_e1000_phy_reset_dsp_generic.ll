; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_reset_dsp_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_reset_dsp_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"e1000_phy_reset_dsp_generic\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_reset_dsp_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %9, align 8
  %11 = icmp ne i64 (%struct.e1000_hw.0*, i32, i32)* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %2, align 8
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.0*
  %22 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %23 = call i64 %19(%struct.e1000_hw.0* %21, i32 %22, i32 193)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %37 = call i64 %33(%struct.e1000_hw.0* %35, i32 %36, i32 0)
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %28, %26, %12
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
