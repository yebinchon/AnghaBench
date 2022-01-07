; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chvgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHVGPIO_PAD_CFG0_GPIOTXSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @chvgpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.chvgpio_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.chvgpio_softc* @device_get_softc(i32 %8)
  store %struct.chvgpio_softc* %9, %struct.chvgpio_softc** %6, align 8
  %10 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @chvgpio_valid_pin(%struct.chvgpio_softc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %6, align 8
  %18 = call i32 @CHVGPIO_LOCK(%struct.chvgpio_softc* %17)
  %19 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @chvgpio_read_pad_cfg0(%struct.chvgpio_softc* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CHVGPIO_PAD_CFG0_GPIOTXSTATE, align 4
  %24 = xor i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @chvgpio_write_pad_cfg0(%struct.chvgpio_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %6, align 8
  %30 = call i32 @CHVGPIO_UNLOCK(%struct.chvgpio_softc* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %16, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
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
