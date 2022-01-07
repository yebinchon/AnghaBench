; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_data_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_data_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ustorage_fs_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USTORAGE_FS_T_BBB_STATUS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ustorage_fs_t_bbb_data_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ustorage_fs_t_bbb_data_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
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
  switch i32 %17, label %94 [
    i32 128, label %18
    i32 129, label %60
  ]

18:                                               ; preds = %2
  %19 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memcpy(i32 %22, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %18
  %50 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %51 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %18
  %56 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %57 = load i32, i32* @USTORAGE_FS_T_BBB_STATUS, align 4
  %58 = call i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc* %56, i32 %57)
  br label %108

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %2, %59
  br label %61

61:                                               ; preds = %107, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %70 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %75 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %83)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %87 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %88 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %86, i32 0, i32 %89, i32 %90)
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %93 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %92)
  br label %108

94:                                               ; preds = %2
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %108

99:                                               ; preds = %94
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = call i32 @usbd_xfer_is_stalled(%struct.usb_xfer* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %105 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %99
  br label %61

108:                                              ; preds = %98, %85, %55
  ret void
}

declare dso_local %struct.ustorage_fs_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc*, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_is_stalled(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
