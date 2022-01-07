; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pin_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_pin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GPIO_PIORENA = common dso_local global i32 0, align 4
@GPIO_PIOFENA = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@GPIO_PIODIR = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIOPOL = common dso_local global i32 0, align 4
@GPIO_PIN_INVIN = common dso_local global i32 0, align 4
@GPIO_PIN_INVOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_gpio_softc*, i32)* @mtk_gpio_pin_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_gpio_pin_probe(%struct.mtk_gpio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_gpio_softc* %0, %struct.mtk_gpio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %17 = load i32, i32* @GPIO_PIORENA, align 4
  %18 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %16, i32 %17)
  %19 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %20 = load i32, i32* @GPIO_PIOFENA, align 4
  %21 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %19, i32 %20)
  %22 = or i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %2
  %28 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %29 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %28, i32* %35, align 4
  %36 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %37 = load i32, i32* @GPIO_PIORENA, align 4
  %38 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %27
  %44 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %45 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %44, i32* %51, align 4
  br label %61

52:                                               ; preds = %27
  %53 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %54 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %43
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %64 = load i32, i32* @GPIO_PIODIR, align 4
  %65 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %72 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %71
  store i32 %80, i32* %78, align 4
  br label %92

81:                                               ; preds = %62
  %82 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %83 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %82
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %81, %70
  %93 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %94 = load i32, i32* @GPIO_PIOPOL, align 4
  %95 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %92
  %101 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %100
  %113 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %114 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %113
  store i32 %122, i32* %120, align 4
  br label %134

123:                                              ; preds = %100
  %124 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %125 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %126 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %124
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %123, %112
  br label %135

135:                                              ; preds = %134, %92
  ret void
}

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
