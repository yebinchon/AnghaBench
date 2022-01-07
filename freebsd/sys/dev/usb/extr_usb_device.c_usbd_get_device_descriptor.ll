; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_get_device_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_get_device_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_descriptor = type { i32 }
%struct.usb_device = type { %struct.usb_device_descriptor }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_device_descriptor* @usbd_get_device_descriptor(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device_descriptor*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %4 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %5 = icmp eq %struct.usb_device* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.usb_device_descriptor* null, %struct.usb_device_descriptor** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  store %struct.usb_device_descriptor* %9, %struct.usb_device_descriptor** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %2, align 8
  ret %struct.usb_device_descriptor* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
