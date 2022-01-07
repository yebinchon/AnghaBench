; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_reset_iface_endpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_reset_iface_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.usb_endpoint* }
%struct.usb_endpoint = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_reset_iface_endpoints(%struct.usb_device* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  store %struct.usb_endpoint* %9, %struct.usb_endpoint** %5, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 1
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %11, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %12, i64 %16
  store %struct.usb_endpoint* %17, %struct.usb_endpoint** %6, align 8
  br label %18

18:                                               ; preds = %38, %2
  %19 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %20 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %21 = icmp ne %struct.usb_endpoint* %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %24 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %29 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %22
  br label %38

34:                                               ; preds = %27
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %37 = call i32 @usbd_set_endpoint_stall(%struct.usb_device* %35, %struct.usb_endpoint* %36, i32 0)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %40 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %39, i32 1
  store %struct.usb_endpoint* %40, %struct.usb_endpoint** %5, align 8
  br label %18

41:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @usbd_set_endpoint_stall(%struct.usb_device*, %struct.usb_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
