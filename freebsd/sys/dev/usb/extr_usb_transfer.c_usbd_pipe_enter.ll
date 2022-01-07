; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_pipe_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_pipe_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_6__*, i64, %struct.TYPE_4__, %struct.usb_endpoint* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_endpoint = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.usb_xfer*)* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_pipe_enter(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.usb_endpoint*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %4, i32 %5)
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @USB_BUS_LOCK(i32 %11)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 4
  %15 = load %struct.usb_endpoint*, %struct.usb_endpoint** %14, align 8
  store %struct.usb_endpoint* %15, %struct.usb_endpoint** %3, align 8
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %23, align 8
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %26 = call i32 %24(%struct.usb_xfer* %25)
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %28 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %33 = call i32 @usbd_transfer_done(%struct.usb_xfer* %32, i32 0)
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USB_BUS_UNLOCK(i32 %38)
  br label %56

40:                                               ; preds = %1
  %41 = load %struct.usb_endpoint*, %struct.usb_endpoint** %3, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %49 = call i32 @usb_command_wrapper(i32* %47, %struct.usb_xfer* %48)
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %51 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @USB_BUS_UNLOCK(i32 %54)
  br label %56

56:                                               ; preds = %40, %31
  ret void
}

declare dso_local i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usbd_transfer_done(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @usb_command_wrapper(i32*, %struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
