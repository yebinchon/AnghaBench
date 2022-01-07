; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_init_edca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_init.c_r92c_init_edca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_SPEC_SIFS = common dso_local global i32 0, align 4
@R92C_MAC_SPEC_SIFS = common dso_local global i32 0, align 4
@R92C_SIFS_CCK = common dso_local global i32 0, align 4
@R92C_SIFS_OFDM = common dso_local global i32 0, align 4
@R92C_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@R92C_EDCA_BK_PARAM = common dso_local global i32 0, align 4
@R92C_EDCA_VI_PARAM = common dso_local global i32 0, align 4
@R92C_EDCA_VO_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92c_init_edca(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R92C_SPEC_SIFS, align 4
  %5 = call i32 @rtwn_write_2(%struct.rtwn_softc* %3, i32 %4, i32 4106)
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = load i32, i32* @R92C_MAC_SPEC_SIFS, align 4
  %8 = call i32 @rtwn_write_2(%struct.rtwn_softc* %6, i32 %7, i32 4106)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = load i32, i32* @R92C_SIFS_CCK, align 4
  %11 = call i32 @rtwn_write_2(%struct.rtwn_softc* %9, i32 %10, i32 4106)
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = load i32, i32* @R92C_SIFS_OFDM, align 4
  %14 = call i32 @rtwn_write_2(%struct.rtwn_softc* %12, i32 %13, i32 4106)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = load i32, i32* @R92C_EDCA_BE_PARAM, align 4
  %17 = call i32 @rtwn_write_4(%struct.rtwn_softc* %15, i32 %16, i32 6202411)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %19 = load i32, i32* @R92C_EDCA_BK_PARAM, align 4
  %20 = call i32 @rtwn_write_4(%struct.rtwn_softc* %18, i32 %19, i32 42063)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = load i32, i32* @R92C_EDCA_VI_PARAM, align 4
  %23 = call i32 @rtwn_write_4(%struct.rtwn_softc* %21, i32 %22, i32 6202148)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = load i32, i32* @R92C_EDCA_VO_PARAM, align 4
  %26 = call i32 @rtwn_write_4(%struct.rtwn_softc* %24, i32 %25, i32 3121702)
  ret void
}

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
