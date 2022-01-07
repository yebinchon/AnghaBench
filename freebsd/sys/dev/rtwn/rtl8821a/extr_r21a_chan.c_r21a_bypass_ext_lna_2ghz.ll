; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_chan.c_r21a_bypass_ext_lna_2ghz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_chan.c_r21a_bypass_ext_lna_2ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r21a_bypass_ext_lna_2ghz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r21a_bypass_ext_lna_2ghz(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = call i32 @R12A_RFE_INV(i32 0)
  %5 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %3, i32 %4, i32 1048576, i32 0)
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = call i32 @R12A_RFE_INV(i32 0)
  %8 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %6, i32 %7, i32 4194304, i32 0)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = call i32 @R12A_RFE_PINMUX(i32 0)
  %11 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %9, i32 %10, i32 0, i32 7)
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = call i32 @R12A_RFE_PINMUX(i32 0)
  %14 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %12, i32 %13, i32 0, i32 1792)
  ret void
}

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R12A_RFE_INV(i32) #1

declare dso_local i32 @R12A_RFE_PINMUX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
