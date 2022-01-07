; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_endpoint_foreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_endpoint_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.usb_endpoint* }
%struct.usb_endpoint = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_endpoint* @usb_endpoint_foreach(%struct.usb_device* %0, %struct.usb_endpoint* %1) #0 {
  %3 = alloca %struct.usb_endpoint*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %5, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = icmp eq %struct.usb_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.usb_endpoint* null, %struct.usb_endpoint** %3, align 8
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 1
  %13 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %13, i64 %17
  store %struct.usb_endpoint* %18, %struct.usb_endpoint** %6, align 8
  %19 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %20 = icmp eq %struct.usb_endpoint* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 1
  %24 = load %struct.usb_endpoint*, %struct.usb_endpoint** %23, align 8
  store %struct.usb_endpoint* %24, %struct.usb_endpoint** %5, align 8
  br label %28

25:                                               ; preds = %10
  %26 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %26, i32 1
  store %struct.usb_endpoint* %27, %struct.usb_endpoint** %5, align 8
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %40, %28
  %30 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %31 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %32 = icmp ne %struct.usb_endpoint* %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %35 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  store %struct.usb_endpoint* %39, %struct.usb_endpoint** %3, align 8
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %41, i32 1
  store %struct.usb_endpoint* %42, %struct.usb_endpoint** %5, align 8
  br label %29

43:                                               ; preds = %29
  store %struct.usb_endpoint* null, %struct.usb_endpoint** %3, align 8
  br label %44

44:                                               ; preds = %43, %38, %9
  %45 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  ret %struct.usb_endpoint* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
