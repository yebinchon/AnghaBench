; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_bulk_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_bulk_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upgt_softc = type { i32*, i32 }
%struct.upgt_data = type { i32 }

@next = common dso_local global i32 0, align 4
@st_tx_pending = common dso_local global i32 0, align 4
@UPGT_BULK_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upgt_softc*, %struct.upgt_data*)* @upgt_bulk_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upgt_bulk_tx(%struct.upgt_softc* %0, %struct.upgt_data* %1) #0 {
  %3 = alloca %struct.upgt_softc*, align 8
  %4 = alloca %struct.upgt_data*, align 8
  store %struct.upgt_softc* %0, %struct.upgt_softc** %3, align 8
  store %struct.upgt_data* %1, %struct.upgt_data** %4, align 8
  %5 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %6 = call i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc* %5)
  %7 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %7, i32 0, i32 1
  %9 = load %struct.upgt_data*, %struct.upgt_data** %4, align 8
  %10 = load i32, i32* @next, align 4
  %11 = call i32 @STAILQ_INSERT_TAIL(i32* %8, %struct.upgt_data* %9, i32 %10)
  %12 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %13 = load i32, i32* @st_tx_pending, align 4
  %14 = call i32 @UPGT_STAT_INC(%struct.upgt_softc* %12, i32 %13)
  %15 = load %struct.upgt_softc*, %struct.upgt_softc** %3, align 8
  %16 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @UPGT_BULK_TX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usbd_transfer_start(i32 %20)
  ret void
}

declare dso_local i32 @UPGT_ASSERT_LOCKED(%struct.upgt_softc*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.upgt_data*, i32) #1

declare dso_local i32 @UPGT_STAT_INC(%struct.upgt_softc*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
