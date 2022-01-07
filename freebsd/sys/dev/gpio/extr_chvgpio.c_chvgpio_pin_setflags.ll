; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chvgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIOCFG_GPI = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIOCFG_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @chvgpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.chvgpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.chvgpio_softc* @device_get_softc(i32 %11)
  store %struct.chvgpio_softc* %12, %struct.chvgpio_softc** %8, align 8
  %13 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @chvgpio_valid_pin(%struct.chvgpio_softc* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %21 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %30
  %39 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %40 = call i32 @CHVGPIO_LOCK(%struct.chvgpio_softc* %39)
  %41 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOCFG_GPI, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOCFG_GPO, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @chvgpio_write_pad_cfg0(%struct.chvgpio_softc* %62, i32 %63, i32 %64)
  %66 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %8, align 8
  %67 = call i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %61, %36, %28, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.chvgpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @chvgpio_valid_pin(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @CHVGPIO_LOCK(%struct.chvgpio_softc*) #1

declare dso_local i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc*, i32) #1

declare dso_local i32 @chvgpio_write_pad_cfg0(%struct.chvgpio_softc*, i32, i32) #1

declare dso_local i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
