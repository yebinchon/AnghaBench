; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mtk_gpio_softc = type { i32 }

@GPIO_PIOINT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"spurious interrupt %d\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtk_gpio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mtk_gpio_softc*
  store %struct.mtk_gpio_softc* %7, %struct.mtk_gpio_softc** %3, align 8
  %8 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %9 = load i32, i32* @GPIO_PIOINT, align 4
  %10 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %12 = load i32, i32* @GPIO_PIOINT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @MTK_WRITE_4(%struct.mtk_gpio_softc* %11, i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %39

23:                                               ; preds = %18
  %24 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @PIC_INTR_ISRC(%struct.mtk_gpio_softc* %24, i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @intr_isrc_dispatch(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %23
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %45
}

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @MTK_WRITE_4(%struct.mtk_gpio_softc*, i32, i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32, i32) #1

declare dso_local i32 @PIC_INTR_ISRC(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
