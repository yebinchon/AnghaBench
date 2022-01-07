; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_blink_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_blink_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, i32, i32 }

@BWN_GPIO_CONTROL = common dso_local global i32 0, align 4
@bwn_led_blink_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bwn_led_blink_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_led_blink_next(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bwn_mac*
  store %struct.bwn_mac* %7, %struct.bwn_mac** %3, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 0
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %4, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %12 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %13 = call i32 @BWN_READ_2(%struct.bwn_mac* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @bwn_led_onoff(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %20 = load i32, i32* @BWN_GPIO_CONTROL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %19, i32 %20, i32 %21)
  %23 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %23, i32 0, i32 1
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @bwn_led_blink_end, align 4
  %29 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %30 = call i32 @callout_reset(i32* %24, i32 %27, i32 %28, %struct.bwn_mac* %29)
  ret void
}

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_led_onoff(i32, i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
