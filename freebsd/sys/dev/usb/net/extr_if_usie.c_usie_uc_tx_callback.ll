; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_uc_tx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_usie.c_usie_uc_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ucom_softc = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USIE_BUFSIZE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @usie_uc_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usie_uc_tx_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucom_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ucom_softc* %10, %struct.ucom_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @USB_GET_STATE(%struct.usb_xfer* %11)
  switch i32 %12, label %54 [
    i32 128, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %2, %2
  br label %14

14:                                               ; preds = %58, %13
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %15, i32 0)
  store %struct.usb_page_cache* %16, %struct.usb_page_cache** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call %struct.mbuf* @usbd_xfer_get_priv(%struct.usb_xfer* %17)
  store %struct.mbuf* %18, %struct.mbuf** %8, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %20 = icmp ne %struct.mbuf* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %22, i32 0, %struct.mbuf* %23, i32 0, i32 %27)
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %29, i32 0, i32 %33)
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = call i32 @usbd_xfer_set_priv(%struct.usb_xfer* %35, i32* null)
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %38 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %37)
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = call i32 @m_freem(%struct.mbuf* %39)
  br label %62

41:                                               ; preds = %14
  %42 = load %struct.ucom_softc*, %struct.ucom_softc** %5, align 8
  %43 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %44 = load i32, i32* @USIE_BUFSIZE, align 4
  %45 = call i32 @ucom_get_data(%struct.ucom_softc* %42, %struct.usb_page_cache* %43, i32 0, i32 %44, i32* %7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %48, i32 0, i32 %49)
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %51)
  br label %53

53:                                               ; preds = %47, %41
  br label %62

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %59)
  br label %14

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53, %21
  ret void
}

declare dso_local %struct.ucom_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local %struct.mbuf* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_priv(%struct.usb_xfer*, i32*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ucom_get_data(%struct.ucom_softc*, %struct.usb_page_cache*, i32, i32, i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
