; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar71xx_gpio.c_ar71xx_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar71xx_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR71XX_GPIO_SET = common dso_local global i32 0, align 4
@AR71XX_GPIO_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ar71xx_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar71xx_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ar71xx_gpio_softc* @device_get_softc(i32 %10)
  store %struct.ar71xx_gpio_softc* %11, %struct.ar71xx_gpio_softc** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %8, align 8
  %15 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %12

34:                                               ; preds = %29, %12
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %8, align 8
  %37 = getelementptr inbounds %struct.ar71xx_gpio_softc, %struct.ar71xx_gpio_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %8, align 8
  %47 = load i32, i32* @AR71XX_GPIO_SET, align 4
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = call i32 @GPIO_WRITE(%struct.ar71xx_gpio_softc* %46, i32 %47, i32 %49)
  br label %57

51:                                               ; preds = %42
  %52 = load %struct.ar71xx_gpio_softc*, %struct.ar71xx_gpio_softc** %8, align 8
  %53 = load i32, i32* @AR71XX_GPIO_CLEAR, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = call i32 @GPIO_WRITE(%struct.ar71xx_gpio_softc* %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.ar71xx_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_WRITE(%struct.ar71xx_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
