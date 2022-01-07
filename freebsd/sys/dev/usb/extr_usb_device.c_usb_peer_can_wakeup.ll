; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_peer_can_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_peer_can_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__, %struct.usb_config_descriptor* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_config_descriptor = type { i32 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@UC_REMOTE_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_peer_can_wakeup(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1
  %7 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %6, align 8
  store %struct.usb_config_descriptor* %7, %struct.usb_config_descriptor** %4, align 8
  %8 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %9 = icmp ne %struct.usb_config_descriptor* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_MODE_HOST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UC_REMOTE_WAKEUP, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
