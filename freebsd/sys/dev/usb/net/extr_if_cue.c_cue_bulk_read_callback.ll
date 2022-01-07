; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cue_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }

@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bulk read error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cue_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cue_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cue_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.cue_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.cue_softc* %13, %struct.cue_softc** %5, align 8
  %14 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %15 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %14, i32 0, i32 0
  store %struct.usb_ether* %15, %struct.usb_ether** %6, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %17 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %16)
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %11, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %60 [
    i32 128, label %22
    i32 129, label %50
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 6
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %27 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %28 = call i32 @if_inc_counter(%struct.ifnet* %26, i32 %27, i32 1)
  br label %51

29:                                               ; preds = %22
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %30, i32 0)
  store %struct.usb_page_cache* %31, %struct.usb_page_cache** %8, align 8
  %32 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %34 = call i32 @usbd_copy_out(%struct.usb_page_cache* %32, i32 0, i32* %33, i32 2)
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 2
  store i32 %36, i32* %11, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @min(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %47 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @uether_rxbuf(%struct.usb_ether* %46, %struct.usb_page_cache* %47, i32 2, i32 %48)
  br label %50

50:                                               ; preds = %2, %29
  br label %51

51:                                               ; preds = %67, %50, %25
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %54 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %53)
  %55 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %52, i32 0, i32 %54)
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %56)
  %58 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %59 = call i32 @uether_rxflush(%struct.usb_ether* %58)
  br label %71

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @usbd_errstr(i32 %61)
  %63 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %69 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %68)
  br label %51

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %51
  ret void
}

declare dso_local %struct.cue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @uether_rxbuf(%struct.usb_ether*, %struct.usb_page_cache*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @uether_rxflush(%struct.usb_ether*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
