; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_led.c_r88e_set_led.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_led.c_r88e_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@RTWN_LED_LINK = common dso_local global i32 0, align 4
@R92C_LEDCFG2 = common dso_local global i32 0, align 4
@R92C_LEDCFG0_DIS = common dso_local global i32 0, align 4
@R92C_MAC_PINMUX_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88e_set_led(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RTWN_LED_LINK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %15 = load i32, i32* @R92C_LEDCFG2, align 4
  %16 = load i32, i32* @R92C_LEDCFG0_DIS, align 4
  %17 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %14, i32 %15, i32 111, i32 %16)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %19 = load i32, i32* @R92C_MAC_PINMUX_CFG, align 4
  %20 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %18, i32 %19, i32 1, i32 0)
  br label %25

21:                                               ; preds = %10
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %23 = load i32, i32* @R92C_LEDCFG2, align 4
  %24 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %22, i32 %23, i32 15, i32 96)
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %3
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
