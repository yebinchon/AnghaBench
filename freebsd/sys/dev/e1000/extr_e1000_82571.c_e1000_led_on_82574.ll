; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_led_on_82574.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_led_on_82574.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_led_on_82574\00", align 1
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_ON = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_IVRT = common dso_local global i32 0, align 4
@E1000_LEDCTL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_led_on_82574 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_led_on_82574(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @E1000_STATUS_LU, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = load i32, i32* @E1000_STATUS, align 4
  %13 = call i32 @E1000_READ_REG(%struct.e1000_hw* %11, i32 %12)
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 8
  %27 = ashr i32 %24, %26
  %28 = and i32 %27, 255
  %29 = load i32, i32* @E1000_LEDCTL_MODE_LED_ON, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* @E1000_LEDCTL_LED0_IVRT, align 4
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 8
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %17

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = load i32, i32* @E1000_LEDCTL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %48
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
