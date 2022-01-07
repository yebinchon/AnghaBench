; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_suspend_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_suspend_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"udev=%p do_suspend=%d\0A\00", align 1
@SA_LOCKED = common dso_local global i32 0, align 4
@USB_IFACE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_suspend_resume(%struct.usb_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = icmp eq %struct.usb_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %12, i64 %13)
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 2
  %17 = load i32, i32* @SA_LOCKED, align 4
  %18 = call i32 @sx_assert(i32* %16, i32 %17)
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @USB_BUS_LOCK(i32 %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @USB_BUS_UNLOCK(i32 %32)
  store i32 0, i32* %3, align 4
  br label %65

34:                                               ; preds = %11
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @USB_BUS_UNLOCK(i32 %41)
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %61, %34
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @USB_IFACE_MAX, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %48, i64 %49)
  store %struct.usb_interface* %50, %struct.usb_interface** %6, align 8
  %51 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %52 = icmp eq %struct.usb_interface* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %64

54:                                               ; preds = %47
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @usb_suspend_resume_sub(%struct.usb_device* %55, i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %43

64:                                               ; preds = %53, %43
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %29, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_device*, i64) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

declare dso_local i32 @usb_suspend_resume_sub(%struct.usb_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
