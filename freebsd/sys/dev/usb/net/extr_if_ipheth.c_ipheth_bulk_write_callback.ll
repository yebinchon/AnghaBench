; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ipheth_softc = type { %struct.mbuf**, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"transfer complete: %u bytes in %u frames\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IPHETH_TX_FRAMES_MAX = common dso_local global i64 0, align 8
@IPHETH_BUF_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ipheth_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipheth_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipheth_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ipheth_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ipheth_softc* %13, %struct.ipheth_softc** %5, align 8
  %14 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %14, i32 0, i32 1
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %10, i32* null, i32* %11, i32* null)
  %19 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %123 [
    i32 128, label %22
    i32 129, label %34
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %27 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %28 = call i32 @if_inc_counter(%struct.ifnet* %26, i32 %27, i32 1)
  %29 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %29, i32 0, i32 0
  %31 = load %struct.mbuf**, %struct.mbuf*** %30, align 8
  %32 = load i64, i64* @IPHETH_TX_FRAMES_MAX, align 8
  %33 = call i32 @ipheth_free_queue(%struct.mbuf** %31, i64 %32)
  br label %34

34:                                               ; preds = %2, %22
  br label %35

35:                                               ; preds = %138, %34
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %110, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @IPHETH_TX_FRAMES_MAX, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %113

40:                                               ; preds = %36
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = call i32 @IFQ_DRV_DEQUEUE(i32* %42, %struct.mbuf* %43)
  %45 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %113

48:                                               ; preds = %40
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @IPHETH_BUF_SIZE, align 8
  %52 = mul i64 %50, %51
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %49, i64 %52, i64 %53)
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %55, i64 %56)
  store %struct.usb_page_cache* %57, %struct.usb_page_cache** %7, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %59 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %60 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %59, i32 0, i32 0
  %61 = load %struct.mbuf**, %struct.mbuf*** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %61, i64 %62
  store %struct.mbuf* %58, %struct.mbuf** %63, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IPHETH_BUF_SIZE, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %48
  %71 = load i64, i64* @IPHETH_BUF_SIZE, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %48
  %76 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %76, i32 0, %struct.mbuf* %77, i32 0, i64 %81)
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @IPHETH_BUF_SIZE, align 8
  %86 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %83, i64 %84, i64 %85)
  %87 = load i64, i64* @IPHETH_BUF_SIZE, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %75
  %94 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %95 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IPHETH_BUF_SIZE, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %99, %103
  %105 = call i32 @usbd_frame_zero(%struct.usb_page_cache* %94, i64 %98, i64 %104)
  br label %106

106:                                              ; preds = %93, %75
  %107 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %109 = call i32 @BPF_MTAP(%struct.ifnet* %107, %struct.mbuf* %108)
  br label %110

110:                                              ; preds = %106
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %36

113:                                              ; preds = %47, %36
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %117, i64 %118)
  %120 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %121 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %120)
  br label %122

122:                                              ; preds = %116, %113
  br label %142

123:                                              ; preds = %2
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @usbd_errstr(i32 %124)
  %126 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.ipheth_softc*, %struct.ipheth_softc** %5, align 8
  %128 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %127, i32 0, i32 0
  %129 = load %struct.mbuf**, %struct.mbuf*** %128, align 8
  %130 = load i64, i64* @IPHETH_TX_FRAMES_MAX, align 8
  %131 = call i32 @ipheth_free_queue(%struct.mbuf** %129, i64 %130)
  %132 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %133 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %134 = call i32 @if_inc_counter(%struct.ifnet* %132, i32 %133, i32 1)
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %140 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %139)
  br label %35

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %122
  ret void
}

declare dso_local %struct.ipheth_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ipheth_free_queue(%struct.mbuf**, i64) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i64, i64) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i64) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i64) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i64, i64) #1

declare dso_local i32 @usbd_frame_zero(%struct.usb_page_cache*, i64, i64) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i64) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
