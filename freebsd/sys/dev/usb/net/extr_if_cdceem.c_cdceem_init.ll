; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdceem.c_cdceem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdceem.c_cdceem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.cdceem_softc = type { i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@cdceem_send_echoes = common dso_local global i64 0, align 8
@CDCEEM_SC_FLAGS_ECHO_PENDING = common dso_local global i64 0, align 8
@USB_MODE_HOST = common dso_local global i64 0, align 8
@CDCEEM_BULK_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @cdceem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdceem_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.cdceem_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %5 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %6 = call %struct.cdceem_softc* @uether_getsc(%struct.usb_ether* %5)
  store %struct.cdceem_softc* %6, %struct.cdceem_softc** %3, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %7)
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* @cdceem_send_echoes, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* @CDCEEM_SC_FLAGS_ECHO_PENDING, align 8
  %18 = load %struct.cdceem_softc*, %struct.cdceem_softc** %3, align 8
  %19 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.cdceem_softc*, %struct.cdceem_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.cdceem_softc*, %struct.cdceem_softc** %3, align 8
  %25 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @usbd_get_mode(i32 %27)
  %29 = load i64, i64* @USB_MODE_HOST, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.cdceem_softc*, %struct.cdceem_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @CDCEEM_BULK_TX, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usbd_xfer_set_stall(i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %41 = call i32 @cdceem_start(%struct.usb_ether* %40)
  ret void
}

declare dso_local %struct.cdceem_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i64 @usbd_get_mode(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @cdceem_start(%struct.usb_ether*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
