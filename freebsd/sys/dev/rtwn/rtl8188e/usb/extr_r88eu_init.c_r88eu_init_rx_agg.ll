; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/usb/extr_r88eu_init.c_r88eu_init_rx_agg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/usb/extr_r88eu_init.c_r88eu_init_rx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_TRXDMA_CTRL = common dso_local global i32 0, align 4
@R92C_TRXDMA_CTRL_RXDMA_AGG_EN = common dso_local global i32 0, align 4
@R92C_RXDMA_AGG_PG_TH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88eu_init_rx_agg(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R92C_TRXDMA_CTRL, align 4
  %5 = load i32, i32* @R92C_TRXDMA_CTRL_RXDMA_AGG_EN, align 4
  %6 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %3, i32 %4, i32 0, i32 %5)
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = load i64, i64* @R92C_RXDMA_AGG_PG_TH, align 8
  %9 = call i32 @rtwn_write_1(%struct.rtwn_softc* %7, i64 %8, i32 48)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = load i64, i64* @R92C_RXDMA_AGG_PG_TH, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @rtwn_write_1(%struct.rtwn_softc* %10, i64 %12, i32 4)
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
