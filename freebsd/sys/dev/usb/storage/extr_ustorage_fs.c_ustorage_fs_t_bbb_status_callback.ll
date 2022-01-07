; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ustorage_fs_softc = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USTORAGE_FS_T_BBB_COMMAND = common dso_local global i32 0, align 4
@CSWSIGNATURE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ustorage_fs_t_bbb_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ustorage_fs_t_bbb_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ustorage_fs_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call %struct.ustorage_fs_softc* @usbd_xfer_softc(%struct.usb_xfer* %6)
  store %struct.ustorage_fs_softc* %7, %struct.ustorage_fs_softc** %5, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call i32 @USB_GET_STATE(%struct.usb_xfer* %9)
  switch i32 %10, label %50 [
    i32 128, label %11
    i32 129, label %15
  ]

11:                                               ; preds = %2
  %12 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %13 = load i32, i32* @USTORAGE_FS_T_BBB_COMMAND, align 4
  %14 = call i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc* %12, i32 %13)
  br label %64

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %63, %15
  %17 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSWSIGNATURE, align 4
  %23 = call i32 @USETDW(i32 %21, i32 %22)
  %24 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @USETDW(i32 %28, i32 %32)
  %34 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %16
  %40 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %44 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %43)
  br label %45

45:                                               ; preds = %39, %16
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %47 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %46, i32 0, i32 4)
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %48)
  br label %64

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %64

55:                                               ; preds = %50
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = call i32 @usbd_xfer_is_stalled(%struct.usb_xfer* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %16

64:                                               ; preds = %54, %45, %11
  ret void
}

declare dso_local %struct.ustorage_fs_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc*, i32) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_is_stalled(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
