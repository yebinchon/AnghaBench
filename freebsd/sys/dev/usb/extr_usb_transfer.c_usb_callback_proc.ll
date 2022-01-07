; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usb_callback_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usb_callback_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.usb_done_msg = type { %struct.usb_xfer_root* }
%struct.usb_xfer_root = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @usb_callback_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_callback_proc(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.usb_done_msg*, align 8
  %4 = alloca %struct.usb_xfer_root*, align 8
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %5 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %6 = bitcast %struct.usb_proc_msg* %5 to i8*
  %7 = bitcast i8* %6 to %struct.usb_done_msg*
  store %struct.usb_done_msg* %7, %struct.usb_done_msg** %3, align 8
  %8 = load %struct.usb_done_msg*, %struct.usb_done_msg** %3, align 8
  %9 = getelementptr inbounds %struct.usb_done_msg, %struct.usb_done_msg* %8, i32 0, i32 0
  %10 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %9, align 8
  store %struct.usb_xfer_root* %10, %struct.usb_xfer_root** %4, align 8
  %11 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %12 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @USB_BUS_UNLOCK(i32 %13)
  %15 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %16 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @USB_MTX_LOCK(i32 %17)
  %19 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %20 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @USB_BUS_LOCK(i32 %21)
  %23 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %24 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %23, i32 0, i32 1
  %25 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %26 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_command_wrapper(%struct.TYPE_2__* %24, i32 %28)
  %30 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %4, align 8
  %31 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @USB_MTX_UNLOCK(i32 %32)
  ret void
}

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @USB_MTX_LOCK(i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @usb_command_wrapper(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @USB_MTX_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
