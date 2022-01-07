; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_led_blink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_led_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32, i32 }

@iwi_led_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, i32, i32)* @iwi_led_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_led_blink(%struct.iwi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %9 = call i32 @iwi_read_event(%struct.iwi_softc* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @iwi_toggle_event(i32 %16)
  %18 = call i32 @iwi_write_event(%struct.iwi_softc* %15, i32 %17)
  %19 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %23 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @iwi_led_off, align 4
  %28 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %29 = call i32 @callout_reset(i32* %25, i32 %26, i32 %27, %struct.iwi_softc* %28)
  ret void
}

declare dso_local i32 @iwi_read_event(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_write_event(%struct.iwi_softc*, i32) #1

declare dso_local i32 @iwi_toggle_event(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
