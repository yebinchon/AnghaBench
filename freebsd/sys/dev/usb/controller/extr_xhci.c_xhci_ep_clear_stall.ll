; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_ep_clear_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_ep_clear_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint = type { i32 }
%struct.xhci_endpoint_ext = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USB_MODE_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*)* @xhci_ep_clear_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_ep_clear_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_endpoint*, align 8
  %5 = alloca %struct.xhci_endpoint_ext*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %4, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_MODE_HOST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %38

20:                                               ; preds = %14
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device* %21, i32 %24)
  store %struct.xhci_endpoint_ext* %25, %struct.xhci_endpoint_ext** %5, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @USB_BUS_LOCK(i32 %28)
  %30 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %31 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %33 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @USB_BUS_UNLOCK(i32 %36)
  br label %38

38:                                               ; preds = %20, %19, %13
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
