; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_get_descriptor_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_control_ep_test.c_usb_get_descriptor_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_get_descriptor_test(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.libusb20_device* @find_usb_device(i32 %8, i32 %9)
  store %struct.libusb20_device* %10, %struct.libusb20_device** %7, align 8
  %11 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %12 = icmp eq %struct.libusb20_device* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %18

15:                                               ; preds = %3
  %16 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %17 = call i32 @libusb20_dev_free(%struct.libusb20_device* %16)
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
