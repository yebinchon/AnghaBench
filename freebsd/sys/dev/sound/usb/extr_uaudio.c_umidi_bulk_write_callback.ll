; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umidi_chan = type { i32, i64, i32, %struct.umidi_sub_chan* }
%struct.umidi_sub_chan = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"actlen=%d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USB_FIFO_TX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"byte=0x%02x from FIFO %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"sub=0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@UMIDI_TX_FRAMES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Transferring %d frames\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umidi_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umidi_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umidi_chan*, align 8
  %6 = alloca %struct.umidi_sub_chan*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call %struct.umidi_chan* @usbd_xfer_softc(%struct.usb_xfer* %14)
  store %struct.umidi_chan* %15, %struct.umidi_chan** %5, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @usbd_xfer_status(%struct.usb_xfer* %16, i32* %13, i32* null, i32* null, i32* null)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %155 [
    i32 128, label %20
    i32 129, label %23
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %13, align 4
  %22 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %2, %20
  br label %24

24:                                               ; preds = %162, %23
  %25 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  %26 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %27 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %29, i32 0)
  store %struct.usb_page_cache* %30, %struct.usb_page_cache** %7, align 8
  br label %31

31:                                               ; preds = %24, %112, %141
  %32 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %33 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %32, i32 0, i32 3
  %34 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %33, align 8
  %35 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %36 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %34, i64 %38
  store %struct.umidi_sub_chan* %39, %struct.umidi_sub_chan** %6, align 8
  %40 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %41 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %46 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @USB_FIFO_TX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_fifo_get_data_linear(i32 %51, i32* %10, i32 1, i32* %8, i32 0)
  br label %54

53:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %60 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %64 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %65 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @umidi_convert_to_usb(%struct.umidi_sub_chan* %63, i64 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %57
  %72 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %73 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %78 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %83 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %88 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %81, i32 %86, i32 %91)
  %93 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %94, 4
  %96 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %6, align 8
  %97 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @usbd_copy_in(%struct.usb_page_cache* %93, i32 %95, i32* %98, i32 4)
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @UMIDI_TX_FRAMES, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %71
  %106 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %107 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %71
  br label %142

111:                                              ; preds = %105
  br label %113

112:                                              ; preds = %57
  br label %31

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %54
  %115 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %116 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %120 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %124 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp uge i64 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %129 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %114
  %131 = load %struct.umidi_chan*, %struct.umidi_chan** %5, align 8
  %132 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %142

140:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %140, %130
  br label %31

142:                                              ; preds = %139, %110
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %149 = load i32, i32* %9, align 4
  %150 = mul nsw i32 4, %149
  %151 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %148, i32 0, i32 %150)
  %152 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %153 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %152)
  br label %154

154:                                              ; preds = %145, %142
  br label %166

155:                                              ; preds = %2
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @usbd_errstr(i32 %156)
  %158 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %164 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %163)
  br label %24

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %154
  ret void
}

declare dso_local %struct.umidi_chan* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usb_fifo_get_data_linear(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @umidi_convert_to_usb(%struct.umidi_sub_chan*, i64, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
