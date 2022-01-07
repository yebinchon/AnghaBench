; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_bulk_tx_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_bulk_tx_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.urtw_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @urtw_bulk_tx_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_bulk_tx_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urtw_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i8*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.urtw_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.urtw_softc* %9, %struct.urtw_softc** %5, align 8
  %10 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %11 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %10, i32 0, i32 1
  store %struct.ieee80211com* %11, %struct.ieee80211com** %6, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i8* @usbd_xfer_get_frame_buffer(%struct.usb_xfer* %12, i32 0)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %15 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %14)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %31 [
    i32 128, label %18
    i32 129, label %21
  ]

18:                                               ; preds = %2
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @urtw_txstatus_eof(%struct.usb_xfer* %19)
  br label %21

21:                                               ; preds = %2, %18
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %25 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i8* %23, i32* %25, i32 4)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %28 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %27, i32 0, i32 4)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %29)
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %36)
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @counter_u64_add(i32 %40, i32 1)
  br label %22

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %22
  ret void
}

declare dso_local %struct.urtw_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(%struct.usb_xfer*, i32) #1

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @urtw_txstatus_eof(%struct.usb_xfer*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
