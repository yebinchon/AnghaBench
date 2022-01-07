; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_clear_data_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_clear_data_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_endpoint = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"udev=%p endpoint=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_clear_data_toggle(%struct.usb_device* %0, %struct.usb_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %4, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %7 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %5, %struct.usb_endpoint* %6)
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @USB_BUS_LOCK(i32 %10)
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %13 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %16 = call i32 @usbd_clear_stall_locked(%struct.usb_device* %14, %struct.usb_endpoint* %15)
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USB_BUS_UNLOCK(i32 %19)
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_device*, %struct.usb_endpoint*) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @usbd_clear_stall_locked(%struct.usb_device*, %struct.usb_endpoint*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
