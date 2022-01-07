; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_init.c_r88e_init_bb_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_init.c_r88e_init_bb_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88e_init_bb_common(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = call i32 @r92c_init_bb_common(%struct.rtwn_softc* %3)
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = call i32 @R92C_OFDM0_AGCCORE1(i32 0)
  %7 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %5, i32 %6, i32 1767191586)
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = call i32 @rtwn_delay(%struct.rtwn_softc* %8, i32 1)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = call i32 @R92C_OFDM0_AGCCORE1(i32 0)
  %12 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %10, i32 %11, i32 1767191584)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = call i32 @rtwn_delay(%struct.rtwn_softc* %13, i32 1)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = call i32 @r88e_crystalcap_write(%struct.rtwn_softc* %15)
  ret void
}

declare dso_local i32 @r92c_init_bb_common(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R92C_OFDM0_AGCCORE1(i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @r88e_crystalcap_write(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
