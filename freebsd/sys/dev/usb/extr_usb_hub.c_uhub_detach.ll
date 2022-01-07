; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhub_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.usb_hub*, %struct.usb_bus* }
%struct.usb_hub = type { i64, i64, i32* }
%struct.usb_bus = type { i32 }
%struct.usb_device = type { i32 }

@UHUB_N_TRANSFER = common dso_local global i32 0, align 4
@M_USBDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uhub_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhub_softc*, align 8
  %5 = alloca %struct.usb_hub*, align 8
  %6 = alloca %struct.usb_bus*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.uhub_softc* @device_get_softc(i32 %9)
  store %struct.uhub_softc* %10, %struct.uhub_softc** %4, align 8
  %11 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.usb_hub*, %struct.usb_hub** %14, align 8
  store %struct.usb_hub* %15, %struct.usb_hub** %5, align 8
  %16 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %17 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.usb_bus*, %struct.usb_bus** %19, align 8
  store %struct.usb_bus* %20, %struct.usb_bus** %6, align 8
  %21 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %22 = icmp eq %struct.usb_hub* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

24:                                               ; preds = %1
  %25 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %26 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UHUB_N_TRANSFER, align 4
  %29 = call i32 @usbd_transfer_unsetup(i32 %27, i32 %28)
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %50, %24
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %33 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %38 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %39 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %40, %41
  %43 = call %struct.usb_device* @usb_bus_port_get_device(%struct.usb_bus* %37, i64 %42)
  store %struct.usb_device* %43, %struct.usb_device** %7, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %45 = icmp eq %struct.usb_device* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %49 = call i32 @usb_free_device(%struct.usb_device* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.usb_hub*, %struct.usb_hub** %5, align 8
  %55 = load i32, i32* @M_USBDEV, align 4
  %56 = call i32 @free(%struct.usb_hub* %54, i32 %55)
  %57 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %58 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.usb_hub* null, %struct.usb_hub** %60, align 8
  %61 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %62 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %61, i32 0, i32 0
  %63 = call i32 @mtx_destroy(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %53, %23
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.uhub_softc* @device_get_softc(i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local %struct.usb_device* @usb_bus_port_get_device(%struct.usb_bus*, i64) #1

declare dso_local i32 @usb_free_device(%struct.usb_device*, i32) #1

declare dso_local i32 @free(%struct.usb_hub*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
