; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_init_ampdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_init_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i32 }

@R92C_RXDMA_STATUS = common dso_local global i32 0, align 4
@R12A_AMPDU_MAX_TIME = common dso_local global i32 0, align 4
@R12A_AMPDU_MAX_LENGTH = common dso_local global i32 0, align 4
@R92C_USTIME_TSF = common dso_local global i32 0, align 4
@R92C_USTIME_EDCA = common dso_local global i32 0, align 4
@R12A_HT_SINGLE_AMPDU = common dso_local global i32 0, align 4
@R12A_HT_SINGLE_AMPDU_PKT_ENA = common dso_local global i32 0, align 4
@R92C_RX_PKT_LIMIT = common dso_local global i32 0, align 4
@R92C_PIFS = common dso_local global i32 0, align 4
@R92C_MAX_AGGR_NUM = common dso_local global i32 0, align 4
@R92C_RSV_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12au_init_ampdu(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 0
  %6 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  store %struct.r12a_softc* %6, %struct.r12a_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = call i32 @rtwn_write_1(%struct.rtwn_softc* %7, i32 61520, i32 1)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = load i32, i32* @R92C_RXDMA_STATUS, align 4
  %11 = call i32 @rtwn_write_2(%struct.rtwn_softc* %9, i32 %10, i32 29696)
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = load i32, i32* @R92C_RXDMA_STATUS, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @rtwn_write_1(%struct.rtwn_softc* %12, i32 %14, i32 245)
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = load i32, i32* @R12A_AMPDU_MAX_TIME, align 4
  %18 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %19 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rtwn_write_1(%struct.rtwn_softc* %16, i32 %17, i32 %20)
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = load i32, i32* @R12A_AMPDU_MAX_LENGTH, align 4
  %24 = call i32 @rtwn_write_4(%struct.rtwn_softc* %22, i32 %23, i32 -1)
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = load i32, i32* @R92C_USTIME_TSF, align 4
  %27 = call i32 @rtwn_write_1(%struct.rtwn_softc* %25, i32 %26, i32 80)
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %29 = load i32, i32* @R92C_USTIME_EDCA, align 4
  %30 = call i32 @rtwn_write_1(%struct.rtwn_softc* %28, i32 %29, i32 80)
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %32 = call i32 @rtwn_r12a_init_burstlen(%struct.rtwn_softc* %31)
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %34 = load i32, i32* @R12A_HT_SINGLE_AMPDU, align 4
  %35 = load i32, i32* @R12A_HT_SINGLE_AMPDU_PKT_ENA, align 4
  %36 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %33, i32 %34, i32 0, i32 %35)
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %38 = load i32, i32* @R92C_RX_PKT_LIMIT, align 4
  %39 = call i32 @rtwn_write_1(%struct.rtwn_softc* %37, i32 %38, i32 24)
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %41 = load i32, i32* @R92C_PIFS, align 4
  %42 = call i32 @rtwn_write_1(%struct.rtwn_softc* %40, i32 %41, i32 0)
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %44 = load i32, i32* @R92C_MAX_AGGR_NUM, align 4
  %45 = call i32 @rtwn_write_2(%struct.rtwn_softc* %43, i32 %44, i32 7967)
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %47 = call i32 @rtwn_r12a_init_ampdu_fwhw(%struct.rtwn_softc* %46)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %49 = load i32, i32* @R92C_RSV_CTRL, align 4
  %50 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %48, i32 %49, i32 0, i32 96)
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %52 = call i32 @r12au_arfb_init(%struct.rtwn_softc* %51)
  ret void
}

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_r12a_init_burstlen(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_r12a_init_ampdu_fwhw(%struct.rtwn_softc*) #1

declare dso_local i32 @r12au_arfb_init(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
