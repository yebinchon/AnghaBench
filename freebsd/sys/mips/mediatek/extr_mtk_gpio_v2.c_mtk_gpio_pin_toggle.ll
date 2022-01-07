; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @mtk_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtk_gpio_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %9)
  store %struct.mtk_gpio_softc* %10, %struct.mtk_gpio_softc** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %13 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %20 = call i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc* %19)
  %21 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %8, align 4
  br label %63

33:                                               ; preds = %18
  %34 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %35 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %36 = call i32 @GPIO_PIODATA(%struct.mtk_gpio_softc* %35)
  %37 = call i64 @MTK_READ_4(%struct.mtk_gpio_softc* %34, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %48 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %49 = call i32 @GPIO_PIORESET(%struct.mtk_gpio_softc* %48)
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 1, %51
  %53 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %47, i32 %49, i32 %52)
  br label %62

54:                                               ; preds = %33
  %55 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %56 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %57 = call i32 @GPIO_PIOSET(%struct.mtk_gpio_softc* %56)
  %58 = load i64, i64* %5, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  %61 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %55, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %6, align 8
  %65 = call i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @MTK_GPIO_LOCK(%struct.mtk_gpio_softc*) #1

declare dso_local i64 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PIODATA(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PIORESET(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @GPIO_PIOSET(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @MTK_GPIO_UNLOCK(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
