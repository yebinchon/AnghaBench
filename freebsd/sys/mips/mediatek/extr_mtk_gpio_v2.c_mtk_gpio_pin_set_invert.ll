; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_set_invert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_set_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

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
  %12 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %13 = call i32 @GPIO_PIOPOL(%struct.mtk_gpio_softc* %12)
  %14 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %28 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %29 = call i32 @GPIO_PIOPOL(%struct.mtk_gpio_softc* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %27, i32 %29, i32 %30)
  %32 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %33 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %35
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %45
  store i32 %54, i32* %52, align 4
  ret i32 0
}

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PIOPOL(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
