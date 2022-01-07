; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_phy_hw_reset_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_phy_hw_reset_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"e1000_phy_hw_reset_82541\00", align 1
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@E1000_LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_phy_hw_reset_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_phy_hw_reset_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = call i64 @e1000_phy_hw_reset_generic(%struct.e1000_hw* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = call i32 @e1000_phy_init_script_82541(%struct.e1000_hw* %12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_82541, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_82547, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20, %11
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = load i32, i32* @E1000_LEDCTL, align 4
  %30 = call i32 @E1000_READ_REG(%struct.e1000_hw* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %35 = load i32, i32* @IGP_LED3_MODE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = load i32, i32* @E1000_LEDCTL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %27, %20
  br label %44

44:                                               ; preds = %43, %10
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_phy_init_script_82541(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
