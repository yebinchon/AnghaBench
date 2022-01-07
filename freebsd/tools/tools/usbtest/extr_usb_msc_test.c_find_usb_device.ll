; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_find_usb_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_find_usb_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_backend = type { i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i64, i64 }

@LIBUSB20_MODE_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.libusb20_device* @find_usb_device(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.libusb20_backend*, align 8
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_default()
  store %struct.libusb20_backend* %8, %struct.libusb20_backend** %5, align 8
  store %struct.libusb20_device* null, %struct.libusb20_device** %6, align 8
  br label %9

9:                                                ; preds = %38, %19, %2
  %10 = load %struct.libusb20_backend*, %struct.libusb20_backend** %5, align 8
  %11 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %12 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %10, %struct.libusb20_device* %11)
  store %struct.libusb20_device* %12, %struct.libusb20_device** %6, align 8
  %13 = icmp ne %struct.libusb20_device* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %16 = call i64 @libusb20_dev_get_mode(%struct.libusb20_device* %15)
  %17 = load i64, i64* @LIBUSB20_MODE_HOST, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %9

20:                                               ; preds = %14
  %21 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %22 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %21)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %22, %struct.LIBUSB20_DEVICE_DESC_DECODED** %7, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %7, align 8
  %25 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %7, align 8
  %31 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.libusb20_backend*, %struct.libusb20_backend** %5, align 8
  %36 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %37 = call i32 @libusb20_be_dequeue_device(%struct.libusb20_backend* %35, %struct.libusb20_device* %36)
  br label %39

38:                                               ; preds = %28, %20
  br label %9

39:                                               ; preds = %34, %9
  %40 = load %struct.libusb20_backend*, %struct.libusb20_backend** %5, align 8
  %41 = call i32 @libusb20_be_free(%struct.libusb20_backend* %40)
  %42 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  ret %struct.libusb20_device* %42
}

declare dso_local %struct.libusb20_backend* @libusb20_be_alloc_default(...) #1

declare dso_local %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_get_mode(%struct.libusb20_device*) #1

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_be_dequeue_device(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local i32 @libusb20_be_free(%struct.libusb20_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
