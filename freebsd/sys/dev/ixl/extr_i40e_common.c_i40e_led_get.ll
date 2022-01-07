; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_led_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_LED0 = common dso_local global i32 0, align 4
@I40E_GLGEN_GPIO_CTL_MAX_INDEX = common dso_local global i32 0, align 4
@I40E_GLGEN_GPIO_CTL_LED_MODE_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_led_get(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @I40E_LED0, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @I40E_GLGEN_GPIO_CTL_MAX_INDEX, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @i40e_led_is_mine(%struct.i40e_hw* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %34

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @I40E_GLGEN_GPIO_CTL_LED_MODE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  switch i32 %25, label %27 [
    i32 131, label %26
    i32 130, label %26
    i32 128, label %26
    i32 129, label %26
  ]

26:                                               ; preds = %19, %19, %19, %19
  br label %34

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @I40E_GLGEN_GPIO_CTL_LED_MODE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @I40E_GLGEN_GPIO_CTL_LED_MODE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %28, %8
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @i40e_led_is_mine(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
