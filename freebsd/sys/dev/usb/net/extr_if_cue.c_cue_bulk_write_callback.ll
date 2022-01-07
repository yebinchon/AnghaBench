; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cue_softc = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cue_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cue_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cue_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca [2 x i32], align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.cue_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.cue_softc* %11, %struct.cue_softc** %5, align 8
  %12 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %13 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %12, i32 0, i32 0
  %14 = call %struct.ifnet* @uether_getifp(i32* %13)
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %81 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %2
  %18 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %20 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %21 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %2, %17
  br label %23

23:                                               ; preds = %91, %22
  %24 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %27 = call i32 @IFQ_DRV_DEQUEUE(i32* %25, %struct.mbuf* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %95

31:                                               ; preds = %23
  %32 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MCLBYTES, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @MCLBYTES, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 2
  %50 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %44, i32 0, i32 %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %63 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %62, i32 0)
  store %struct.usb_page_cache* %63, %struct.usb_page_cache** %7, align 8
  %64 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %66 = call i32 @usbd_copy_in(%struct.usb_page_cache* %64, i32 0, i32* %65, i32 2)
  %67 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %67, i32 2, %struct.mbuf* %68, i32 0, i32 %72)
  %74 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %76 = call i32 @BPF_MTAP(%struct.ifnet* %74, %struct.mbuf* %75)
  %77 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %78 = call i32 @m_freem(%struct.mbuf* %77)
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %79)
  br label %95

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @usbd_errstr(i32 %82)
  %84 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %86 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %87 = call i32 @if_inc_counter(%struct.ifnet* %85, i32 %86, i32 1)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %93 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %92)
  br label %23

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %43, %30
  ret void
}

declare dso_local %struct.cue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

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
