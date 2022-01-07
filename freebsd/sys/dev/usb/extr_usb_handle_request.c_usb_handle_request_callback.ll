; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_handle_request.c_usb_handle_request_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_handle_request.c_usb_handle_request_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@USB_ERR_BAD_CONTEXT = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_handle_request_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call i32 @USB_GET_STATE(%struct.usb_xfer* %6)
  switch i32 %7, label %28 [
    i32 129, label %8
    i32 128, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call i32 @usb_handle_request(%struct.usb_xfer* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @USB_ERR_BAD_CONTEXT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_needs_explore(i32 %22, i32 0)
  br label %45

24:                                               ; preds = %13
  br label %46

25:                                               ; preds = %8
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %27 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %26)
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 65535
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = call i32 @usb_handle_request(%struct.usb_xfer* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %46

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %25, %17
  br label %61

46:                                               ; preds = %43, %24
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %48 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %47, i32 0, i32 4)
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %58 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %57)
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %59)
  br label %61

61:                                               ; preds = %46, %45
  ret void
}

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usb_handle_request(%struct.usb_xfer*) #1

declare dso_local i32 @usb_needs_explore(i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
