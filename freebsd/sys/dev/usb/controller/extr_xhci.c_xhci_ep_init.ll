; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_endpoint = type { i32* }
%struct.xhci_endpoint_ext = type { i32, i64 }

@.str = private unnamed_addr constant [41 x i8] c"endpoint=%p, addr=%d, endpt=%d, mode=%d\0A\00", align 1
@xhci_device_generic_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @xhci_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca %struct.xhci_endpoint_ext*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %13 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %8, i32 %11, i32 %14, i32 %18)
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %43

25:                                               ; preds = %3
  %26 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %26, i32 0, i32 0
  store i32* @xhci_device_generic_methods, i32** %27, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %30 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device* %28, %struct.usb_endpoint_descriptor* %29)
  store %struct.xhci_endpoint_ext* %30, %struct.xhci_endpoint_ext** %7, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @USB_BUS_LOCK(i32 %33)
  %35 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %36 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %7, align 8
  %38 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @USB_BUS_UNLOCK(i32 %41)
  br label %43

43:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*, i32, i32, i32) #1

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device*, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
