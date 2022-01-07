; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_data_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_data_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.bbb_transfer = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"max_bulk=%d, data_rem=%d\0A\00", align 1
@ST_STATUS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@ST_DATA_RD_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @bbb_data_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbb_data_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bbb_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.bbb_transfer* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.bbb_transfer* %10, %struct.bbb_transfer** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %7, i32* %8, i32* null, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %78 [
    i32 128, label %17
    i32 129, label %40
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %20 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %30 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %17
  br label %40

40:                                               ; preds = %2, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %43 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %47 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %52 = load i32, i32* @ST_STATUS, align 4
  %53 = call i32 @bbb_transfer_start(%struct.bbb_transfer* %51, i32 %52)
  br label %91

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %57 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %62 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %67 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbd_xfer_set_timeout(%struct.usb_xfer* %65, i32 %68)
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %72 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %70, i32 0, i32 %73, i32 %74)
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %76)
  br label %91

78:                                               ; preds = %2
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @bbb_done(%struct.bbb_transfer* %83, i32 %84)
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.bbb_transfer*, %struct.bbb_transfer** %5, align 8
  %88 = load i32, i32* @ST_DATA_RD_CS, align 4
  %89 = call i32 @bbb_transfer_start(%struct.bbb_transfer* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %64, %50
  ret void
}

declare dso_local %struct.bbb_transfer* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i32 @bbb_transfer_start(%struct.bbb_transfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_timeout(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @bbb_done(%struct.bbb_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
