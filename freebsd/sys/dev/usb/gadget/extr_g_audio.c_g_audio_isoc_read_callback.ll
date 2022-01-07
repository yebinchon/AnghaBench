; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_isoc_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_isoc_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.g_audio_softc = type { i32, i32**, %struct.usb_xfer**, i32** }

@G_AUDIO_ISOC0_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"st=%d aframes=%d actlen=%d bytes\0A\00", align 1
@G_AUDIO_FRAMES = common dso_local global i32 0, align 4
@G_AUDIO_ISOC0_WR = common dso_local global i64 0, align 8
@G_AUDIO_ISOC1_WR = common dso_local global i64 0, align 8
@G_AUDIO_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @g_audio_isoc_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_audio_isoc_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_audio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.g_audio_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.g_audio_softc* %12, %struct.g_audio_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %15 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %14, i32 0, i32 2
  %16 = load %struct.usb_xfer**, %struct.usb_xfer*** %15, align 8
  %17 = load i64, i64* @G_AUDIO_ISOC0_RD, align 8
  %18 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %16, i64 %17
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %18, align 8
  %20 = icmp eq %struct.usb_xfer* %13, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  store i32 %22, i32* %8, align 4
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call i32 @usbd_xfer_status(%struct.usb_xfer* %23, i32* %6, i32* null, i32* %7, i32* null)
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = call i32 @USB_GET_STATE(%struct.usb_xfer* %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = call i32 @USB_GET_STATE(%struct.usb_xfer* %30)
  switch i32 %31, label %108 [
    i32 128, label %32
    i32 129, label %74
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %35 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %56, %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %43, i32 %44)
  %46 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %47 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %45, i32* %55, align 4
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %61 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %60, i32 0, i32 2
  %62 = load %struct.usb_xfer**, %struct.usb_xfer*** %61, align 8
  %63 = load i64, i64* @G_AUDIO_ISOC0_WR, align 8
  %64 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %62, i64 %63
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %64, align 8
  %66 = call i32 @usbd_transfer_start(%struct.usb_xfer* %65)
  %67 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %68 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %67, i32 0, i32 2
  %69 = load %struct.usb_xfer**, %struct.usb_xfer*** %68, align 8
  %70 = load i64, i64* @G_AUDIO_ISOC1_WR, align 8
  %71 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %69, i64 %70
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %71, align 8
  %73 = call i32 @usbd_transfer_start(%struct.usb_xfer* %72)
  br label %119

74:                                               ; preds = %2
  br label %75

75:                                               ; preds = %115, %74
  %76 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %77 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %102, %75
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %92 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %93 = sdiv i32 %91, %92
  %94 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %88, i32 %89, i32* %90, i32 %93)
  %95 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %96 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %97 = sdiv i32 %95, %96
  %98 = sdiv i32 %97, 2
  %99 = load i32*, i32** %9, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %9, align 8
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %83

105:                                              ; preds = %83
  %106 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %107 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %106)
  br label %119

108:                                              ; preds = %2
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @usbd_errstr(i32 %109)
  %111 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %117 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %116)
  br label %75

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %105, %59
  ret void
}

declare dso_local %struct.g_audio_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_start(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
