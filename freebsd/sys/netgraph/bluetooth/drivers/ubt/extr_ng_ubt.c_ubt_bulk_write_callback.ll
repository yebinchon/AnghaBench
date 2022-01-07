; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubt_softc = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"sent %d bytes to bulk-out pipe\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ACL data queue is empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"bulk-out transfer has been started, len=%d\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"bulk-out transfer failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubt_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubt_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubt_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ubt_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ubt_softc* %10, %struct.ubt_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %65 [
    i32 128, label %15
    i32 129, label %24
  ]

15:                                               ; preds = %2
  %16 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_INFO(%struct.ubt_softc* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @UBT_STAT_BYTES_SENT(%struct.ubt_softc* %19, i32 %20)
  %22 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %23 = call i32 @UBT_STAT_PCKTS_SENT(%struct.ubt_softc* %22)
  br label %24

24:                                               ; preds = %2, %15
  br label %25

25:                                               ; preds = %69, %24
  %26 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %27 = call i32 @UBT_NG_LOCK(%struct.ubt_softc* %26)
  %28 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %28, i32 0, i32 0
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = call i32 @NG_BT_MBUFQ_DEQUEUE(i32* %29, %struct.mbuf* %30)
  %32 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %33 = call i32 @UBT_NG_UNLOCK(%struct.ubt_softc* %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = icmp eq %struct.mbuf* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %38 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_INFO(%struct.ubt_softc* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %79

39:                                               ; preds = %25
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %40, i32 0)
  store %struct.usb_page_cache* %41, %struct.usb_page_cache** %7, align 8
  %42 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %42, i32 0, %struct.mbuf* %43, i32 0, i32 %47)
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %49, i32 0, i32 %53)
  %55 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.ubt_softc*, i8*, ...) @UBT_INFO(%struct.ubt_softc* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = call i32 @NG_FREE_M(%struct.mbuf* %61)
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %63)
  br label %79

65:                                               ; preds = %2
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @usbd_errstr(i32 %71)
  %73 = call i32 @UBT_WARN(%struct.ubt_softc* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %75 = call i32 @UBT_STAT_OERROR(%struct.ubt_softc* %74)
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %76)
  br label %25

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %39, %36
  ret void
}

declare dso_local %struct.ubt_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @UBT_INFO(%struct.ubt_softc*, i8*, ...) #1

declare dso_local i32 @UBT_STAT_BYTES_SENT(%struct.ubt_softc*, i32) #1

declare dso_local i32 @UBT_STAT_PCKTS_SENT(%struct.ubt_softc*) #1

declare dso_local i32 @UBT_NG_LOCK(%struct.ubt_softc*) #1

declare dso_local i32 @NG_BT_MBUFQ_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @UBT_NG_UNLOCK(%struct.ubt_softc*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @UBT_WARN(%struct.ubt_softc*, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @UBT_STAT_OERROR(%struct.ubt_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
