; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_usb_controller.c_usb_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_bus = type { i32*, %struct.usb_device** }
%struct.usb_device = type { i32 }
%struct.usb_bus_msg = type { %struct.usb_bus* }

@USB_ROOT_HUB_ADDR = common dso_local global i64 0, align 8
@Giant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_bus_detach(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %6 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %7 = bitcast %struct.usb_proc_msg* %6 to %struct.usb_bus_msg*
  %8 = getelementptr inbounds %struct.usb_bus_msg, %struct.usb_bus_msg* %7, i32 0, i32 0
  %9 = load %struct.usb_bus*, %struct.usb_bus** %8, align 8
  store %struct.usb_bus* %9, %struct.usb_bus** %3, align 8
  %10 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %11 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %10, i32 0, i32 1
  %12 = load %struct.usb_device**, %struct.usb_device*** %11, align 8
  %13 = load i64, i64* @USB_ROOT_HUB_ADDR, align 8
  %14 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %12, i64 %13
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %4, align 8
  %16 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %17 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @device_set_softc(i32* %19, i32* null)
  %21 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %22 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %21)
  %23 = call i32 @mtx_lock(i32* @Giant)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @bus_generic_detach(i32* %24)
  %26 = call i32 @mtx_unlock(i32* @Giant)
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = call i32 @usb_free_device(%struct.usb_device* %27, i32 0)
  %29 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %30 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %29)
  %31 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %32 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @device_set_softc(i32*, i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bus_generic_detach(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usb_free_device(%struct.usb_device*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
