; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_ss_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_ss_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_hub_ss_descriptor = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_CLASS_DEVICE = common dso_local global i32 0, align 4
@UR_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@UDESC_SS_HUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_get_ss_hub_descriptor(%struct.usb_device* %0, %struct.mtx* %1, %struct.usb_hub_ss_descriptor* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca %struct.usb_hub_ss_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device_request, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mtx* %1, %struct.mtx** %6, align 8
  store %struct.usb_hub_ss_descriptor* %2, %struct.usb_hub_ss_descriptor** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 7
  %13 = sdiv i32 %12, 8
  %14 = sext i32 %13 to i64
  %15 = add i64 -27, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @UT_READ_CLASS_DEVICE, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @UR_GET_DESCRIPTOR, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UDESC_SS_HUB, align 4
  %24 = call i32 @USETW2(i32 %22, i32 %23, i32 0)
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @USETW(i32 %26, i32 0)
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @USETW(i32 %29, i32 %30)
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = load %struct.mtx*, %struct.mtx** %6, align 8
  %34 = load %struct.usb_hub_ss_descriptor*, %struct.usb_hub_ss_descriptor** %7, align 8
  %35 = call i32 @usbd_do_request(%struct.usb_device* %32, %struct.mtx* %33, %struct.usb_device_request* %9, %struct.usb_hub_ss_descriptor* %34)
  ret i32 %35
}

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, %struct.usb_hub_ss_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
