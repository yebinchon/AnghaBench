; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.mtx = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"setting device address=%d\0A\00", align 1
@UT_WRITE_DEVICE = common dso_local global i32 0, align 4
@UR_SET_ADDRESS = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_DELAY_STATUS_STAGE = common dso_local global i32 0, align 4
@usb_set_address_settle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_set_address(%struct.usb_device* %0, %struct.mtx* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device_request, align 4
  %8 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.mtx* %1, %struct.mtx** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @UT_WRITE_DEVICE, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @UR_SET_ADDRESS, align 4
  %14 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @USETW(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USETW(i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @USETW(i32 %23, i32 0)
  %25 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i64 (%struct.usb_device*, %struct.mtx*, i32)**
  %33 = load i64 (%struct.usb_device*, %struct.mtx*, i32)*, i64 (%struct.usb_device*, %struct.mtx*, i32)** %32, align 8
  %34 = icmp ne i64 (%struct.usb_device*, %struct.mtx*, i32)* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %3
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i64 (%struct.usb_device*, %struct.mtx*, i32)**
  %43 = load i64 (%struct.usb_device*, %struct.mtx*, i32)*, i64 (%struct.usb_device*, %struct.mtx*, i32)** %42, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %45 = load %struct.mtx*, %struct.mtx** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 %43(%struct.usb_device* %44, %struct.mtx* %45, i32 %46)
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %35, %3
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @USB_ERR_INVAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %58

53:                                               ; preds = %48
  %54 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %55 = load %struct.mtx*, %struct.mtx** %5, align 8
  %56 = load i32, i32* @USB_DELAY_STATUS_STAGE, align 4
  %57 = call i64 @usbd_do_request_flags(%struct.usb_device* %54, %struct.mtx* %55, %struct.usb_device_request* %7, i32* null, i32 %56, i32* null, i32 1000)
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %53, %52
  %59 = load %struct.mtx*, %struct.mtx** %5, align 8
  %60 = load i32, i32* @usb_set_address_settle, align 4
  %61 = call i32 @USB_MS_TO_TICKS(i32 %60)
  %62 = call i32 @usb_pause_mtx(%struct.mtx* %59, i32 %61)
  %63 = load i64, i64* %8, align 8
  ret i64 %63
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_flags(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_pause_mtx(%struct.mtx*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
