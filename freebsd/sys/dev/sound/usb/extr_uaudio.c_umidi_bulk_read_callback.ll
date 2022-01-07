; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umidi_chan = type { i32, %struct.umidi_sub_chan* }
%struct.umidi_sub_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"actlen=%d bytes\0A\00", align 1
@umidi_cmd_to_len = common dso_local global i32* null, align 8
@USB_FIFO_RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umidi_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umidi_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umidi_chan*, align 8
  %6 = alloca %struct.umidi_sub_chan*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call %struct.umidi_chan* @usbd_xfer_softc(%struct.usb_xfer* %13)
  store %struct.umidi_chan* %14, %struct.umidi_chan** %5, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @usbd_xfer_status(%struct.usb_xfer* %15, i32* %12, i32* null, i32* null, i32* null)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %88 [
    i32 128, label %19
    i32 129, label %79
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %12, align 4
  %21 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %11, align 4
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %22, i32 0)
  store %struct.usb_page_cache* %23, %struct.usb_page_cache** %7, align 8
  br label %24

24:                                               ; preds = %73, %19
  %25 = load i32, i32* %12, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %78

27:                                               ; preds = %24
  %28 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %31 = call i32 @usbd_copy_out(%struct.usb_page_cache* %28, i32 %29, i32* %30, i32 4)
  %32 = load i32*, i32** @umidi_cmd_to_len, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = and i32 %34, 15
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %43 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %42, i32 0, i32 1
  %44 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %44, i64 %46
  store %struct.umidi_sub_chan* %47, %struct.umidi_sub_chan** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %27
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %53 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %58 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %63 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @USB_FIFO_RX, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @usb_fifo_put_data_linear(i32 %68, i32* %70, i32 %71, i32 1)
  br label %73

73:                                               ; preds = %61, %56, %50, %27
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %74, 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %11, align 4
  br label %24

78:                                               ; preds = %24
  br label %79

79:                                               ; preds = %2, %78
  %80 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %95, %79
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %83)
  %85 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %82, i32 0, i32 %84)
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %87 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %86)
  br label %99

88:                                               ; preds = %2
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @usbd_errstr(i32 %89)
  %91 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %97 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %96)
  br label %81

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %81
  ret void
}

declare dso_local %struct.umidi_chan* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usb_fifo_put_data_linear(i32, i32*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
