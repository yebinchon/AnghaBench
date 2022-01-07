; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ifnet_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_ifnet_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uhso_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"status %d, actlen=%d\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhso_ifnet_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_ifnet_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhso_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uhso_softc* %11, %struct.uhso_softc** %5, align 8
  %12 = load %struct.uhso_softc*, %struct.uhso_softc** %5, align 8
  %13 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @usbd_xfer_status(%struct.usb_xfer* %15, i32* %9, i32* null, i32* null, i32* null)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call i32 @USB_GET_STATE(%struct.usb_xfer* %21)
  switch i32 %22, label %82 [
    i32 128, label %23
    i32 129, label %33
  ]

23:                                               ; preds = %2
  %24 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %25 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %26 = call i32 @if_inc_counter(%struct.ifnet* %24, i32 %25, i32 1)
  %27 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %2, %23
  br label %34

34:                                               ; preds = %90, %33
  %35 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = call i32 @IFQ_DRV_DEQUEUE(i32* %36, %struct.mbuf* %37)
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %93

42:                                               ; preds = %34
  %43 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MCLBYTES, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i32, i32* @MCLBYTES, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %42
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %60, i32 0, i32 %64)
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %67 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %66, i32 0)
  store %struct.usb_page_cache* %67, %struct.usb_page_cache** %7, align 8
  %68 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %68, i32 0, %struct.mbuf* %69, i32 0, i32 %73)
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %76 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %75)
  %77 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %79 = call i32 @BPF_MTAP(%struct.ifnet* %77, %struct.mbuf* %78)
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = call i32 @m_freem(%struct.mbuf* %80)
  br label %93

82:                                               ; preds = %2
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @usbd_errstr(i32 %83)
  %85 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %93

90:                                               ; preds = %82
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %91)
  br label %34

93:                                               ; preds = %89, %59, %41
  ret void
}

declare dso_local %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
