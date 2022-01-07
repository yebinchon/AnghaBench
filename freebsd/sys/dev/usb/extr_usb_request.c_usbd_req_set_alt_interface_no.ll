; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_alt_interface_no.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_alt_interface_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device_request = type { i32, i64*, i64*, i32, i32 }

@USB_ERR_INVAL = common dso_local global i32 0, align 4
@UT_WRITE_INTERFACE = common dso_local global i32 0, align 4
@UR_SET_INTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_set_alt_interface_no(%struct.usb_device* %0, %struct.mtx* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_device_request, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.mtx* %1, %struct.mtx** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %12, i64 %13)
  store %struct.usb_interface* %14, %struct.usb_interface** %10, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %16 = icmp eq %struct.usb_interface* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %17
  %25 = load i32, i32* @UT_WRITE_INTERFACE, align 4
  %26 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @UR_SET_INTERFACE, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %29, i64* %32, align 8
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 %40, i64* %43, align 8
  %44 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @USETW(i32 %48, i32 0)
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load %struct.mtx*, %struct.mtx** %7, align 8
  %52 = call i32 @usbd_do_request(%struct.usb_device* %50, %struct.mtx* %51, %struct.usb_device_request* %11, i32 0)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %24, %22
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
