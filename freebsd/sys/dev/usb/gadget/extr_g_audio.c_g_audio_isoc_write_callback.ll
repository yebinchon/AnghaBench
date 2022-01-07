; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_isoc_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_isoc_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.g_audio_softc = type { i32, i32**, i32, i32**, %struct.usb_xfer** }

@G_AUDIO_ISOC0_WR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"st=%d aframes=%d actlen=%d bytes\0A\00", align 1
@G_AUDIO_MODE_LOOP = common dso_local global i32 0, align 4
@G_AUDIO_MODE_PATTERN = common dso_local global i32 0, align 4
@G_AUDIO_FRAMES = common dso_local global i32 0, align 4
@G_AUDIO_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @g_audio_isoc_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_audio_isoc_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
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
  %15 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %14, i32 0, i32 4
  %16 = load %struct.usb_xfer**, %struct.usb_xfer*** %15, align 8
  %17 = load i64, i64* @G_AUDIO_ISOC0_WR, align 8
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
  switch i32 %31, label %154 [
    i32 128, label %32
    i32 129, label %45
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %35 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %39 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @G_AUDIO_MODE_LOOP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %165

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %2, %44
  br label %46

46:                                               ; preds = %161, %45
  %47 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %48 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %47, i32 0, i32 3
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %9, align 8
  %54 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %55 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @G_AUDIO_MODE_PATTERN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %69 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %65, i32 %66, i32* %67, i32 %78)
  %80 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %83 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %84 = sdiv i32 %82, %83
  %85 = sdiv i32 %84, 2
  %86 = call i32 @g_audio_make_samples(%struct.g_audio_softc* %80, i32* %81, i32 %85)
  %87 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %88 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %89 = sdiv i32 %87, %88
  %90 = sdiv i32 %89, 2
  %91 = load i32*, i32** %9, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %9, align 8
  br label %94

94:                                               ; preds = %64
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %60

97:                                               ; preds = %60
  br label %153

98:                                               ; preds = %46
  %99 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %100 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @G_AUDIO_MODE_LOOP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %152

104:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %148, %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %151

109:                                              ; preds = %105
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %114 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, -4
  %125 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %110, i32 %111, i32* %112, i32 %124)
  %126 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.g_audio_softc*, %struct.g_audio_softc** %5, align 8
  %129 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 4
  %140 = call i32 @g_audio_make_samples(%struct.g_audio_softc* %126, i32* %127, i32 %139)
  %141 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %142 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %143 = sdiv i32 %141, %142
  %144 = sdiv i32 %143, 2
  %145 = load i32*, i32** %9, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %9, align 8
  br label %148

148:                                              ; preds = %109
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %105

151:                                              ; preds = %105
  br label %152

152:                                              ; preds = %151, %98
  br label %153

153:                                              ; preds = %152, %97
  br label %165

154:                                              ; preds = %2
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @usbd_errstr(i32 %155)
  %157 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %163 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %162)
  br label %46

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %153, %43
  ret void
}

declare dso_local %struct.g_audio_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32*, i32) #1

declare dso_local i32 @g_audio_make_samples(%struct.g_audio_softc*, i32*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
