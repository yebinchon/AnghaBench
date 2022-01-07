; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.usb_xfer_root*, i64, %struct.TYPE_2__ }
%struct.usb_xfer_root = type { i32, %struct.usb_xfer_queue }
%struct.usb_xfer_queue = type { %struct.usb_xfer* }
%struct.TYPE_2__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_transfer_pending(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.usb_xfer_root*, align 8
  %5 = alloca %struct.usb_xfer_queue*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = icmp eq %struct.usb_xfer* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

9:                                                ; preds = %1
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %10, i32 %11)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %62

19:                                               ; preds = %9
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 0
  %22 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %21, align 8
  %23 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @USB_BUS_LOCK(i32 %24)
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 0
  %33 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %32, align 8
  %34 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @USB_BUS_UNLOCK(i32 %35)
  store i32 1, i32* %2, align 4
  br label %62

37:                                               ; preds = %19
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 0
  %40 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %39, align 8
  store %struct.usb_xfer_root* %40, %struct.usb_xfer_root** %4, align 8
  %41 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %42 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %41, i32 0, i32 1
  store %struct.usb_xfer_queue* %42, %struct.usb_xfer_queue** %5, align 8
  %43 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %5, align 8
  %44 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %43, i32 0, i32 0
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %44, align 8
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = icmp eq %struct.usb_xfer* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 0
  %51 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %50, align 8
  %52 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @USB_BUS_UNLOCK(i32 %53)
  store i32 1, i32* %2, align 4
  br label %62

55:                                               ; preds = %37
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 0
  %58 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %57, align 8
  %59 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @USB_BUS_UNLOCK(i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %48, %30, %18, %8
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
