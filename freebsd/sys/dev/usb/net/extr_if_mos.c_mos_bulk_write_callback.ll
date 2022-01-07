; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.mos_softc = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"transfer of complete\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"usb error on tx: %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @mos_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mos_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.mos_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.mos_softc* %10, %struct.mos_softc** %5, align 8
  %11 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %12 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %11, i32 0, i32 0
  %13 = call %struct.ifnet* @uether_getifp(i32* %12)
  store %struct.ifnet* %13, %struct.ifnet** %6, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @USB_GET_STATE(%struct.usb_xfer* %14)
  switch i32 %15, label %56 [
    i32 128, label %16
    i32 129, label %21
  ]

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %19 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %20 = call i32 @if_inc_counter(%struct.ifnet* %18, i32 %19, i32 1)
  br label %21

21:                                               ; preds = %2, %16
  br label %22

22:                                               ; preds = %66, %21
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %26 = call i32 @IFQ_DRV_DEQUEUE(i32* %24, %struct.mbuf* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %70

30:                                               ; preds = %22
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %31, i32 0)
  store %struct.usb_page_cache* %32, %struct.usb_page_cache** %7, align 8
  %33 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %33, i32 0, %struct.mbuf* %34, i32 0, i32 %38)
  %40 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %40, i32 0, i32 %44)
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = call i32 @BPF_MTAP(%struct.ifnet* %46, %struct.mbuf* %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %50 = call i32 @m_freem(%struct.mbuf* %49)
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %54 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %55 = call i32 @if_inc_counter(%struct.ifnet* %53, i32 %54, i32 1)
  br label %70

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @usbd_errstr(i32 %57)
  %59 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %61 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %62 = call i32 @if_inc_counter(%struct.ifnet* %60, i32 %61, i32 1)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %68 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %67)
  br label %22

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %30, %29
  ret void
}

declare dso_local %struct.mos_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @MOS_DPRINTFN(i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
