; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_pin_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_pin_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ar71xx_soc = common dso_local global i32 0, align 4
@AR91XX_GPIO_PINS = common dso_local global i32 0, align 4
@AR724X_GPIO_PINS = common dso_local global i32 0, align 4
@AR7241_GPIO_PINS = common dso_local global i32 0, align 4
@AR933X_GPIO_COUNT = common dso_local global i32 0, align 4
@AR934X_GPIO_COUNT = common dso_local global i32 0, align 4
@QCA953X_GPIO_COUNT = common dso_local global i32 0, align 4
@QCA955X_GPIO_COUNT = common dso_local global i32 0, align 4
@AR71XX_GPIO_PINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @ar71xx_gpio_pin_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_gpio_pin_max(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @ar71xx_soc, align 4
  switch i32 %5, label %34 [
    i32 138, label %6
    i32 137, label %6
    i32 141, label %10
    i32 139, label %10
    i32 140, label %14
    i32 136, label %18
    i32 135, label %18
    i32 134, label %22
    i32 133, label %22
    i32 132, label %22
    i32 131, label %26
    i32 130, label %26
    i32 129, label %30
    i32 128, label %30
  ]

6:                                                ; preds = %2, %2
  %7 = load i32, i32* @AR91XX_GPIO_PINS, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  br label %38

10:                                               ; preds = %2, %2
  %11 = load i32, i32* @AR724X_GPIO_PINS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32*, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* @AR7241_GPIO_PINS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %38

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @AR933X_GPIO_COUNT, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %38

22:                                               ; preds = %2, %2, %2
  %23 = load i32, i32* @AR934X_GPIO_COUNT, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %38

26:                                               ; preds = %2, %2
  %27 = load i32, i32* @QCA953X_GPIO_COUNT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %38

30:                                               ; preds = %2, %2
  %31 = load i32, i32* @QCA955X_GPIO_COUNT, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @AR71XX_GPIO_PINS, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %30, %26, %22, %18, %14, %10, %6
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
