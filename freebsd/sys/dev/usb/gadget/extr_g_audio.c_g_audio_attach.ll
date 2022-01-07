; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_audio_softc = type { i32, i32**, i32, i32*, i32, i32, i32 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"g_audio\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@G_AUDIO_MODE_SILENT = common dso_local global i32 0, align 4
@G_AUDIO_FRAMES = common dso_local global i32 0, align 4
@G_AUDIO_BUFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"alt iface setting error=%s\0A\00", align 1
@g_audio_config = common dso_local global i32 0, align 4
@G_AUDIO_N_TRANSFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@G_AUDIO_ISOC0_RD = common dso_local global i64 0, align 8
@G_AUDIO_ISOC1_RD = common dso_local global i64 0, align 8
@G_AUDIO_ISOC0_WR = common dso_local global i64 0, align 8
@G_AUDIO_ISOC1_WR = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g_audio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_audio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_audio_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i64], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.g_audio_softc* @device_get_softc(i32 %9)
  store %struct.g_audio_softc* %10, %struct.g_audio_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.usb_attach_arg* @device_get_ivars(i32 %11)
  store %struct.usb_attach_arg* %12, %struct.usb_attach_arg** %5, align 8
  %13 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_usb_desc(i32 %14)
  %16 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %16, i32 0, i32 2
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %18)
  %20 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %20, i32 0, i32 6
  %22 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %23 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %22, i32 0, i32 2
  %24 = call i32 @usb_callout_init_mtx(i32* %21, i32* %23, i32 0)
  %25 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %26 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %25, i32 0, i32 5
  %27 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %28 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %27, i32 0, i32 2
  %29 = call i32 @usb_callout_init_mtx(i32* %26, i32* %28, i32 0)
  %30 = load i32, i32* @G_AUDIO_MODE_SILENT, align 4
  %31 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %32 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %34 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %62, %1
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %41 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %42 = sdiv i32 %40, %41
  %43 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %44 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %42, i32* %50, align 4
  %51 = load i32, i32* @G_AUDIO_BUFSIZE, align 4
  %52 = load i32, i32* @G_AUDIO_FRAMES, align 4
  %53 = sdiv i32 %51, %52
  %54 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %55 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %53, i32* %61, align 4
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %67 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %69, i64* %70, align 16
  %71 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %72 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %75, i64* %76, align 8
  %77 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %78 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 2
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %81, i64* %82, align 16
  %83 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %84 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @usbd_set_alt_interface_index(i32 %85, i64 %87, i32 1)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %65
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @usbd_errstr(i32 %92)
  %94 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %183

95:                                               ; preds = %65
  %96 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %97 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %100 = load i64, i64* %99, align 16
  %101 = call i32 @usbd_set_alt_interface_index(i32 %98, i64 %100, i32 1)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @usbd_errstr(i32 %105)
  %107 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %183

108:                                              ; preds = %95
  %109 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %110 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %113 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %114 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @g_audio_config, align 4
  %117 = load i32, i32* @G_AUDIO_N_TRANSFER, align 4
  %118 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %119 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %120 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %119, i32 0, i32 2
  %121 = call i32 @usbd_transfer_setup(i32 %111, i64* %112, i32* %115, i32 %116, i32 %117, %struct.g_audio_softc* %118, i32* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %108
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @usbd_errstr(i32 %125)
  %127 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %183

128:                                              ; preds = %108
  %129 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %130 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %135 = load i64, i64* %134, align 16
  %136 = call i32 @usbd_set_parent_iface(i32 %131, i64 %133, i64 %135)
  %137 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %138 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %141 = load i64, i64* %140, align 16
  %142 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %143 = load i64, i64* %142, align 16
  %144 = call i32 @usbd_set_parent_iface(i32 %139, i64 %141, i64 %143)
  %145 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %146 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %145, i32 0, i32 2
  %147 = call i32 @mtx_lock(i32* %146)
  %148 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %149 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @G_AUDIO_ISOC0_RD, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @usbd_transfer_start(i32 %153)
  %155 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %156 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @G_AUDIO_ISOC1_RD, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @usbd_transfer_start(i32 %160)
  %162 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %163 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @G_AUDIO_ISOC0_WR, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @usbd_transfer_start(i32 %167)
  %169 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %170 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @G_AUDIO_ISOC1_WR, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @usbd_transfer_start(i32 %174)
  %176 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %177 = call i32 @g_audio_timeout_reset(%struct.g_audio_softc* %176)
  %178 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %179 = call i32 @g_audio_watchdog_reset(%struct.g_audio_softc* %178)
  %180 = load %struct.g_audio_softc*, %struct.g_audio_softc** %4, align 8
  %181 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %180, i32 0, i32 2
  %182 = call i32 @mtx_unlock(i32* %181)
  store i32 0, i32* %2, align 4
  br label %187

183:                                              ; preds = %124, %104, %91
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @g_audio_detach(i32 %184)
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %128
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.g_audio_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_set_alt_interface_index(i32, i64, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i64*, i32*, i32, i32, %struct.g_audio_softc*, i32*) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @g_audio_timeout_reset(%struct.g_audio_softc*) #1

declare dso_local i32 @g_audio_watchdog_reset(%struct.g_audio_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_audio_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
