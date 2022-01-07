; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ure_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.ure_rxpkt = type { i32 }

@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@URE_RXPKT_LEN_MASK = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bulk read error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ure_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ure_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca %struct.ure_rxpkt, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.ure_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.ure_softc* %13, %struct.ure_softc** %5, align 8
  %14 = load %struct.ure_softc*, %struct.ure_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ure_softc, %struct.ure_softc* %14, i32 0, i32 0
  store %struct.usb_ether* %15, %struct.usb_ether** %6, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %17 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %16)
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %10, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %67 [
    i32 128, label %22
    i32 129, label %57
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %27 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %28 = call i32 @if_inc_counter(%struct.ifnet* %26, i32 %27, i32 1)
  br label %58

29:                                               ; preds = %22
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %30, i32 0)
  store %struct.usb_page_cache* %31, %struct.usb_page_cache** %8, align 8
  %32 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %33 = call i32 @usbd_copy_out(%struct.usb_page_cache* %32, i32 0, %struct.ure_rxpkt* %9, i32 4)
  %34 = getelementptr inbounds %struct.ure_rxpkt, %struct.ure_rxpkt* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32toh(i32 %35)
  %37 = load i32, i32* @URE_RXPKT_LEN_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @ETHER_CRC_LEN, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %50 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %51 = call i32 @if_inc_counter(%struct.ifnet* %49, i32 %50, i32 1)
  br label %58

52:                                               ; preds = %29
  %53 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %54 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @uether_rxbuf(%struct.usb_ether* %53, %struct.usb_page_cache* %54, i32 4, i32 %55)
  br label %57

57:                                               ; preds = %2, %52
  br label %58

58:                                               ; preds = %74, %57, %48, %25
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %60)
  %62 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %59, i32 0, i32 %61)
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %63)
  %65 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %66 = call i32 @uether_rxflush(%struct.usb_ether* %65)
  br label %78

67:                                               ; preds = %2
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @usbd_errstr(i32 %68)
  %70 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %76 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %75)
  br label %58

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %58
  ret void
}

declare dso_local %struct.ure_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.ure_rxpkt*, i32) #1

declare dso_local i32 @le32toh(i32) #1

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
