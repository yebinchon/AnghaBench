; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pic_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pic_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.mtk_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mtk_gpio_pin_irqsrc = type { i32 }

@INTR_POLARITY_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.intr_irqsrc*)* @mtk_gpio_pic_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_gpio_pic_enable_intr(i32 %0, %struct.intr_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intr_irqsrc*, align 8
  %5 = alloca %struct.mtk_gpio_softc*, align 8
  %6 = alloca %struct.mtk_gpio_pin_irqsrc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %10)
  store %struct.mtk_gpio_softc* %11, %struct.mtk_gpio_softc** %5, align 8
  %12 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  %13 = bitcast %struct.intr_irqsrc* %12 to %struct.mtk_gpio_pin_irqsrc*
  store %struct.mtk_gpio_pin_irqsrc* %13, %struct.mtk_gpio_pin_irqsrc** %6, align 8
  %14 = load %struct.mtk_gpio_pin_irqsrc*, %struct.mtk_gpio_pin_irqsrc** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_gpio_pin_irqsrc, %struct.mtk_gpio_pin_irqsrc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %20 = call i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc* %19)
  %21 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INTR_POLARITY_LOW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %2
  %32 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %33 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %34 = call i32 @GPIO_PIORENA(%struct.mtk_gpio_softc* %33)
  %35 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %32, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %40 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %41 = call i32 @GPIO_PIORENA(%struct.mtk_gpio_softc* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %39, i32 %41, i32 %42)
  %44 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %45 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %46 = call i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc* %45)
  %47 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %44, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %51 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %52 = call i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc* %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %50, i32 %52, i32 %53)
  br label %79

55:                                               ; preds = %2
  %56 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %57 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %58 = call i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc* %57)
  %59 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %56, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %64 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %65 = call i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc* %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %63, i32 %65, i32 %66)
  %68 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %69 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %70 = call i32 @GPIO_PIORENA(%struct.mtk_gpio_softc* %69)
  %71 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %68, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %75 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %76 = call i32 @GPIO_PIORENA(%struct.mtk_gpio_softc* %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %55, %31
  %80 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %5, align 8
  %81 = call i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc* %80)
  ret void
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PIORENA(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
