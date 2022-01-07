; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pin_set_invert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pin_set_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GPIO_PIOPOL = common dso_local global i32 0, align 4
@GPIO_PIN_INVIN = common dso_local global i32 0, align 4
@GPIO_PIN_INVOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_gpio_softc*, i32, i32)* @mtk_gpio_pin_set_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_pin_set_invert(%struct.mtk_gpio_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_gpio_softc* %0, %struct.mtk_gpio_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 1, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %12 = load i32, i32* @GPIO_PIOPOL, align 4
  %13 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %27 = load i32, i32* @GPIO_PIOPOL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %31 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %33
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %43
  store i32 %52, i32* %50, align 4
  ret i32 0
}

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
