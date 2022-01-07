; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rue_softc = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@RUE_FLAG_LINK = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@RUE_MIN_FRAMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @rue_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rue_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.rue_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.rue_softc* %11, %struct.rue_softc** %5, align 8
  %12 = load %struct.rue_softc*, %struct.rue_softc** %5, align 8
  %13 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %12, i32 0, i32 1
  %14 = call %struct.ifnet* @uether_getifp(i32* %13)
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %87 [
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

23:                                               ; preds = %97, %22
  %24 = load %struct.rue_softc*, %struct.rue_softc** %5, align 8
  %25 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RUE_FLAG_LINK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %101

31:                                               ; preds = %23
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %35 = call i32 @IFQ_DRV_DEQUEUE(i32* %33, %struct.mbuf* %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %101

39:                                               ; preds = %31
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MCLBYTES, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @MCLBYTES, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %56, i32 0)
  store %struct.usb_page_cache* %57, %struct.usb_page_cache** %7, align 8
  %58 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %58, i32 0, %struct.mbuf* %59, i32 0, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @RUE_MIN_FRAMELEN, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %51
  %69 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @RUE_MIN_FRAMELEN, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 @usbd_frame_zero(%struct.usb_page_cache* %69, i32 %70, i32 %73)
  %75 = load i32, i32* @RUE_MIN_FRAMELEN, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %68, %51
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %77, i32 0, i32 %78)
  %80 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %82 = call i32 @BPF_MTAP(%struct.ifnet* %80, %struct.mbuf* %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %84 = call i32 @m_freem(%struct.mbuf* %83)
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %86 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %85)
  br label %101

87:                                               ; preds = %2
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @usbd_errstr(i32 %88)
  %90 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %92 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %93 = call i32 @if_inc_counter(%struct.ifnet* %91, i32 %92, i32 1)
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %99 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %98)
  br label %23

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %76, %38, %30
  ret void
}

declare dso_local %struct.rue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

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
