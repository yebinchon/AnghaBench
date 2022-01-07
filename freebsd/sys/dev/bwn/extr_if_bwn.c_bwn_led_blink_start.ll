; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_blink_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_blink_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, i32, i32, %struct.bwn_led* }
%struct.bwn_led = type { i32 }

@BWN_GPIO_CONTROL = common dso_local global i32 0, align 4
@BWN_LED_F_SLOW = common dso_local global i32 0, align 4
@bwn_led_blink_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i32)* @bwn_led_blink_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_led_blink_start(%struct.bwn_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwn_softc*, align 8
  %8 = alloca %struct.bwn_led*, align 8
  %9 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  store %struct.bwn_softc* %12, %struct.bwn_softc** %7, align 8
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %14 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %13, i32 0, i32 3
  %15 = load %struct.bwn_led*, %struct.bwn_led** %14, align 8
  store %struct.bwn_led* %15, %struct.bwn_led** %8, align 8
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %18 = call i32 @BWN_READ_2(%struct.bwn_mac* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.bwn_led*, %struct.bwn_led** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @bwn_led_onoff(%struct.bwn_led* %19, i32 %20, i32 1)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %23 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %22, i32 %23, i32 %24)
  %26 = load %struct.bwn_led*, %struct.bwn_led** %8, align 8
  %27 = getelementptr inbounds %struct.bwn_led, %struct.bwn_led* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BWN_LED_F_SLOW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @BWN_LED_SLOWDOWN(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BWN_LED_SLOWDOWN(i32 %35)
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %39 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %42 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %44 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @bwn_led_blink_next, align 4
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %48 = call i32 @callout_reset(i32* %44, i32 %45, i32 %46, %struct.bwn_mac* %47)
  ret void
}

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_led_onoff(%struct.bwn_led*, i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_LED_SLOWDOWN(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
