; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usbd_get_no_alts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usbd_get_no_alts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i64 }
%struct.usb_descriptor = type { i64, i32 }

@UDESC_INTERFACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_get_no_alts(%struct.usb_config_descriptor* %0, %struct.usb_interface_descriptor* %1) #0 {
  %3 = alloca %struct.usb_config_descriptor*, align 8
  %4 = alloca %struct.usb_interface_descriptor*, align 8
  %5 = alloca %struct.usb_descriptor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %3, align 8
  store %struct.usb_interface_descriptor* %1, %struct.usb_interface_descriptor** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %9 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %5, align 8
  br label %11

11:                                               ; preds = %44, %2
  %12 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %13 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %14 = call %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor* %12, %struct.usb_descriptor* %13)
  store %struct.usb_descriptor* %14, %struct.usb_descriptor** %5, align 8
  %15 = icmp ne %struct.usb_descriptor* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %18 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UDESC_INTERFACE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 8
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %30 = bitcast %struct.usb_descriptor* %29 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %30, %struct.usb_interface_descriptor** %4, align 8
  %31 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %4, align 8
  %32 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 255
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %45

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %22, %16
  br label %11

45:                                               ; preds = %41, %11
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor*, %struct.usb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
