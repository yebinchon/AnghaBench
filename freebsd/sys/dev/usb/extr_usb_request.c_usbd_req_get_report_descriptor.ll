; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_report_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_report_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@USB_ERR_INVAL = common dso_local global i32 0, align 4
@UT_READ_INTERFACE = common dso_local global i32 0, align 4
@UR_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@UDESC_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_get_report_descriptor(%struct.usb_device* %0, %struct.mtx* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.mtx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_interface*, align 8
  %13 = alloca %struct.usb_device_request, align 8
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store %struct.mtx* %1, %struct.mtx** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %14, i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %12, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %18 = icmp eq %struct.usb_interface* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp eq %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %54

26:                                               ; preds = %19
  %27 = load i32, i32* @UT_READ_INTERFACE, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @UR_GET_DESCRIPTOR, align 4
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UDESC_REPORT, align 4
  %34 = call i32 @USETW2(i32 %32, i32 %33, i32 0)
  %35 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %39, i64* %42, align 8
  %43 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @USETW(i32 %47, i32 %48)
  %50 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %51 = load %struct.mtx*, %struct.mtx** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @usbd_do_request(%struct.usb_device* %50, %struct.mtx* %51, %struct.usb_device_request* %13, i8* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %26, %24
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i32) #1

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
