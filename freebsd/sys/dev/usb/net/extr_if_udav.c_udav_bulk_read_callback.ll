; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.udav_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.udav_rxpkt = type { i32, i32 }

@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@UDAV_RSR_LCS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@UDAV_RSR_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bulk read error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @udav_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udav_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udav_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca %struct.udav_rxpkt, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.udav_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.udav_softc* %13, %struct.udav_softc** %5, align 8
  %14 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %15 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %14, i32 0, i32 0
  store %struct.usb_ether* %15, %struct.usb_ether** %6, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %17 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %16)
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %11, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %84 [
    i32 128, label %22
    i32 129, label %74
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @ETHER_CRC_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 8, %25
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %32 = call i32 @if_inc_counter(%struct.ifnet* %30, i32 %31, i32 1)
  br label %75

33:                                               ; preds = %22
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %35 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %34, i32 0)
  store %struct.usb_page_cache* %35, %struct.usb_page_cache** %8, align 8
  %36 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %37 = call i32 @usbd_copy_out(%struct.usb_page_cache* %36, i32 0, %struct.udav_rxpkt* %9, i32 8)
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.udav_rxpkt, %struct.udav_rxpkt* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16toh(i32 %44)
  %46 = call i32 @min(i32 %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @ETHER_CRC_LEN, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = getelementptr inbounds %struct.udav_rxpkt, %struct.udav_rxpkt* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UDAV_RSR_LCS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %57 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %58 = call i32 @if_inc_counter(%struct.ifnet* %56, i32 %57, i32 1)
  br label %75

59:                                               ; preds = %33
  %60 = getelementptr inbounds %struct.udav_rxpkt, %struct.udav_rxpkt* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UDAV_RSR_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %67 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %68 = call i32 @if_inc_counter(%struct.ifnet* %66, i32 %67, i32 1)
  br label %75

69:                                               ; preds = %59
  %70 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %71 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @uether_rxbuf(%struct.usb_ether* %70, %struct.usb_page_cache* %71, i32 8, i32 %72)
  br label %74

74:                                               ; preds = %2, %69
  br label %75

75:                                               ; preds = %91, %74, %65, %55, %29
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %78 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %77)
  %79 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %76, i32 0, i32 %78)
  %80 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %81 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %80)
  %82 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %83 = call i32 @uether_rxflush(%struct.usb_ether* %82)
  br label %95

84:                                               ; preds = %2
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @usbd_errstr(i32 %85)
  %87 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %93 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %92)
  br label %75

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %75
  ret void
}

declare dso_local %struct.udav_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.udav_rxpkt*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

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
