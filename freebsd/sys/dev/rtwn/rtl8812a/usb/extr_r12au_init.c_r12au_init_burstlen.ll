; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_init_burstlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_init_burstlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R12A_DMA_MODE = common dso_local global i32 0, align 4
@R12A_BURST_CNT = common dso_local global i32 0, align 4
@R92C_TYPE_ID = common dso_local global i64 0, align 8
@R12A_RXDMA_PRO = common dso_local global i32 0, align 4
@R12A_BURST_SZ_M = common dso_local global i32 0, align 4
@R12A_BURST_SZ = common dso_local global i32 0, align 4
@R12A_BURST_SZ_USB3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12au_init_burstlen(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R12A_DMA_MODE, align 4
  %5 = load i32, i32* @R12A_BURST_CNT, align 4
  %6 = call i32 @SM(i32 %5, i32 3)
  %7 = or i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = load i64, i64* @R92C_TYPE_ID, align 8
  %10 = add nsw i64 %9, 3
  %11 = call i32 @rtwn_read_1(%struct.rtwn_softc* %8, i64 %10)
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = call i32 @r12au_init_burstlen_usb2(%struct.rtwn_softc* %15)
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %19 = load i32, i32* @R12A_RXDMA_PRO, align 4
  %20 = load i32, i32* @R12A_BURST_SZ_M, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @R12A_BURST_SZ, align 4
  %23 = load i32, i32* @R12A_BURST_SZ_USB3, align 4
  %24 = call i32 @SM(i32 %22, i32 %23)
  %25 = or i32 %21, %24
  %26 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %18, i32 %19, i32 %20, i32 %25)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %27, i32 61448, i32 24, i32 0)
  br label %29

29:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @r12au_init_burstlen_usb2(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
