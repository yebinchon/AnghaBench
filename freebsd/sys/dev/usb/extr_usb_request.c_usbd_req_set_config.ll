; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_device_request = type { i32, i32, i64*, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"setting config %d\0A\00", align 1
@UT_WRITE_DEVICE = common dso_local global i32 0, align 4
@UR_SET_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_set_config(%struct.usb_device* %0, %struct.mtx* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_device_request, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.mtx* %1, %struct.mtx** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* @UT_WRITE_DEVICE, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @UR_SET_CONFIG, align 4
  %13 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %14, i64* %17, align 8
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @USETW(i32 %22, i32 0)
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @USETW(i32 %25, i32 0)
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = load %struct.mtx*, %struct.mtx** %5, align 8
  %29 = call i32 @usbd_do_request(%struct.usb_device* %27, %struct.mtx* %28, %struct.usb_device_request* %7, i32 0)
  ret i32 %29
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
