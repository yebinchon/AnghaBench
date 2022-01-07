; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.aue_softc = type { i32 }
%struct.ifnet = type { i32 }
%struct.aue_intrpkt = type { i32 }
%struct.usb_page_cache = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@AUE_TXSTAT0_LATECOLL = common dso_local global i32 0, align 4
@AUE_TXSTAT0_EXCESSCOLL = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @aue_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aue_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.aue_intrpkt, align 4
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.aue_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.aue_softc* %11, %struct.aue_softc** %5, align 8
  %12 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %13 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %12, i32 0, i32 0
  %14 = call %struct.ifnet* @uether_getifp(i32* %13)
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @usbd_xfer_status(%struct.usb_xfer* %15, i32* %9, i32* null, i32* null, i32* null)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %63 [
    i32 128, label %19
    i32 129, label %55
  ]

19:                                               ; preds = %2
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 4
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %30, i32 0)
  store %struct.usb_page_cache* %31, %struct.usb_page_cache** %8, align 8
  %32 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %33 = call i32 @usbd_copy_out(%struct.usb_page_cache* %32, i32 0, %struct.aue_intrpkt* %7, i32 4)
  %34 = getelementptr inbounds %struct.aue_intrpkt, %struct.aue_intrpkt* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %39 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %40 = call i32 @if_inc_counter(%struct.ifnet* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %29
  %42 = getelementptr inbounds %struct.aue_intrpkt, %struct.aue_intrpkt* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AUE_TXSTAT0_LATECOLL, align 4
  %45 = load i32, i32* @AUE_TXSTAT0_EXCESSCOLL, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %51 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %52 = call i32 @if_inc_counter(%struct.ifnet* %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %26, %19
  br label %55

55:                                               ; preds = %2, %54
  br label %56

56:                                               ; preds = %67, %55
  %57 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %59 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %58)
  %60 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %57, i32 0, i32 %59)
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %62 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %61)
  br label %71

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %69 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %68)
  br label %56

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %56
  ret void
}

declare dso_local %struct.aue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.aue_intrpkt*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
