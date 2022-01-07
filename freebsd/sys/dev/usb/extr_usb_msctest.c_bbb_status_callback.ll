; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.bbb_transfer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_ERR_SHORT_XFER = common dso_local global i32 0, align 4
@CSWSTATUS_GOOD = common dso_local global i32 0, align 4
@ERR_CSW_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to read CSW: %s, try %d\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@ST_DATA_RD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @bbb_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbb_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bbb_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.bbb_transfer* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.bbb_transfer* %9, %struct.bbb_transfer** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %6, i32* %7, i32* null, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  switch i32 %13, label %43 [
    i32 128, label %14
    i32 129, label %38
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %19 = load i32, i32* @USB_ERR_SHORT_XFER, align 4
  %20 = call i32 @bbb_done(%struct.bbb_transfer* %18, i32 %19)
  br label %37

21:                                               ; preds = %14
  %22 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %23 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CSWSTATUS_GOOD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %31 = call i32 @bbb_done(%struct.bbb_transfer* %30, i32 0)
  br label %36

32:                                               ; preds = %21
  %33 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %34 = load i32, i32* @ERR_CSW_FAILED, align 4
  %35 = call i32 @bbb_done(%struct.bbb_transfer* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %17
  br label %69

38:                                               ; preds = %2
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %40 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %39, i32 0, i32 4)
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %42 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %41)
  br label %69

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @usbd_errstr(i32 %44)
  %46 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %47 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %55 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %43
  %59 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bbb_done(%struct.bbb_transfer* %59, i32 %60)
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %64 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %66 = load i32, i32* @ST_DATA_RD_CS, align 4
  %67 = call i32 @bbb_transfer_start(%struct.bbb_transfer* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %38, %37
  ret void
}

declare dso_local %struct.bbb_transfer* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @bbb_done(%struct.bbb_transfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @bbb_transfer_start(%struct.bbb_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
