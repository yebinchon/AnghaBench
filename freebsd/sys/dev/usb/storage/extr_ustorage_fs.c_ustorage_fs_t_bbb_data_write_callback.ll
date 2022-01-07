; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_data_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_t_bbb_data_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ustorage_fs_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USTORAGE_FS_T_BBB_STATUS = common dso_local global i32 0, align 4
@USB_FORCE_SHORT_XFER = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ustorage_fs_t_bbb_data_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ustorage_fs_t_bbb_data_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
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
  switch i32 %17, label %112 [
    i32 128, label %18
    i32 129, label %51
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
  %32 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %33 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %18
  %41 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %18
  %47 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %48 = load i32, i32* @USTORAGE_FS_T_BBB_STATUS, align 4
  %49 = call i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc* %47, i32 %48)
  br label %126

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %2, %50
  br label %52

52:                                               ; preds = %125, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %53, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %52
  %60 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = load i32, i32* @USB_FORCE_SHORT_XFER, align 4
  %72 = call i32 @usbd_xfer_set_flag(%struct.usb_xfer* %70, i32 %71)
  br label %77

73:                                               ; preds = %59
  %74 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %75 = load i32, i32* @USB_FORCE_SHORT_XFER, align 4
  %76 = call i32 @usbd_xfer_clr_flag(%struct.usb_xfer* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  br label %82

78:                                               ; preds = %52
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = load i32, i32* @USB_FORCE_SHORT_XFER, align 4
  %81 = call i32 @usbd_xfer_clr_flag(%struct.usb_xfer* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %77
  %83 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %84 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %90 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %93 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %99 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @memcpy(i32 %97, i32 %101, i32 %102)
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %105 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %104, i32 0, i32 %107, i32 %108)
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %111 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %110)
  br label %126

112:                                              ; preds = %2
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %126

117:                                              ; preds = %112
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = call i32 @usbd_xfer_is_stalled(%struct.usb_xfer* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %123 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %52

126:                                              ; preds = %116, %94, %46
  ret void
}

declare dso_local %struct.ustorage_fs_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc*, i32) #1

declare dso_local i32 @usbd_xfer_set_flag(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_clr_flag(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_is_stalled(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
