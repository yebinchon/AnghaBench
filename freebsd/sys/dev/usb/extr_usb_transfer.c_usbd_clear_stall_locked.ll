; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_clear_stall_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_clear_stall_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_6__*, i32*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.usb_device*, %struct.usb_endpoint*)* }
%struct.TYPE_4__ = type { i64 }
%struct.usb_endpoint = type { i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_clear_stall_locked(%struct.usb_device* %0, %struct.usb_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %4, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_6__* %7, i32 %8)
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_MODE_HOST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*)** %27, align 8
  %29 = icmp ne i32 (%struct.usb_device*, %struct.usb_endpoint*)* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*)** %41, align 8
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %45 = call i32 %42(%struct.usb_device* %43, %struct.usb_endpoint* %44)
  br label %46

46:                                               ; preds = %35, %30, %21, %16, %2
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
