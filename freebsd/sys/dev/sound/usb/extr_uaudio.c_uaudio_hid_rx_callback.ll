; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_hid_rx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_hid_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.uaudio_softc = type { %struct.TYPE_2__, %struct.snd_mixer* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_mixer = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"actlen=%d\0A\00", align 1
@UAUDIO_HID_HAS_ID = common dso_local global i32 0, align 4
@UAUDIO_HID_HAS_MUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Mute toggle\0A\00", align 1
@UAUDIO_HID_HAS_VOLUME_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Volume Up\0A\00", align 1
@UAUDIO_HID_HAS_VOLUME_DOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Volume Down\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uaudio_hid_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_hid_rx_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uaudio_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.snd_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uaudio_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uaudio_softc* %11, %struct.uaudio_softc** %5, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32* @usbd_xfer_get_frame_buffer(%struct.usb_xfer* %12, i32 0)
  store i32* %13, i32** %6, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %9, i32* null, i32* null, i32* null)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %132 [
    i32 128, label %18
    i32 129, label %124
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %25 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UAUDIO_HID_HAS_ID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  br label %39

38:                                               ; preds = %23, %18
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %40, i32 0, i32 1
  %42 = load %struct.snd_mixer*, %struct.snd_mixer** %41, align 8
  store %struct.snd_mixer* %42, %struct.snd_mixer** %7, align 8
  %43 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @UAUDIO_HID_HAS_MUTE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  %51 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %52 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %61 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = call i32 @hid_get_data(i32* %58, i32 %59, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %68 = call i32 @mixer_hwvol_mute_locked(%struct.snd_mixer* %67)
  br label %69

69:                                               ; preds = %65, %57, %50, %39
  %70 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %71 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @UAUDIO_HID_HAS_VOLUME_UP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %69
  %78 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %79 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %88 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = call i32 @hid_get_data(i32* %85, i32 %86, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %94 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %95 = call i32 @mixer_hwvol_step_locked(%struct.snd_mixer* %94, i32 1, i32 1)
  br label %96

96:                                               ; preds = %92, %84, %77, %69
  %97 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %98 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @UAUDIO_HID_HAS_VOLUME_DOWN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %106 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %104
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %115 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = call i32 @hid_get_data(i32* %112, i32 %113, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %122 = call i32 @mixer_hwvol_step_locked(%struct.snd_mixer* %121, i32 -1, i32 -1)
  br label %123

123:                                              ; preds = %119, %111, %104, %96
  br label %124

124:                                              ; preds = %2, %123
  br label %125

125:                                              ; preds = %139, %124
  %126 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %128 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %127)
  %129 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %126, i32 0, i32 %128)
  %130 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %131 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %130)
  br label %143

132:                                              ; preds = %2
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @usbd_errstr(i32 %133)
  %135 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %141 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %140)
  br label %125

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %125
  ret void
}

declare dso_local %struct.uaudio_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32* @usbd_xfer_get_frame_buffer(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @hid_get_data(i32*, i32, i32*) #1

declare dso_local i32 @mixer_hwvol_mute_locked(%struct.snd_mixer*) #1

declare dso_local i32 @mixer_hwvol_step_locked(%struct.snd_mixer*, i32, i32) #1

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
