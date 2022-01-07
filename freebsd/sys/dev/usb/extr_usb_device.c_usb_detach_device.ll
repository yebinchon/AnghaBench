; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_detach_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_detach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"udev=%p\0A\00", align 1
@SA_LOCKED = common dso_local global i32 0, align 4
@USB_IFACE_INDEX_ANY = common dso_local global i64 0, align 8
@USB_IFACE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_detach_device(%struct.usb_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = icmp eq %struct.usb_device* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %51

12:                                               ; preds = %3
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %13)
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load i32, i32* @SA_LOCKED, align 4
  %18 = call i32 @sx_assert(i32* %16, i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %28

26:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  %27 = load i64, i64* @USB_IFACE_MAX, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %34, i64 %35)
  store %struct.usb_interface* %36, %struct.usb_interface** %7, align 8
  %37 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %38 = icmp eq %struct.usb_interface* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 1
  %44 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @usb_detach_device_sub(%struct.usb_device* %41, i32* %43, i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %29

51:                                               ; preds = %11, %39, %29
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_device*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_detach_device_sub(%struct.usb_device*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
