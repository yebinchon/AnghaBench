; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_config_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_config_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_config_descriptor = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"confidx=%d\0A\00", align 1
@UDESC_CONFIG = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_get_config_desc(%struct.usb_device* %0, %struct.mtx* %1, %struct.usb_config_descriptor* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca %struct.usb_config_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mtx* %1, %struct.mtx** %6, align 8
  store %struct.usb_config_descriptor* %2, %struct.usb_config_descriptor** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = load %struct.mtx*, %struct.mtx** %6, align 8
  %14 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %7, align 8
  %15 = load i32, i32* @UDESC_CONFIG, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @usbd_req_get_desc(%struct.usb_device* %12, %struct.mtx* %13, i32* null, %struct.usb_config_descriptor* %14, i32 4, i32 4, i32 0, i32 %15, i32 %16, i32 0)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %30

21:                                               ; preds = %4
  %22 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %7, align 8
  %23 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @UGETW(i32 %24)
  %26 = icmp slt i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %27, %21
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i64, i64* %9, align 8
  ret i64 %31
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i64 @usbd_req_get_desc(%struct.usb_device*, %struct.mtx*, i32*, %struct.usb_config_descriptor*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
