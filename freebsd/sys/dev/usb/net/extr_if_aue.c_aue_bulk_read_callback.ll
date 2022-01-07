; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.aue_softc = type { i32, %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.ifnet = type { i32 }
%struct.aue_rxpkt = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"received %d bytes\0A\00", align 1
@AUE_FLAG_VER_2 = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@AUE_RXSTAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bulk read error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @aue_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aue_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.aue_rxpkt, align 4
  %9 = alloca %struct.usb_page_cache*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.aue_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.aue_softc* %12, %struct.aue_softc** %5, align 8
  %13 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %14 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %13, i32 0, i32 1
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %16 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %15)
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %10, i32* null, i32* null, i32* null)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %9, align 8
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call i32 @USB_GET_STATE(%struct.usb_xfer* %21)
  switch i32 %22, label %92 [
    i32 128, label %23
    i32 129, label %82
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %27 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AUE_FLAG_VER_2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %37 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %38 = call i32 @if_inc_counter(%struct.ifnet* %36, i32 %37, i32 1)
  br label %83

39:                                               ; preds = %32
  br label %77

40:                                               ; preds = %23
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ETHER_CRC_LEN, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = icmp sle i32 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %49 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %50 = call i32 @if_inc_counter(%struct.ifnet* %48, i32 %49, i32 1)
  br label %83

51:                                               ; preds = %40
  %52 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @usbd_copy_out(%struct.usb_page_cache* %52, i32 %56, %struct.aue_rxpkt* %8, i32 4)
  %58 = load i32, i32* @AUE_RXSTAT_MASK, align 4
  %59 = getelementptr inbounds %struct.aue_rxpkt, %struct.aue_rxpkt* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = getelementptr inbounds %struct.aue_rxpkt, %struct.aue_rxpkt* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %67 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %68 = call i32 @if_inc_counter(%struct.ifnet* %66, i32 %67, i32 1)
  br label %83

69:                                               ; preds = %51
  %70 = load i32, i32* @ETHER_CRC_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 4, %71
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %69, %39
  %78 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %79 = load %struct.usb_page_cache*, %struct.usb_page_cache** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @uether_rxbuf(%struct.usb_ether* %78, %struct.usb_page_cache* %79, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %2, %77
  br label %83

83:                                               ; preds = %99, %82, %65, %47, %35
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %86 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %85)
  %87 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %84, i32 0, i32 %86)
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %89 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %88)
  %90 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %91 = call i32 @uether_rxflush(%struct.usb_ether* %90)
  br label %103

92:                                               ; preds = %2
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @usbd_errstr(i32 %93)
  %95 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %100)
  br label %83

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %83
  ret void
}

declare dso_local %struct.aue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.aue_rxpkt*, i32) #1

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
