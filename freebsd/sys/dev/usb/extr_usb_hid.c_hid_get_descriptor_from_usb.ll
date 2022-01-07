; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_get_descriptor_from_usb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_get_descriptor_from_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hid_descriptor = type opaque
%struct.usb_config_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_descriptor = type { i64, i64 }

@UDESC_HID = common dso_local global i64 0, align 8
@UDESC_INTERFACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_hid_descriptor* @hid_get_descriptor_from_usb(%struct.usb_config_descriptor* %0, %struct.usb_interface_descriptor* %1) #0 {
  %3 = alloca %struct.usb_hid_descriptor*, align 8
  %4 = alloca %struct.usb_config_descriptor*, align 8
  %5 = alloca %struct.usb_interface_descriptor*, align 8
  %6 = alloca %struct.usb_descriptor*, align 8
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %4, align 8
  store %struct.usb_interface_descriptor* %1, %struct.usb_interface_descriptor** %5, align 8
  %7 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %8 = bitcast %struct.usb_interface_descriptor* %7 to i8*
  %9 = bitcast i8* %8 to %struct.usb_descriptor*
  store %struct.usb_descriptor* %9, %struct.usb_descriptor** %6, align 8
  %10 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %11 = icmp eq %struct.usb_descriptor* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.usb_hid_descriptor* null, %struct.usb_hid_descriptor** %3, align 8
  br label %44

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %42, %13
  %15 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %16 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %17 = call %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor* %15, %struct.usb_descriptor* %16)
  store %struct.usb_descriptor* %17, %struct.usb_descriptor** %6, align 8
  %18 = icmp ne %struct.usb_descriptor* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UDESC_HID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %27 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @USB_HID_DESCRIPTOR_SIZE(i32 0)
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %33 = bitcast %struct.usb_descriptor* %32 to i8*
  %34 = bitcast i8* %33 to %struct.usb_hid_descriptor*
  store %struct.usb_hid_descriptor* %34, %struct.usb_hid_descriptor** %3, align 8
  br label %44

35:                                               ; preds = %25, %19
  %36 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %37 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UDESC_INTERFACE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %43

42:                                               ; preds = %35
  br label %14

43:                                               ; preds = %41, %14
  store %struct.usb_hid_descriptor* null, %struct.usb_hid_descriptor** %3, align 8
  br label %44

44:                                               ; preds = %43, %31, %12
  %45 = load %struct.usb_hid_descriptor*, %struct.usb_hid_descriptor** %3, align 8
  ret %struct.usb_hid_descriptor* %45
}

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor*, %struct.usb_descriptor*) #1

declare dso_local i64 @USB_HID_DESCRIPTOR_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
