; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.usb_xfer_queue* }
%struct.usb_xfer_queue = type { i32 }

@wait_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_dequeue(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_xfer_queue*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %4, i32 0, i32 0
  %6 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %5, align 8
  store %struct.usb_xfer_queue* %6, %struct.usb_xfer_queue** %3, align 8
  %7 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %8 = icmp ne %struct.usb_xfer_queue* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.usb_xfer_queue*, %struct.usb_xfer_queue** %3, align 8
  %11 = getelementptr inbounds %struct.usb_xfer_queue, %struct.usb_xfer_queue* %10, i32 0, i32 0
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = load i32, i32* @wait_entry, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.usb_xfer* %12, i32 %13)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 0
  store %struct.usb_xfer_queue* null, %struct.usb_xfer_queue** %16, align 8
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
