; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_get_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_get_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32, %struct.usb_interface* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i64 %11
  store %struct.usb_interface* %12, %struct.usb_interface** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.usb_interface* null, %struct.usb_interface** %3, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  store %struct.usb_interface* %20, %struct.usb_interface** %3, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  ret %struct.usb_interface* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
