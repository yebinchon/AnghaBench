; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.urtw_data = type { i32*, i32* }
%struct.urtw_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, %struct.urtw_data*)* @urtw_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_txeof(%struct.usb_xfer* %0, %struct.urtw_data* %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.urtw_data*, align 8
  %5 = alloca %struct.urtw_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store %struct.urtw_data* %1, %struct.urtw_data** %4, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call %struct.urtw_softc* @usbd_xfer_softc(%struct.usb_xfer* %6)
  store %struct.urtw_softc* %7, %struct.urtw_softc** %5, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %9 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %8)
  %10 = load %struct.urtw_data*, %struct.urtw_data** %4, align 8
  %11 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.urtw_data*, %struct.urtw_data** %4, align 8
  %16 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.urtw_data*, %struct.urtw_data** %4, align 8
  %19 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ieee80211_tx_complete(i32* %17, i32* %20, i32 0)
  %22 = load %struct.urtw_data*, %struct.urtw_data** %4, align 8
  %23 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.urtw_data*, %struct.urtw_data** %4, align 8
  %25 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %28 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local %struct.urtw_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i32 @ieee80211_tx_complete(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
