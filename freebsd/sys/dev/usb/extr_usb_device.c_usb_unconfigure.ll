; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_unconfigure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_unconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@USB_IFACE_INDEX_ANY = common dso_local global i32 0, align 4
@USB_CFG_FREE = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_UNCONFIG_NO = common dso_local global i32 0, align 4
@USB_UNCONFIG_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, i64)* @usb_unconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_unconfigure(%struct.usb_device* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = call i64 @usbd_enum_lock(%struct.usb_device* %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @usb_detach_device(%struct.usb_device* %8, i32 %9, i64 %10)
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %14 = load i32, i32* @USB_CFG_FREE, align 4
  %15 = call i32 @usb_config_parse(%struct.usb_device* %12, i32 %13, i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_MODE_DEVICE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @usbd_free_config_desc(%struct.usb_device* %28, i32* %31)
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* @USB_UNCONFIG_NO, align 4
  %38 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @USB_UNCONFIG_INDEX, align 4
  %41 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = call i32 @usbd_enum_unlock(%struct.usb_device* %46)
  br label %48

48:                                               ; preds = %45, %36
  ret void
}

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i32 @usb_detach_device(%struct.usb_device*, i32, i64) #1

declare dso_local i32 @usb_config_parse(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usbd_free_config_desc(%struct.usb_device*, i32*) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
