; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_peer_should_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_peer_should_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64*, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@USB_POWER_MODE_ON = common dso_local global i64 0, align 8
@USB_MODE_HOST = common dso_local global i64 0, align 8
@USB_RE_ENUM_DONE = common dso_local global i64 0, align 8
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @usb_peer_should_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_peer_should_wakeup(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %3 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %4 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @USB_POWER_MODE_ON, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_MODE_HOST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %65, label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %18, %23
  br i1 %24, label %65, label %25

25:                                               ; preds = %15
  %26 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_RE_ENUM_DONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %25
  %32 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %31
  %41 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %40
  %47 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @USB_MODE_HOST, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %61 = call i64 @usb_peer_can_wakeup(%struct.usb_device* %60)
  %62 = icmp eq i64 %61, 0
  br label %63

63:                                               ; preds = %59, %52, %46
  %64 = phi i1 [ false, %52 ], [ false, %46 ], [ %62, %59 ]
  br label %65

65:                                               ; preds = %63, %40, %31, %25, %15, %8
  %66 = phi i1 [ true, %40 ], [ true, %31 ], [ true, %25 ], [ true, %15 ], [ true, %8 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local i64 @usb_peer_can_wakeup(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
