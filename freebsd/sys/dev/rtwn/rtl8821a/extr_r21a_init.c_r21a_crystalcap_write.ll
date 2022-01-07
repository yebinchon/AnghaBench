; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_init.c_r21a_crystalcap_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_init.c_r21a_crystalcap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i32 }

@R92C_MAC_PHY_CTRL = common dso_local global i32 0, align 4
@R21A_MAC_PHY_CRYSTALCAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r21a_crystalcap_write(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r12a_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 0
  %8 = load %struct.r12a_softc*, %struct.r12a_softc** %7, align 8
  store %struct.r12a_softc* %8, %struct.r12a_softc** %3, align 8
  %9 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %10 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 63
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = load i32, i32* @R92C_MAC_PHY_CTRL, align 4
  %15 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @R21A_MAC_PHY_CRYSTALCAP, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 6
  %21 = or i32 %18, %20
  %22 = call i32 @RW(i32 %16, i32 %17, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %24 = load i32, i32* @R92C_MAC_PHY_CTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
