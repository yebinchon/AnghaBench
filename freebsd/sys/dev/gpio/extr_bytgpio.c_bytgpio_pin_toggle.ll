; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bytgpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bytgpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bytgpio_softc* @device_get_softc(i32 %9)
  store %struct.bytgpio_softc* %10, %struct.bytgpio_softc** %6, align 8
  %11 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @bytgpio_valid_pin(%struct.bytgpio_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @bytgpio_pad_is_gpio(%struct.bytgpio_softc* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %17
  %25 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %26 = call i32 @BYTGPIO_LOCK(%struct.bytgpio_softc* %25)
  %27 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BYTGPIO_PAD_VAL, align 4
  %30 = call i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bytgpio_read_4(%struct.bytgpio_softc* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BYTGPIO_PAD_VAL_LEVEL, align 4
  %36 = xor i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @bytgpio_write_4(%struct.bytgpio_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %6, align 8
  %42 = call i32 @BYTGPIO_UNLOCK(%struct.bytgpio_softc* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %24, %22, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.bytgpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bytgpio_valid_pin(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @bytgpio_pad_is_gpio(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @BYTGPIO_LOCK(%struct.bytgpio_softc*) #1

declare dso_local i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc*, i32, i32) #1

declare dso_local i32 @bytgpio_read_4(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @bytgpio_write_4(%struct.bytgpio_softc*, i32, i32) #1

declare dso_local i32 @BYTGPIO_UNLOCK(%struct.bytgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
