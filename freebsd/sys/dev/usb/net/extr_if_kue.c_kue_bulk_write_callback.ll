; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.kue_softc = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @kue_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kue_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kue_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.kue_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.kue_softc* %13, %struct.kue_softc** %5, align 8
  %14 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %15 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %14, i32 0, i32 0
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %95 [
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

25:                                               ; preds = %105, %24
  %26 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = call i32 @IFQ_DRV_DEQUEUE(i32* %27, %struct.mbuf* %28)
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %109

33:                                               ; preds = %25
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MCLBYTES, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @MCLBYTES, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = srem i32 %52, 64
  %54 = sub nsw i32 64, %53
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %68 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %67, i32 0)
  store %struct.usb_page_cache* %68, %struct.usb_page_cache** %7, align 8
  %69 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %71 = call i32 @usbd_copy_in(%struct.usb_page_cache* %69, i32 0, i32* %70, i32 2)
  %72 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %72, i32 2, %struct.mbuf* %73, i32 0, i32 %77)
  %79 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 @usbd_frame_zero(%struct.usb_page_cache* %79, i32 %80, i32 %83)
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %85, i32 0, i32 %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %90 = call i32 @BPF_MTAP(%struct.ifnet* %88, %struct.mbuf* %89)
  %91 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %92 = call i32 @m_freem(%struct.mbuf* %91)
  %93 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %94 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %93)
  br label %109

95:                                               ; preds = %2
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @usbd_errstr(i32 %96)
  %98 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %100 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %101 = call i32 @if_inc_counter(%struct.ifnet* %99, i32 %100, i32 1)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %107 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %106)
  br label %25

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %45, %32
  ret void
}

declare dso_local %struct.kue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_frame_zero(%struct.usb_page_cache*, i32, i32) #1

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
