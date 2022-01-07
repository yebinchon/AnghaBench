; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chvgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIOCFG_GPIO = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIOCFG_GPO = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIOCFG_GPI = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @chvgpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_pin_getflags(i32 %0, i32 %1, i32* %2) #0 {
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
  br label %60

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %21 = call i32 @CHVGPIO_LOCK(%struct.chvgpio_softc* %20)
  %22 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOCFG_GPIO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOCFG_GPO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %18
  %35 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOCFG_GPIO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOCFG_GPI, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @chvgpio_read_pad_cfg1(%struct.chvgpio_softc* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %59 = call i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.chvgpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @chvgpio_valid_pin(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @CHVGPIO_LOCK(%struct.chvgpio_softc*) #1

declare dso_local i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @chvgpio_read_pad_cfg1(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
