; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usbd_get_no_descriptors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_parse.c_usbd_get_no_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32 }
%struct.usb_descriptor = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_get_no_descriptors(%struct.usb_config_descriptor* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_config_descriptor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_descriptor*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %25, %2
  %8 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %9 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %10 = call %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor* %8, %struct.usb_descriptor* %9)
  store %struct.usb_descriptor* %10, %struct.usb_descriptor** %5, align 8
  %11 = icmp ne %struct.usb_descriptor* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %14 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %26

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %12
  br label %7

26:                                               ; preds = %23, %7
  %27 = load i64, i64* %6, align 8
  ret i64 %27
}

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor*, %struct.usb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
