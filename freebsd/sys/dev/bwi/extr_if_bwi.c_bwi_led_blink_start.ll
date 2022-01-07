; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_blink_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_led_blink_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, i32, %struct.bwi_led* }
%struct.bwi_led = type { i32 }

@BWI_MAC_GPIO_CTRL = common dso_local global i32 0, align 4
@BWI_LED_F_SLOW = common dso_local global i32 0, align 4
@bwi_led_blink_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, i32, i32)* @bwi_led_blink_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_led_blink_start(%struct.bwi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_led*, align 8
  %8 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 3
  %11 = load %struct.bwi_led*, %struct.bwi_led** %10, align 8
  store %struct.bwi_led* %11, %struct.bwi_led** %7, align 8
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %13 = load i32, i32* @BWI_MAC_GPIO_CTRL, align 4
  %14 = call i32 @CSR_READ_2(%struct.bwi_softc* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.bwi_led*, %struct.bwi_led** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @bwi_led_onoff(%struct.bwi_led* %15, i32 %16, i32 1)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %19 = load i32, i32* @BWI_MAC_GPIO_CTRL, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.bwi_led*, %struct.bwi_led** %7, align 8
  %23 = getelementptr inbounds %struct.bwi_led, %struct.bwi_led* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BWI_LED_F_SLOW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @BWI_LED_SLOWDOWN(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @BWI_LED_SLOWDOWN(i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @bwi_led_blink_next, align 4
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %44 = call i32 @callout_reset(i32* %40, i32 %41, i32 %42, %struct.bwi_softc* %43)
  ret void
}

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @bwi_led_onoff(%struct.bwi_led*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @BWI_LED_SLOWDOWN(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
