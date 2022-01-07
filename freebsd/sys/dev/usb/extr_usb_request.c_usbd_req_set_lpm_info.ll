; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_lpm_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_set_lpm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_device_request = type { i32*, i32, i32, i32, i32 }

@UT_WRITE_CLASS_OTHER = common dso_local global i32 0, align 4
@UR_SET_AND_TEST = common dso_local global i32 0, align 4
@UHF_PORT_L1 = common dso_local global i32 0, align 4
@USB_ERR_PENDING_REQUESTS = common dso_local global i64 0, align 8
@USB_ERR_TIMEOUT = common dso_local global i64 0, align 8
@USB_ERR_STALLED = common dso_local global i64 0, align 8
@USB_ERR_IOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_set_lpm_info(%struct.usb_device* %0, %struct.mtx* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_device_request, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1 x i32], align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store %struct.mtx* %1, %struct.mtx** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @UT_WRITE_CLASS_OTHER, align 4
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %14, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @UR_SET_AND_TEST, align 4
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %14, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %14, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UHF_PORT_L1, align 4
  %24 = call i32 @USETW(i32 %22, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 15
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 15
  %29 = shl i32 %28, 4
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %14, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 127
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 128, i32 0
  %40 = or i32 %35, %39
  %41 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %14, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %40, i32* %43, align 4
  %44 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %14, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @USETW(i32 %45, i32 4)
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %49 = load %struct.mtx*, %struct.mtx** %9, align 8
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %51 = call i64 @usbd_do_request(%struct.usb_device* %48, %struct.mtx* %49, %struct.usb_device_request* %14, i32* %50)
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %6
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %7, align 8
  br label %70

56:                                               ; preds = %6
  %57 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %66 [
    i32 0, label %59
    i32 16, label %60
    i32 17, label %62
    i32 48, label %64
  ]

59:                                               ; preds = %56
  br label %68

60:                                               ; preds = %56
  %61 = load i64, i64* @USB_ERR_PENDING_REQUESTS, align 8
  store i64 %61, i64* %15, align 8
  br label %68

62:                                               ; preds = %56
  %63 = load i64, i64* @USB_ERR_TIMEOUT, align 8
  store i64 %63, i64* %15, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load i64, i64* @USB_ERR_STALLED, align 8
  store i64 %65, i64* %15, align 8
  br label %68

66:                                               ; preds = %56
  %67 = load i64, i64* @USB_ERR_IOERROR, align 8
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %66, %64, %62, %60, %59
  %69 = load i64, i64* %15, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %68, %54
  %71 = load i64, i64* %7, align 8
  ret i64 %71
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
