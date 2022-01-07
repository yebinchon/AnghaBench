; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_data_dump_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_data_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ustorage_fs_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USTORAGE_FS_T_BBB_STATUS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ustorage_fs_t_bbb_data_dump_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ustorage_fs_t_bbb_data_dump_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ustorage_fs_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ustorage_fs_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ustorage_fs_softc* %10, %struct.ustorage_fs_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %7, i32* %8, i32* null, i32* null)
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %76 [
    i32 128, label %18
    i32 129, label %45
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %18
  %41 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %42 = load i32, i32* @USTORAGE_FS_T_BBB_STATUS, align 4
  %43 = call i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc* %41, i32 %42)
  br label %90

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %2, %44
  br label %46

46:                                               ; preds = %89, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %49 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %60 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %66 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %69 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %71, i32 0, i32 %72)
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %75 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %74)
  br label %90

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %90

81:                                               ; preds = %76
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %83 = call i32 @usbd_xfer_is_stalled(%struct.usb_xfer* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %87 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %46

90:                                               ; preds = %80, %70, %40
  ret void
}

declare dso_local %struct.ustorage_fs_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc*, i32) #1

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
