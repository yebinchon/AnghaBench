; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_udbp.c_udbp_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.udbp_softc = type { i32, i32*, i32, %struct.mbuf* }
%struct.mbuf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_page_cache = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"received package %d bytes\0A\00", align 1
@udbp_bulk_read_complete = common dso_local global i32 0, align 4
@UDBP_FLAG_READ_STALL = common dso_local global i32 0, align 4
@UDBP_T_RD_CS = common dso_local global i64 0, align 8
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @udbp_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udbp_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udbp_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.udbp_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.udbp_softc* %10, %struct.udbp_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %84 [
    i32 128, label %15
    i32 129, label %51
  ]

15:                                               ; preds = %2
  %16 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @MT_DATA, align 4
  %19 = call i32 @MGETHDR(%struct.mbuf* %16, i32 %17, i32 %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %52

23:                                               ; preds = %15
  %24 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = call i32 @MCLGET(%struct.mbuf* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = call i32 @m_freem(%struct.mbuf* %29)
  br label %52

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %38, i32 0)
  store %struct.usb_page_cache* %39, %struct.usb_page_cache** %6, align 8
  %40 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @usbd_copy_out(%struct.usb_page_cache* %40, i32 0, i32 %43, i32 %44)
  %46 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %47 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %48 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %47, i32 0, i32 3
  store %struct.mbuf* %46, %struct.mbuf** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %2, %31
  br label %52

52:                                               ; preds = %51, %28, %22
  %53 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %54 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %53, i32 0, i32 3
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %59 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ng_send_fn(i32 %60, i32* null, i32* @udbp_bulk_read_complete, i32* null, i32 0)
  br label %102

62:                                               ; preds = %52
  %63 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %64 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @UDBP_FLAG_READ_STALL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %71 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @UDBP_T_RD_CS, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usbd_transfer_start(i32 %75)
  br label %102

77:                                               ; preds = %62
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %79)
  %81 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %78, i32 0, i32 %80)
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %83 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %82)
  br label %102

84:                                               ; preds = %2
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* @UDBP_FLAG_READ_STALL, align 4
  %90 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %91 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.udbp_softc*, %struct.udbp_softc** %5, align 8
  %95 = getelementptr inbounds %struct.udbp_softc, %struct.udbp_softc* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @UDBP_T_RD_CS, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @usbd_transfer_start(i32 %99)
  br label %101

101:                                              ; preds = %88, %84
  br label %102

102:                                              ; preds = %101, %77, %69, %57
  ret void
}

declare dso_local %struct.udbp_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @ng_send_fn(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
