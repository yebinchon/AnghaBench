; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/usb/extr_r92eu_init.c_r92eu_init_rx_agg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/usb/extr_r92eu_init.c_r92eu_init_rx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92e_softc* }
%struct.r92e_softc = type { i32, i32 }

@R12A_RXDMA_PRO = common dso_local global i32 0, align 4
@R92C_RXDMA_AGG_PG_TH = common dso_local global i32 0, align 4
@R92C_TRXDMA_CTRL = common dso_local global i32 0, align 4
@R92C_TRXDMA_CTRL_RXDMA_AGG_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92eu_init_rx_agg(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92e_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 0
  %6 = load %struct.r92e_softc*, %struct.r92e_softc** %5, align 8
  store %struct.r92e_softc* %6, %struct.r92e_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = load i32, i32* @R12A_RXDMA_PRO, align 4
  %9 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %7, i32 %8, i32 32, i32 30)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = load i32, i32* @R92C_RXDMA_AGG_PG_TH, align 4
  %12 = load %struct.r92e_softc*, %struct.r92e_softc** %3, align 8
  %13 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.r92e_softc*, %struct.r92e_softc** %3, align 8
  %16 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 8
  %19 = or i32 %14, %18
  %20 = call i32 @rtwn_write_4(%struct.rtwn_softc* %10, i32 %11, i32 %19)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = load i32, i32* @R92C_TRXDMA_CTRL, align 4
  %23 = load i32, i32* @R92C_TRXDMA_CTRL_RXDMA_AGG_EN, align 4
  %24 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %21, i32 %22, i32 0, i32 %23)
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
