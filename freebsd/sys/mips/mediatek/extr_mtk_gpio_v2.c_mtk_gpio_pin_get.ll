; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @mtk_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mtk_gpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %11)
  store %struct.mtk_gpio_softc* %12, %struct.mtk_gpio_softc** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %8, align 8
  %15 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %8, align 8
  %22 = call i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc* %21)
  %23 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %8, align 8
  %24 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %8, align 8
  %25 = call i32 @GPIO_PIODATA(%struct.mtk_gpio_softc* %24)
  %26 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %23, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %8, align 8
  %36 = call i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %20, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PIODATA(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
