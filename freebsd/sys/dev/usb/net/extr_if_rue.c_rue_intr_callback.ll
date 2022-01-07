; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rue_softc = type { i32 }
%struct.ifnet = type { i32 }
%struct.rue_intrpkt = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @rue_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rue_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.rue_intrpkt, align 4
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.rue_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.rue_softc* %11, %struct.rue_softc** %5, align 8
  %12 = load %struct.rue_softc*, %struct.rue_softc** %5, align 8
  %13 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %12, i32 0, i32 0
  %14 = call %struct.ifnet* @uether_getifp(i32* %13)
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @usbd_xfer_status(%struct.usb_xfer* %15, i32* %9, i32* null, i32* null, i32* null)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %61 [
    i32 128, label %19
    i32 129, label %53
  ]

19:                                               ; preds = %2
  %20 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %21 = icmp ne %struct.ifnet* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 12
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %33, i32 0)
  store %struct.usb_page_cache* %34, %struct.usb_page_cache** %8, align 8
  %35 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %36 = call i32 @usbd_copy_out(%struct.usb_page_cache* %35, i32 0, %struct.rue_intrpkt* %7, i32 12)
  %37 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %38 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %39 = getelementptr inbounds %struct.rue_intrpkt, %struct.rue_intrpkt* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @if_inc_counter(%struct.ifnet* %37, i32 %38, i32 %40)
  %42 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %43 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %44 = getelementptr inbounds %struct.rue_intrpkt, %struct.rue_intrpkt* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @if_inc_counter(%struct.ifnet* %42, i32 %43, i32 %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %49 = getelementptr inbounds %struct.rue_intrpkt, %struct.rue_intrpkt* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @if_inc_counter(%struct.ifnet* %47, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %32, %29, %22, %19
  br label %53

53:                                               ; preds = %2, %52
  br label %54

54:                                               ; preds = %65, %53
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %56)
  %58 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %55, i32 0, i32 %57)
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %59)
  br label %69

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %67 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %66)
  br label %54

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %54
  ret void
}

declare dso_local %struct.rue_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, %struct.rue_intrpkt*, i32) #1

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
