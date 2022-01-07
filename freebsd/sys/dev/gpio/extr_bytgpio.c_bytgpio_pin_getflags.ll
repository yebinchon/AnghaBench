; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL_I_OUTPUT_ENABLED = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL_I_INPUT_ENABLED = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @bytgpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_pin_getflags(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bytgpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bytgpio_softc* @device_get_softc(i32 %11)
  store %struct.bytgpio_softc* %12, %struct.bytgpio_softc** %8, align 8
  %13 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @bytgpio_valid_pin(%struct.bytgpio_softc* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bytgpio_pad_is_gpio(%struct.bytgpio_softc* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %28 = call i32 @BYTGPIO_LOCK(%struct.bytgpio_softc* %27)
  %29 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BYTGPIO_PAD_VAL, align 4
  %32 = call i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @bytgpio_read_4(%struct.bytgpio_softc* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @BYTGPIO_PAD_VAL_I_OUTPUT_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %56

45:                                               ; preds = %26
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @BYTGPIO_PAD_VAL_I_INPUT_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %58 = call i32 @BYTGPIO_UNLOCK(%struct.bytgpio_softc* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %25, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.bytgpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bytgpio_valid_pin(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @bytgpio_pad_is_gpio(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @BYTGPIO_LOCK(%struct.bytgpio_softc*) #1

declare dso_local i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc*, i32, i32) #1

declare dso_local i32 @bytgpio_read_4(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @BYTGPIO_UNLOCK(%struct.bytgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
