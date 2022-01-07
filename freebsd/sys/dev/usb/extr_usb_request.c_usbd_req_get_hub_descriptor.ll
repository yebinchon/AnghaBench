; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_hub_descriptor = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_CLASS_DEVICE = common dso_local global i32 0, align 4
@UR_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@UDESC_HUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_get_hub_descriptor(%struct.usb_device* %0, %struct.mtx* %1, %struct.usb_hub_descriptor* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca %struct.usb_hub_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device_request, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mtx* %1, %struct.mtx** %6, align 8
  store %struct.usb_hub_descriptor* %2, %struct.usb_hub_descriptor** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 7
  %13 = add nsw i32 %12, 64
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @UT_READ_CLASS_DEVICE, align 4
  %16 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @UR_GET_DESCRIPTOR, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UDESC_HUB, align 4
  %22 = call i32 @USETW2(i32 %20, i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @USETW(i32 %24, i32 0)
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @USETW(i32 %27, i32 %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %31 = load %struct.mtx*, %struct.mtx** %6, align 8
  %32 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %7, align 8
  %33 = call i32 @usbd_do_request(%struct.usb_device* %30, %struct.mtx* %31, %struct.usb_device_request* %9, %struct.usb_hub_descriptor* %32)
  ret i32 %33
}

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, %struct.usb_hub_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
