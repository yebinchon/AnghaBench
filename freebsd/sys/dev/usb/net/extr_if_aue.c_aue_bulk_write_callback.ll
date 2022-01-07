; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.aue_softc = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"transfer of %d bytes complete\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@AUE_FLAG_LINK = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@AUE_FLAG_VER_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @aue_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aue_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.aue_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.aue_softc* %12, %struct.aue_softc** %5, align 8
  %13 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %14 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %13, i32 0, i32 1
  %15 = call %struct.ifnet* @uether_getifp(i32* %14)
  store %struct.ifnet* %15, %struct.ifnet** %6, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @usbd_xfer_status(%struct.usb_xfer* %16, i32* %10, i32* null, i32* null, i32* null)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %18, i32 0)
  store %struct.usb_page_cache* %19, %struct.usb_page_cache** %7, align 8
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %115 [
    i32 128, label %22
    i32 129, label %28
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %26 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %27 = call i32 @if_inc_counter(%struct.ifnet* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %2, %22
  br label %29

29:                                               ; preds = %125, %28
  %30 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %31 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AUE_FLAG_LINK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %129

37:                                               ; preds = %29
  %38 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = call i32 @IFQ_DRV_DEQUEUE(i32* %39, %struct.mbuf* %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %43 = icmp eq %struct.mbuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %129

45:                                               ; preds = %37
  %46 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MCLBYTES, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @MCLBYTES, align 4
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %59 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AUE_FLAG_VER_2, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %65, i32 0, i32 %69)
  %71 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %71, i32 0, %struct.mbuf* %72, i32 0, i32 %76)
  br label %107

78:                                               ; preds = %57
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 2
  %85 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %79, i32 0, i32 %84)
  %86 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 8
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %99 = call i32 @usbd_copy_in(%struct.usb_page_cache* %97, i32 0, i32* %98, i32 2)
  %100 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %102 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %100, i32 2, %struct.mbuf* %101, i32 0, i32 %105)
  br label %107

107:                                              ; preds = %78, %64
  %108 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %110 = call i32 @BPF_MTAP(%struct.ifnet* %108, %struct.mbuf* %109)
  %111 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %112 = call i32 @m_freem(%struct.mbuf* %111)
  %113 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %114 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %113)
  br label %129

115:                                              ; preds = %2
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @usbd_errstr(i32 %116)
  %118 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %120 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %121 = call i32 @if_inc_counter(%struct.ifnet* %119, i32 %120, i32 1)
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %127 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %126)
  br label %29

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %107, %44, %36
  ret void
}

declare dso_local %struct.aue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

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
