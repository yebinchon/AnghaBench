; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_device_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_device_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32 }

@DUMP0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_device_desc(%struct.libusb20_device* %0) #0 {
  %2 = alloca %struct.libusb20_device*, align 8
  %3 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %2, align 8
  %4 = load %struct.libusb20_device*, %struct.libusb20_device** %2, align 8
  %5 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %4)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %5, %struct.LIBUSB20_DEVICE_DESC_DECODED** %3, align 8
  %6 = load i32, i32* @DUMP0, align 4
  %7 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %3, align 8
  %8 = call i32 @LIBUSB20_DEVICE_DESC(i32 %6, %struct.LIBUSB20_DEVICE_DESC_DECODED* %7)
  ret void
}

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

declare dso_local i32 @LIBUSB20_DEVICE_DESC(i32, %struct.LIBUSB20_DEVICE_DESC_DECODED*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
