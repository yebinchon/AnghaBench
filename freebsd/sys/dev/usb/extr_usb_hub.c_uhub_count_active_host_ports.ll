; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_count_active_host_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_count_active_host_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__, i32, %struct.usb_hub* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_hub = type { i64, %struct.usb_port*, %struct.uhub_softc* }
%struct.usb_port = type { i32 }
%struct.uhub_softc = type { i32 }

@USB_MODE_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uhub_count_active_host_ports(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhub_softc*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_hub*, align 8
  %8 = alloca %struct.usb_port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %9, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = icmp eq %struct.usb_device* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 3
  %17 = load %struct.usb_hub*, %struct.usb_hub** %16, align 8
  store %struct.usb_hub* %17, %struct.usb_hub** %7, align 8
  %18 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %19 = icmp eq %struct.usb_hub* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %69

21:                                               ; preds = %14
  %22 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %23 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %22, i32 0, i32 2
  %24 = load %struct.uhub_softc*, %struct.uhub_softc** %23, align 8
  store %struct.uhub_softc* %24, %struct.uhub_softc** %5, align 8
  %25 = load %struct.uhub_softc*, %struct.uhub_softc** %5, align 8
  %26 = icmp eq %struct.uhub_softc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %69

28:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %65, %28
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %32 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %37 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %36, i32 0, i32 1
  %38 = load %struct.usb_port*, %struct.usb_port** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %38, i64 %39
  store %struct.usb_port* %40, %struct.usb_port** %8, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_port*, %struct.usb_port** %8, align 8
  %45 = call %struct.usb_device* @usb_bus_port_get_device(i32 %43, %struct.usb_port* %44)
  store %struct.usb_device* %45, %struct.usb_device** %6, align 8
  %46 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %47 = icmp ne %struct.usb_device* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %35
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @USB_MODE_HOST, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %55, %48, %35
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %29

68:                                               ; preds = %29
  br label %69

69:                                               ; preds = %68, %27, %20, %13
  %70 = load i64, i64* %9, align 8
  ret i64 %70
}

declare dso_local %struct.usb_device* @usb_bus_port_get_device(i32, %struct.usb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
