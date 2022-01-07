; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }
%struct.ifnet = type { i32, %struct.usb_bus* }
%struct.usb_bus = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, %struct.ifnet*)* @usbpf_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbpf_clone_destroy(%struct.if_clone* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.if_clone*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 1
  %9 = load %struct.usb_bus*, %struct.usb_bus** %8, align 8
  store %struct.usb_bus* %9, %struct.usb_bus** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %14 = call i32 @USB_BUS_LOCK(%struct.usb_bus* %13)
  %15 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %16 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %18 = call i32 @USB_BUS_UNLOCK(%struct.usb_bus* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = call i32 @bpfdetach(%struct.ifnet* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = call i32 @if_detach(%struct.ifnet* %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = call i32 @if_free(%struct.ifnet* %23)
  %25 = load %struct.if_clone*, %struct.if_clone** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ifc_free_unit(%struct.if_clone* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @USB_BUS_LOCK(%struct.usb_bus*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.usb_bus*) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @ifc_free_unit(%struct.if_clone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
