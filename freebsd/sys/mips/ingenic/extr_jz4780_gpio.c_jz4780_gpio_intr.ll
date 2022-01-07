; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.jz4780_gpio_softc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@JZ_GPIO_FLAG = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"spurious interrupt %d\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @jz4780_gpio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jz4780_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.jz4780_gpio_softc*
  store %struct.jz4780_gpio_softc* %7, %struct.jz4780_gpio_softc** %3, align 8
  %8 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %9 = load i32, i32* @JZ_GPIO_FLAG, align 4
  %10 = call i32 @CSR_READ_4(%struct.jz4780_gpio_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %50, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %50

19:                                               ; preds = %14
  %20 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %21 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @intr_isrc_dispatch(i32* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %19
  %33 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %39 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %3, align 8
  %42 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @PIC_DISABLE_INTR(i32 %40, i32* %47)
  br label %49

49:                                               ; preds = %32, %19
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %11

55:                                               ; preds = %11
  %56 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @CSR_READ_4(%struct.jz4780_gpio_softc*, i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @PIC_DISABLE_INTR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
