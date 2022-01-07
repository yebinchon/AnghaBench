; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.udav_softc = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@UDAV_FLAG_LINK = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@UDAV_MIN_FRAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @udav_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udav_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.udav_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.udav_softc* %13, %struct.udav_softc** %5, align 8
  %14 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %15 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %14, i32 0, i32 1
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %114 [
    i32 128, label %19
    i32 129, label %24
  ]

19:                                               ; preds = %2
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %23 = call i32 @if_inc_counter(%struct.ifnet* %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %2, %19
  br label %25

25:                                               ; preds = %124, %24
  %26 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %27 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UDAV_FLAG_LINK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %128

33:                                               ; preds = %25
  %34 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %37 = call i32 @IFQ_DRV_DEQUEUE(i32* %35, %struct.mbuf* %36)
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = icmp eq %struct.mbuf* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %128

41:                                               ; preds = %33
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MCLBYTES, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @MCLBYTES, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UDAV_MIN_FRAME_LEN, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i32, i32* @UDAV_MIN_FRAME_LEN, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %9, align 4
  br label %68

67:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %10, align 4
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %83 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %82, i32 0)
  store %struct.usb_page_cache* %83, %struct.usb_page_cache** %7, align 8
  %84 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %86 = call i32 @usbd_copy_in(%struct.usb_page_cache* %84, i32 0, i32* %85, i32 2)
  %87 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %87, i32 2, %struct.mbuf* %88, i32 0, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %68
  %97 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @usbd_frame_zero(%struct.usb_page_cache* %97, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %68
  %104 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %106 = call i32 @BPF_MTAP(%struct.ifnet* %104, %struct.mbuf* %105)
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = call i32 @m_freem(%struct.mbuf* %107)
  %109 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %109, i32 0, i32 %110)
  %112 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %113 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %112)
  br label %128

114:                                              ; preds = %2
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @usbd_errstr(i32 %115)
  %117 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %119 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %120 = call i32 @if_inc_counter(%struct.ifnet* %118, i32 %119, i32 1)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %126 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %125)
  br label %25

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %103, %40, %32
  ret void
}

declare dso_local %struct.udav_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_frame_zero(%struct.usb_page_cache*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
