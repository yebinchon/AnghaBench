; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32, %struct.umidi_chan }
%struct.umidi_chan = type { i32, i64, i32, i32**, i32, %struct.umidi_sub_chan*, i32 }
%struct.umidi_sub_chan = type { i32 }
%struct.usb_attach_arg = type { i32 }

@UQ_SINGLE_CMD_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"setting of alternate index failed!\0A\00", align 1
@umidi_config = common dso_local global i32 0, align 4
@UMIDI_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@UMIDI_TX_TRANSFER = common dso_local global i64 0, align 8
@UMIDI_RX_TRANSFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"no BULK or INTERRUPT MIDI endpoint(s) found\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Single command MIDI quirk enabled\0A\00", align 1
@UMIDI_EMB_JACK_MAX = common dso_local global i64 0, align 8
@umidi_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umidi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umidi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uaudio_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.umidi_chan*, align 8
  %7 = alloca %struct.umidi_sub_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.uaudio_softc* @device_get_softc(i32 %11)
  store %struct.uaudio_softc* %12, %struct.uaudio_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %5, align 8
  %15 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %16 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %15, i32 0, i32 2
  store %struct.umidi_chan* %16, %struct.umidi_chan** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %20 = load i32, i32* @UQ_SINGLE_CMD_MIDI, align 4
  %21 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %25 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %28 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %31 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %34 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @usbd_set_alt_interface_index(i32 %29, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %182

40:                                               ; preds = %26
  %41 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %42 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %45 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %48 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbd_set_parent_iface(i32 %43, i32 %46, i32 %49)
  %51 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %52 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %55 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %54, i32 0, i32 4
  %56 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %57 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %56, i32 0, i32 3
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* @umidi_config, align 4
  %60 = load i32, i32* @UMIDI_N_TRANSFER, align 4
  %61 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %62 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %63 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %62, i32 0, i32 2
  %64 = call i32 @usbd_transfer_setup(i32 %53, i32* %55, i32** %58, i32 %59, i32 %60, %struct.umidi_chan* %61, i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %40
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @usbd_errstr(i32 %68)
  %70 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %182

71:                                               ; preds = %40
  %72 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %73 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %72, i32 0, i32 3
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* @UMIDI_TX_TRANSFER, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %81 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* @UMIDI_RX_TRANSFER, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %182

89:                                               ; preds = %79, %71
  %90 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %91 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* @UMIDI_TX_TRANSFER, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %99 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %98, i32 0, i32 3
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* @UMIDI_TX_TRANSFER, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @usbd_xfer_maxp_was_clamped(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %108 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %97, %89
  %110 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %111 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %119 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %124 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @UMIDI_EMB_JACK_MAX, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122, %117
  %129 = load i64, i64* @UMIDI_EMB_JACK_MAX, align 8
  %130 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %131 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %122
  store i64 0, i64* %10, align 8
  br label %133

133:                                              ; preds = %165, %132
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %136 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ult i64 %134, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %133
  %140 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %141 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %140, i32 0, i32 5
  %142 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %142, i64 %143
  store %struct.umidi_sub_chan* %144, %struct.umidi_sub_chan** %7, align 8
  %145 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %146 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %149 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %150 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %149, i32 0, i32 2
  %151 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %7, align 8
  %152 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %151, i32 0, i32 0
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %156 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @UID_ROOT, align 4
  %159 = load i32, i32* @GID_OPERATOR, align 4
  %160 = call i32 @usb_fifo_attach(i32 %147, %struct.umidi_chan* %148, i32* %150, i32* @umidi_fifo_methods, i32* %152, i32 %153, i64 %154, i32 %157, i32 %158, i32 %159, i32 420)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %139
  br label %182

164:                                              ; preds = %139
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %10, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %10, align 8
  br label %133

168:                                              ; preds = %133
  %169 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %170 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %169, i32 0, i32 2
  %171 = call i32 @mtx_lock(i32* %170)
  %172 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %173 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %172, i32 0, i32 3
  %174 = load i32**, i32*** %173, align 8
  %175 = load i64, i64* @UMIDI_RX_TRANSFER, align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @usbd_transfer_start(i32* %177)
  %179 = load %struct.umidi_chan*, %struct.umidi_chan** %6, align 8
  %180 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %179, i32 0, i32 2
  %181 = call i32 @mtx_unlock(i32* %180)
  store i32 0, i32* %2, align 4
  br label %184

182:                                              ; preds = %163, %87, %67, %38
  %183 = load i32, i32* @ENXIO, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %182, %168
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.uaudio_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i64 @usbd_set_alt_interface_index(i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32**, i32, i32, %struct.umidi_chan*, i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i64 @usbd_xfer_maxp_was_clamped(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.umidi_chan*, i32*, i32*, i32*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
