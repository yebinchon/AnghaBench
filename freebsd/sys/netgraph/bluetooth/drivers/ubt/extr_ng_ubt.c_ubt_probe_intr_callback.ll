; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_probe_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_probe_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubt_hci_event = type { i32 }
%struct.usb_page_cache = type { i32 }

@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ng_ubt: interrupt transfer failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubt_probe_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubt_probe_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubt_hci_event*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.ubt_hci_event* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.ubt_hci_event* %9, %struct.ubt_hci_event** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %7, i32* null, i32* null, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %41 [
    i32 128, label %14
    i32 129, label %31
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ubt_hci_event*, %struct.ubt_hci_event** %5, align 8
  %17 = call i32 @UBT_HCI_EVENT_SIZE(%struct.ubt_hci_event* %16)
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.ubt_hci_event*, %struct.ubt_hci_event** %5, align 8
  %21 = call i32 @UBT_HCI_EVENT_SIZE(%struct.ubt_hci_event* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %23, i32 0)
  store %struct.usb_page_cache* %24, %struct.usb_page_cache** %6, align 8
  %25 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %26 = load %struct.ubt_hci_event*, %struct.ubt_hci_event** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @usbd_copy_out(%struct.usb_page_cache* %25, i32 0, %struct.ubt_hci_event* %26, i32 %27)
  %29 = load %struct.ubt_hci_event*, %struct.ubt_hci_event** %5, align 8
  %30 = call i32 @wakeup(%struct.ubt_hci_event* %29)
  br label %50

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %45, %31
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %33)
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %36)
  %38 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %35, i32 0, i32 %37)
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %39)
  br label %50

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @usbd_errstr(i32 %46)
  %48 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %32

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %32, %22
  ret void
}

declare dso_local %struct.ubt_hci_event* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @UBT_HCI_EVENT_SIZE(%struct.ubt_hci_event*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.ubt_hci_event*, i32) #1

declare dso_local i32 @wakeup(%struct.ubt_hci_event*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
