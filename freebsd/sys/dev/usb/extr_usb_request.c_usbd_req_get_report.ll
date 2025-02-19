; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device_request = type { i32, i64*, i32, i32, i32 }

@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"len=%d\0A\00", align 1
@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_GET_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_get_report(%struct.usb_device* %0, %struct.mtx* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.mtx*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_interface*, align 8
  %17 = alloca %struct.usb_device_request, align 8
  store %struct.usb_device* %0, %struct.usb_device** %9, align 8
  store %struct.mtx* %1, %struct.mtx** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %18, i32 %19)
  store %struct.usb_interface* %20, %struct.usb_interface** %16, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %22 = icmp eq %struct.usb_interface* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %7
  %24 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp eq %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %7
  %29 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %29, i32* %8, align 4
  br label %61

30:                                               ; preds = %23
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @UR_GET_REPORT, align 4
  %36 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @USETW2(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %17, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @USETW(i32 %54, i32 %55)
  %57 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %58 = load %struct.mtx*, %struct.mtx** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @usbd_do_request(%struct.usb_device* %57, %struct.mtx* %58, %struct.usb_device_request* %17, i8* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %30, %28
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
