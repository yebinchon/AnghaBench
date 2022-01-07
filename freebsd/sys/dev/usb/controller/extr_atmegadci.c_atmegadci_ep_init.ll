; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_endpoint = type { i32* }
%struct.atmegadci_softc = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"endpoint=%p, addr=%d, endpt=%d, mode=%d (%d,%d)\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@atmegadci_device_isoc_fs_methods = common dso_local global i32 0, align 4
@atmegadci_device_non_isoc_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @atmegadci_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmegadci_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca %struct.atmegadci_softc*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.atmegadci_softc* @ATMEGA_BUS2SC(i32 %10)
  store %struct.atmegadci_softc* %11, %struct.atmegadci_softc** %7, align 8
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %7, align 8
  %24 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %12, i32 %15, i32 %18, i32 %22, i64 %25, i64 %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %7, align 8
  %34 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %3
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_SPEED_FULL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %59

44:                                               ; preds = %37
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UE_XFERTYPE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %53, i32 0, i32 0
  store i32* @atmegadci_device_isoc_fs_methods, i32** %54, align 8
  br label %58

55:                                               ; preds = %44
  %56 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %57 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %56, i32 0, i32 0
  store i32* @atmegadci_device_non_isoc_methods, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %43, %58, %3
  ret void
}

declare dso_local %struct.atmegadci_softc* @ATMEGA_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
