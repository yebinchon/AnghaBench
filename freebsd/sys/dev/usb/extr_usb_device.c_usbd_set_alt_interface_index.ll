; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_alt_interface_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_alt_interface_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_interface = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_ERR_INVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_set_alt_interface_index(%struct.usb_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %10, i64 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %7, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = call i64 @usbd_enum_lock(%struct.usb_device* %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %16 = icmp eq %struct.usb_interface* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %18, i64* %8, align 8
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %51

26:                                               ; preds = %19
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @usb_config_parse(%struct.usb_device* %27, i64 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %51

34:                                               ; preds = %26
  %35 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %36 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %41, i64* %8, align 8
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @usbd_req_set_alt_interface_no(%struct.usb_device* %43, i32* null, i64 %44, i32 %49)
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %42, %40, %33, %25, %17
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = call i32 @usbd_enum_unlock(%struct.usb_device* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i64, i64* %8, align 8
  ret i64 %58
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i64 @usb_config_parse(%struct.usb_device*, i64, i64) #1

declare dso_local i64 @usbd_req_set_alt_interface_no(%struct.usb_device*, i32*, i64, i32) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
