; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rue_softc = type { %struct.usb_ether }
%struct.usb_ether = type { i32 }
%struct.ifnet = type { i32 }
%struct.usb_page_cache = type { i32 }

@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@RUE_RXSTAT_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bulk read error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @rue_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rue_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.rue_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.rue_softc* %12, %struct.rue_softc** %5, align 8
  %13 = load %struct.rue_softc*, %struct.rue_softc** %5, align 8
  %14 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %13, i32 0, i32 0
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %16 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %15)
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @usbd_xfer_status(%struct.usb_xfer* %17, i32* %10, i32* null, i32* null, i32* null)
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @USB_GET_STATE(%struct.usb_xfer* %19)
  switch i32 %20, label %62 [
    i32 128, label %21
    i32 129, label %52
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %26 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %27 = call i32 @if_inc_counter(%struct.ifnet* %25, i32 %26, i32 1)
  br label %53

28:                                               ; preds = %21
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %29, i32 0)
  store %struct.usb_page_cache* %30, %struct.usb_page_cache** %8, align 8
  %31 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 4
  %34 = call i32 @usbd_copy_out(%struct.usb_page_cache* %31, i32 %33, i32* %9, i32 4)
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @le16toh(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @RUE_RXSTAT_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %45 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %46 = call i32 @if_inc_counter(%struct.ifnet* %44, i32 %45, i32 1)
  br label %53

47:                                               ; preds = %28
  %48 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %49 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @uether_rxbuf(%struct.usb_ether* %48, %struct.usb_page_cache* %49, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %2, %47
  br label %53

53:                                               ; preds = %69, %52, %43, %24
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %56 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %55)
  %57 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %54, i32 0, i32 %56)
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %59 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %58)
  %60 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %61 = call i32 @uether_rxflush(%struct.usb_ether* %60)
  br label %73

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @usbd_errstr(i32 %63)
  %65 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %70)
  br label %53

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %53
  ret void
}

declare dso_local %struct.rue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

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
