; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_pin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
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
  %17 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %18 = call i32 @GPIO_PIORENA(%struct.mtk_gpio_softc* %17)
  %19 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %16, i32 %18)
  %20 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %21 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %22 = call i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc* %21)
  %23 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %20, i32 %22)
  %24 = or i32 %19, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %2
  %30 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %31 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %30, i32* %37, align 4
  %38 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %39 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %40 = call i32 @GPIO_PIORENA(%struct.mtk_gpio_softc* %39)
  %41 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %29
  %47 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %48 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %47, i32* %54, align 4
  br label %64

55:                                               ; preds = %29
  %56 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %57 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %67 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %68 = call i32 @GPIO_PIODIR(%struct.mtk_gpio_softc* %67)
  %69 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %66, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %76 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %75
  store i32 %84, i32* %82, align 4
  br label %96

85:                                               ; preds = %65
  %86 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %87 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %88 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %86
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %85, %74
  %97 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %98 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %99 = call i32 @GPIO_PIOPOL(%struct.mtk_gpio_softc* %98)
  %100 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %97, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %140

105:                                              ; preds = %96
  %106 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %107 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %105
  %118 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %119 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %120 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %118
  store i32 %127, i32* %125, align 4
  br label %139

128:                                              ; preds = %105
  %129 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %130 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %131 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %129
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %128, %117
  br label %140

140:                                              ; preds = %139, %96
  ret void
}

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PIORENA(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @GPIO_PIOFENA(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @GPIO_PIODIR(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @GPIO_PIOPOL(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
