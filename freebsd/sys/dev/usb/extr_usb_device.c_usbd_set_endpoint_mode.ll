; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_endpoint_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_endpoint_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.usb_endpoint = type { i64 }

@USB_EP_MODE_DEFAULT = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_set_endpoint_mode(%struct.usb_device* %0, %struct.usb_endpoint* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = call i64 @usbd_enum_lock(%struct.usb_device* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)**
  %18 = load i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)*, i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)** %17, align 8
  %19 = icmp ne i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)**
  %28 = load i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)*, i64 (%struct.usb_device*, %struct.usb_endpoint*, i64)** %27, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 %28(%struct.usb_device* %29, %struct.usb_endpoint* %30, i64 %31)
  store i64 %32, i64* %7, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @USB_EP_MODE_DEFAULT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %38, i64* %7, align 8
  br label %40

39:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %39, %37
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %44 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = call i32 @usbd_enum_unlock(%struct.usb_device* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i64, i64* %7, align 8
  ret i64 %51
}

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
