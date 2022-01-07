; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_get_tdd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_get_tdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_temp_device_desc = type { i32 }
%struct.usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_temp_device_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_temp_device_desc* (%struct.usb_device*)* @usb_temp_get_tdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_temp_device_desc* @usb_temp_get_tdd(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_temp_device_desc*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %4 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.usb_temp_device_desc* null, %struct.usb_temp_device_desc** %2, align 8
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %13, align 8
  store %struct.usb_temp_device_desc* %14, %struct.usb_temp_device_desc** %2, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %2, align 8
  ret %struct.usb_temp_device_desc* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
