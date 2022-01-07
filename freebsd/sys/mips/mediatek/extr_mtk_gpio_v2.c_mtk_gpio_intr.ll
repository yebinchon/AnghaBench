; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mtk_gpio_softc = type { i32 }

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
  %9 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %10 = call i32 @GPIO_PIOINT(%struct.mtk_gpio_softc* %9)
  %11 = call i32 @MTK_READ_4(%struct.mtk_gpio_softc* %8, i32 %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %36

20:                                               ; preds = %15
  %21 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @PIC_INTR_ISRC(%struct.mtk_gpio_softc* %21, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @intr_isrc_dispatch(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %42
}

declare dso_local i32 @MTK_READ_4(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @GPIO_PIOINT(%struct.mtk_gpio_softc*) #1

declare dso_local i64 @intr_isrc_dispatch(i32, i32) #1

declare dso_local i32 @PIC_INTR_ISRC(%struct.mtk_gpio_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
