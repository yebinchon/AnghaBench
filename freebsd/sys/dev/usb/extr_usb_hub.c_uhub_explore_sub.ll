; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_explore_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_explore_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhub_softc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_bus* }
%struct.usb_bus = type { i64 }
%struct.usb_port = type { i32 }
%struct.usb_device = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 (%struct.usb_device*)* }
%struct.TYPE_4__ = type { i64 }

@USB_IFACE_INDEX_ANY = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uhub_softc*, %struct.usb_port*)* @uhub_explore_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uhub_explore_sub(%struct.uhub_softc* %0, %struct.usb_port* %1) #0 {
  %3 = alloca %struct.uhub_softc*, align 8
  %4 = alloca %struct.usb_port*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uhub_softc* %0, %struct.uhub_softc** %3, align 8
  store %struct.usb_port* %1, %struct.usb_port** %4, align 8
  %9 = load %struct.uhub_softc*, %struct.uhub_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.usb_bus*, %struct.usb_bus** %12, align 8
  store %struct.usb_bus* %13, %struct.usb_bus** %5, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %15 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %18 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %19 = call %struct.usb_device* @usb_bus_port_get_device(%struct.usb_bus* %17, %struct.usb_port* %18)
  store %struct.usb_device* %19, %struct.usb_device** %6, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = icmp eq %struct.usb_device* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %25 = call i32 @uhub_explore_handle_re_enumerate(%struct.usb_device* %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %36 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %37 = call i64 @usb_probe_and_attach(%struct.usb_device* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %66

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_MODE_DEVICE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = call i32 @usbd_ctrl_transfer_setup(%struct.usb_device* %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64 (%struct.usb_device*)*, i64 (%struct.usb_device*)** %61, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %64 = call i64 %62(%struct.usb_device* %63)
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65, %40, %22
  %67 = load i64, i64* %8, align 8
  ret i64 %67
}

declare dso_local %struct.usb_device* @usb_bus_port_get_device(%struct.usb_bus*, %struct.usb_port*) #1

declare dso_local i32 @uhub_explore_handle_re_enumerate(%struct.usb_device*) #1

declare dso_local i64 @usb_probe_and_attach(%struct.usb_device*, i32) #1

declare dso_local i32 @usbd_ctrl_transfer_setup(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
