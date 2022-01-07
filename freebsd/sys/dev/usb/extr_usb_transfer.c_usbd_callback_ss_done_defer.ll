; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_callback_ss_done_defer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_callback_ss_done_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.usb_xfer_root* }
%struct.usb_xfer_root = type { i32*, i32, i32, %struct.usb_xfer_queue }
%struct.usb_xfer_queue = type { i64, i32, %struct.usb_xfer* }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @usbd_callback_ss_done_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_callback_ss_done_defer(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_xfer_root*, align 8
  %4 = alloca %struct.usb_xfer_queue*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %5, i32 0, i32 0
  %7 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  store %struct.usb_xfer_root* %7, %struct.usb_xfer_root** %3, align 8
  %8 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %8, i32 0, i32 3
  store %struct.usb_xfer_queue* %9, %struct.usb_xfer_queue** %4, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 0
  %12 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %11, align 8
  %13 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @USB_BUS_LOCK_ASSERT(i32 %14, i32 %15)
  %17 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %4, align 8
  %18 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %17, i32 0, i32 2
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %18, align 8
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %21 = icmp ne %struct.usb_xfer* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %4, align 8
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %25 = call i32 @usbd_transfer_enqueue(%struct.usb_xfer_queue* %23, %struct.usb_xfer* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %4, align 8
  %28 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %33 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %36 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %40 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = call i32 @usb_proc_msignal(i32 %34, i32* %38, i32* %42)
  br label %47

44:                                               ; preds = %26
  %45 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %4, align 8
  %46 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %31
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @usbd_transfer_enqueue(%struct.usb_xfer_queue*, %struct.usb_xfer*) #1

declare dso_local i32 @usb_proc_msignal(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
