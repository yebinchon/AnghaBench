; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_init_burstlen_usb2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_init.c_r12au_init_burstlen_usb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R12A_DMA_MODE = common dso_local global i32 0, align 4
@R12A_BURST_CNT = common dso_local global i32 0, align 4
@R92C_USB_INFO = common dso_local global i32 0, align 4
@R12A_RXDMA_PRO = common dso_local global i32 0, align 4
@R12A_BURST_SZ_M = common dso_local global i32 0, align 4
@R12A_BURST_SZ = common dso_local global i32 0, align 4
@R12A_BURST_SZ_USB2 = common dso_local global i32 0, align 4
@R12A_BURST_SZ_USB1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12au_init_burstlen_usb2(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R12A_DMA_MODE, align 4
  %5 = load i32, i32* @R12A_BURST_CNT, align 4
  %6 = call i32 @SM(i32 %5, i32 3)
  %7 = or i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = load i32, i32* @R92C_USB_INFO, align 4
  %10 = call i32 @rtwn_read_1(%struct.rtwn_softc* %8, i32 %9)
  %11 = and i32 %10, 48
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = load i32, i32* @R12A_RXDMA_PRO, align 4
  %16 = load i32, i32* @R12A_BURST_SZ_M, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @R12A_BURST_SZ, align 4
  %19 = load i32, i32* @R12A_BURST_SZ_USB2, align 4
  %20 = call i32 @SM(i32 %18, i32 %19)
  %21 = or i32 %17, %20
  %22 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %14, i32 %15, i32 %16, i32 %21)
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %25 = load i32, i32* @R12A_RXDMA_PRO, align 4
  %26 = load i32, i32* @R12A_BURST_SZ_M, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @R12A_BURST_SZ, align 4
  %29 = load i32, i32* @R12A_BURST_SZ_USB1, align 4
  %30 = call i32 @SM(i32 %28, i32 %29)
  %31 = or i32 %27, %30
  %32 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %24, i32 %25, i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
