; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_unsetup_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_unsetup_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer_root = type { i32, i32, i32, %struct.usb_page_cache*, %struct.usb_page_cache*, %struct.usb_page_cache*, %struct.usb_page_cache*, %struct.TYPE_3__*, i32*, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer_root*, i64)* @usbd_transfer_unsetup_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbd_transfer_unsetup_sub(%struct.usb_xfer_root* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer_root*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.usb_xfer_root* %0, %struct.usb_xfer_root** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %6, i32 0, i32 7
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_3__* %8, i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %15 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @usbd_get_dma_delay(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %22 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %21, i32 0, i32 7
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @USB_MS_TO_TICKS(i64 %25)
  %27 = call i32 @usb_pause_mtx(i32* %24, i32 %26)
  br label %28

28:                                               ; preds = %20, %13
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %31 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %34 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %38 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %37, i32 0, i32 8
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = call i32 @usb_proc_mwait(i32 %32, i32* %36, i32* %40)
  %42 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %43 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %42, i32 0, i32 7
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_3__* %44)
  %46 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %47 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %46, i32 0, i32 1
  %48 = call i32 @cv_destroy(i32* %47)
  %49 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %3, align 8
  %50 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @M_USB, align 4
  %53 = call i32 @free(i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @usbd_get_dma_delay(i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i64) #1

declare dso_local i32 @usb_proc_mwait(i32, i32*, i32*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
