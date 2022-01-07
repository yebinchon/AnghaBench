; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_led.c_iwm_led_blink_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_led.c_iwm_led_blink_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i64, i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwm_led_blink_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_led_blink_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwm_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iwm_softc*
  store %struct.iwm_softc* %5, %struct.iwm_softc** %3, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %13 = call i64 @iwm_mvm_led_is_enabled(%struct.iwm_softc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %17 = call i32 @iwm_mvm_led_disable(%struct.iwm_softc* %16)
  br label %21

18:                                               ; preds = %11
  %19 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %20 = call i32 @iwm_mvm_led_enable(%struct.iwm_softc* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %22, i32 0, i32 1
  %24 = load i32, i32* @hz, align 4
  %25 = mul nsw i32 200, %24
  %26 = sdiv i32 %25, 1000
  %27 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %28 = call i32 @callout_reset(i32* %23, i32 %26, void (i8*)* @iwm_led_blink_timeout, %struct.iwm_softc* %27)
  br label %29

29:                                               ; preds = %21, %10
  ret void
}

declare dso_local i64 @iwm_mvm_led_is_enabled(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_led_disable(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_led_enable(%struct.iwm_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
