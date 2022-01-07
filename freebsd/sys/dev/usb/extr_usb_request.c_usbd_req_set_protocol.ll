; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"iface=%p, report=%d, endpt=%d\0A\00", align 1
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_SET_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_set_protocol(%struct.usb_device* %0, %struct.mtx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_device_request, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.mtx* %1, %struct.mtx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %12, i32 %13)
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
  br label %58

24:                                               ; preds = %17
  %25 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %25, i32 %26, i64 %31)
  %33 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @UR_SET_PROTOCOL, align 4
  %36 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @USETW(i32 %38, i32 %39)
  %41 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @USETW(i32 %53, i32 0)
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = load %struct.mtx*, %struct.mtx** %7, align 8
  %57 = call i32 @usbd_do_request(%struct.usb_device* %55, %struct.mtx* %56, %struct.usb_device_request* %11, i32 0)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %24, %22
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_interface*, i32, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
