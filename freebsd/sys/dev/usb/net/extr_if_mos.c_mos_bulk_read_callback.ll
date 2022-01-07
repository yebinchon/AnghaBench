; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.mos_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"actlen : %d\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@MOS_RXSTS_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"erroneous frame received\00", align 1
@MOS_RXSTS_SHORT_FRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"frame size less than 64 bytes\00", align 1
@MOS_RXSTS_LARGE_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"frame size larger than 1532 bytes\00", align 1
@MOS_RXSTS_CRC_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@MOS_RXSTS_ALIGN_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"alignment error\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"error: pktlen %d is smaller than ether_header %zd\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"bulk read error, %s\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"start rx %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @mos_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mos_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_page_cache*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.mos_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.mos_softc* %13, %struct.mos_softc** %5, align 8
  %14 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %14, i32 0, i32 0
  store %struct.usb_ether* %15, %struct.usb_ether** %6, align 8
  %16 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %17 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %16)
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %9, i32* null, i32* null, i32* null)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %20, i32 0)
  store %struct.usb_page_cache* %21, %struct.usb_page_cache** %11, align 8
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = call i32 @USB_GET_STATE(%struct.usb_xfer* %22)
  switch i32 %23, label %103 [
    i32 128, label %24
    i32 129, label %93
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %32 = call i32 @if_inc_counter(%struct.ifnet* %30, i32 %31, i32 1)
  br label %94

33:                                               ; preds = %24
  %34 = load %struct.usb_page_cache*, %struct.usb_page_cache** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @usbd_copy_out(%struct.usb_page_cache* %34, i32 %38, i32* %8, i32 4)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MOS_RXSTS_VALID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %33
  %44 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MOS_RXSTS_SHORT_FRAME, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MOS_RXSTS_LARGE_FRAME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MOS_RXSTS_CRC_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MOS_RXSTS_ALIGN_ERROR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %74 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %75 = call i32 @if_inc_counter(%struct.ifnet* %73, i32 %74, i32 1)
  br label %94

76:                                               ; preds = %33
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 4
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %83, i64 4)
  %85 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %86 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %87 = call i32 @if_inc_counter(%struct.ifnet* %85, i32 %86, i32 1)
  br label %94

88:                                               ; preds = %76
  %89 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %90 = load %struct.usb_page_cache*, %struct.usb_page_cache** %11, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @uether_rxbuf(%struct.usb_ether* %89, %struct.usb_page_cache* %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %2, %88
  br label %94

94:                                               ; preds = %110, %93, %82, %72, %29
  %95 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %97 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %96)
  %98 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %95, i32 0, i32 %97)
  %99 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %100 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %99)
  %101 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %102 = call i32 @uether_rxflush(%struct.usb_ether* %101)
  br label %117

103:                                              ; preds = %2
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @usbd_errstr(i32 %104)
  %106 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %112 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %111)
  br label %94

113:                                              ; preds = %103
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %115 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %114)
  %116 = call i32 (i8*, ...) @MOS_DPRINTFN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %94
  ret void
}

declare dso_local %struct.mos_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @MOS_DPRINTFN(i8*, ...) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @uether_rxbuf(%struct.usb_ether*, %struct.usb_page_cache*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @uether_rxflush(%struct.usb_ether*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
