; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_usb_msc_get_max_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_usb_msc_get_max_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i32, i64*, i32, i32 }

@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_device*, i64)* @usb_msc_get_max_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usb_msc_get_max_lun(%struct.usb_device* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_device_request, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 0
  store i32 254, i32* %10, align 8
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @USETW(i32 %12, i32 0)
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %14, i64* %17, align 8
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @USETW(i32 %22, i32 1)
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = call i64 @usbd_do_request(%struct.usb_device* %24, i32* null, %struct.usb_device_request* %5, i64* %7)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i64, i64* %7, align 8
  ret i64 %30
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request(%struct.usb_device*, i32*, %struct.usb_device_request*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
