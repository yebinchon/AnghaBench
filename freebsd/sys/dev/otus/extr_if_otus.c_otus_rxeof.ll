; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.otus_data = type { i64 }
%struct.mbufq = type { i32 }
%struct.otus_softc = type { i32 }
%struct.ar_rx_head = type { i64, i64 }

@AR_RX_HEAD_TAG = common dso_local global i32 0, align 4
@OTUS_DEBUG_RXDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"tag not valid 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"xfer too short %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, %struct.otus_data*, %struct.mbufq*)* @otus_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_rxeof(%struct.usb_xfer* %0, %struct.otus_data* %1, %struct.mbufq* %2) #0 {
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca %struct.otus_data*, align 8
  %6 = alloca %struct.mbufq*, align 8
  %7 = alloca %struct.otus_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ar_rx_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %4, align 8
  store %struct.otus_data* %1, %struct.otus_data** %5, align 8
  store %struct.mbufq* %2, %struct.mbufq** %6, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %13 = call %struct.otus_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.otus_softc* %13, %struct.otus_softc** %7, align 8
  %14 = load %struct.otus_data*, %struct.otus_data** %5, align 8
  %15 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %11, i32* null, i32* null, i32* null)
  br label %19

19:                                               ; preds = %63, %3
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 16
  br i1 %22, label %23, label %84

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = inttoptr i64 %24 to %struct.ar_rx_head*
  store %struct.ar_rx_head* %25, %struct.ar_rx_head** %9, align 8
  %26 = load %struct.ar_rx_head*, %struct.ar_rx_head** %9, align 8
  %27 = getelementptr inbounds %struct.ar_rx_head, %struct.ar_rx_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @AR_RX_HEAD_TAG, align 4
  %30 = call i64 @htole16(i32 %29)
  %31 = icmp ne i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @__predict_false(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load %struct.otus_softc*, %struct.otus_softc** %7, align 8
  %37 = load i32, i32* @OTUS_DEBUG_RXDONE, align 4
  %38 = load %struct.ar_rx_head*, %struct.ar_rx_head** %9, align 8
  %39 = getelementptr inbounds %struct.ar_rx_head, %struct.ar_rx_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @le16toh(i64 %40)
  %42 = call i32 (%struct.otus_softc*, i32, i8*, i32, ...) @OTUS_DPRINTF(%struct.otus_softc* %36, i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %84

43:                                               ; preds = %23
  %44 = load %struct.ar_rx_head*, %struct.ar_rx_head** %9, align 8
  %45 = getelementptr inbounds %struct.ar_rx_head, %struct.ar_rx_head* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @le16toh(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 16, %49
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @__predict_false(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load %struct.otus_softc*, %struct.otus_softc** %7, align 8
  %59 = load i32, i32* @OTUS_DEBUG_RXDONE, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (%struct.otus_softc*, i32, i8*, i32, ...) @OTUS_DPRINTF(%struct.otus_softc* %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %84

63:                                               ; preds = %43
  %64 = load %struct.otus_softc*, %struct.otus_softc** %7, align 8
  %65 = load %struct.ar_rx_head*, %struct.ar_rx_head** %9, align 8
  %66 = getelementptr inbounds %struct.ar_rx_head, %struct.ar_rx_head* %65, i64 1
  %67 = bitcast %struct.ar_rx_head* %66 to i32*
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.mbufq*, %struct.mbufq** %6, align 8
  %70 = call i32 @otus_sub_rxeof(%struct.otus_softc* %64, i32* %67, i32 %68, %struct.mbufq* %69)
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 16, %72
  %74 = add i64 %73, 3
  %75 = and i64 %74, -4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %19

84:                                               ; preds = %57, %35, %19
  ret void
}

declare dso_local %struct.otus_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @htole16(i32) #1

declare dso_local i32 @OTUS_DPRINTF(%struct.otus_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @le16toh(i64) #1

declare dso_local i32 @otus_sub_rxeof(%struct.otus_softc*, i32*, i32, %struct.mbufq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
