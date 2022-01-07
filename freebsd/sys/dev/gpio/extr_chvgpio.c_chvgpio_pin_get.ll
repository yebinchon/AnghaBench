; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chvgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIORXSTATE = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @chvgpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.chvgpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.chvgpio_softc* @device_get_softc(i32 %10)
  store %struct.chvgpio_softc* %11, %struct.chvgpio_softc** %8, align 8
  %12 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @chvgpio_valid_pin(%struct.chvgpio_softc* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %20 = call i32 @CHVGPIO_LOCK(%struct.chvgpio_softc* %19)
  %21 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIORXSTATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @GPIO_PIN_LOW, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %36 = call i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.chvgpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @chvgpio_valid_pin(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @CHVGPIO_LOCK(%struct.chvgpio_softc*) #1

declare dso_local i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
