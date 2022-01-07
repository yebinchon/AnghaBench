; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_clear_stall_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_clear_stall_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32*, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_request = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"NULL input parameter\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@UT_WRITE_ENDPOINT = common dso_local global i32 0, align 4
@UR_CLEAR_FEATURE = common dso_local global i32 0, align 4
@UF_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_clear_stall_callback(%struct.usb_xfer* %0, %struct.usb_xfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca %struct.usb_device_request, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %4, align 8
  store %struct.usb_xfer* %1, %struct.usb_xfer** %5, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %8 = icmp eq %struct.usb_xfer* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

11:                                               ; preds = %2
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %12, i32 %13)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %15, i32 %16)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %67 [
    i32 129, label %20
    i32 128, label %66
  ]

20:                                               ; preds = %11
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %22 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @usbd_clear_data_toggle(i32 %25, %struct.TYPE_6__* %28)
  %30 = load i32, i32* @UT_WRITE_ENDPOINT, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @UR_CLEAR_FEATURE, align 4
  %33 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UF_ENDPOINT_HALT, align 4
  %37 = call i32 @USETW(i32 %35, i32 %36)
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @USETW(i32 %52, i32 0)
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @usbd_copy_in(i32 %56, i32 0, %struct.usb_device_request* %6, i32 32)
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 32, i32* %61, align 4
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %65 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %64)
  store i32 0, i32* %3, align 4
  br label %76

66:                                               ; preds = %11
  br label %75

67:                                               ; preds = %11
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %69 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %76

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %73, %20, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_clear_data_toggle(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, %struct.usb_device_request*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
