; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_init.c_r92cu_init_tx_agg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/usb/extr_r92cu_init.c_r92cu_init_tx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_usb_softc = type { i32 }

@R92C_TDECTRL = common dso_local global i32 0, align 4
@R92C_TDECTRL_BLK_DESC_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92cu_init_tx_agg(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_usb_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %5)
  store %struct.rtwn_usb_softc* %6, %struct.rtwn_usb_softc** %3, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = load i32, i32* @R92C_TDECTRL, align 4
  %9 = call i32 @rtwn_read_4(%struct.rtwn_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @R92C_TDECTRL_BLK_DESC_NUM, align 4
  %12 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @RW(i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = load i32, i32* @R92C_TDECTRL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rtwn_write_4(%struct.rtwn_softc* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @RW(i32, i32, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
