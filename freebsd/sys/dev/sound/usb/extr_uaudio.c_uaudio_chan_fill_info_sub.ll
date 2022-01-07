; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_fill_info_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_fill_info_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_format = type { i32, i64, i32, i32 }
%struct.uaudio_softc = type { i64, i64, i32, i64, i32, %struct.uaudio_chan, %struct.uaudio_chan, i32, %struct.TYPE_19__, %struct.TYPE_16__, i32, %struct.TYPE_15__ }
%struct.uaudio_chan = type { i32, i32, i32*, %struct.TYPE_21__, %struct.uaudio_chan_alt*, i64 }
%struct.TYPE_21__ = type { i32*, i32, i32 }
%struct.uaudio_chan_alt = type { i32, i32, i32, %struct.uaudio_format*, i32, i64, i64, %union.uaudio_sed, %struct.TYPE_22__*, %union.uaudio_asf1d }
%union.uaudio_sed = type { i32* }
%struct.TYPE_22__ = type { i32, i32 }
%union.uaudio_asf1d = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i64, i32 }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_16__ = type { i32, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.usb_descriptor = type { i64, i32, i64 }
%union.uaudio_asid = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.usb_midi_streaming_endpoint_descriptor = type { i32, i64, i64, i64 }
%struct.usb_audio_control_descriptor = type { i32 }
%struct.usb_config_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }

@UDESC_INTERFACE = common dso_local global i64 0, align 8
@UAUDIO_HID_VALID = common dso_local global i32 0, align 4
@UICLASS_HID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Found HID interface at %d\0A\00", align 1
@UICLASS_AUDIO = common dso_local global i64 0, align 8
@UICLASS_VENDOR = common dso_local global i64 0, align 8
@UISUBCLASS_AUDIOSTREAM = common dso_local global i64 0, align 8
@UISUBCLASS_MIDISTREAM = common dso_local global i64 0, align 8
@UDESC_CS_INTERFACE = common dso_local global i64 0, align 8
@UDESCSUB_AC_HEADER = common dso_local global i64 0, align 8
@UDESC_CS_ENDPOINT = common dso_local global i64 0, align 8
@MS_GENERAL = common dso_local global i64 0, align 8
@AS_GENERAL = common dso_local global i64 0, align 8
@UAUDIO_VERSION_30 = common dso_local global i64 0, align 8
@UAUDIO_VERSION_20 = common dso_local global i64 0, align 8
@FORMAT_TYPE = common dso_local global i64 0, align 8
@FORMAT_TYPE_I = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ignored bFormatType = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid descriptor, too short\0A\00", align 1
@UDESC_ENDPOINT = common dso_local global i64 0, align 8
@UEP_MINSIZE = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Wrong number of channels\0A\00", align 1
@uaudio20_formats = common dso_local global %struct.uaudio_format* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Unsupported audio format\0A\00", align 1
@UE_DIR_OUT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Checking clock ID=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Unsupported sampling rate, id=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Sample rate: %d-%dHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Sample rate = %dHz\0A\00", align 1
@uaudio10_formats = common dso_local global %struct.uaudio_format* null, align 8
@UE_DIR_IN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"Interface is not valid\0A\00", align 1
@CHAN_MAX_ALT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Too many alternate settings\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"Sample rate = %dHz, channels = %d, bits = %d, format = %s\0A\00", align 1
@uaudio_cfg_record = common dso_local global i32 0, align 4
@uaudio_cfg_play = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [44 x i8] c"The selected audio format is not supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Multiple formats is not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Duplicate sample rate detected\0A\00", align 1
@UAUDIO_MATRIX_MAX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"\0A\09mode %d.%d:(%s) %dch, %dbit, %s, %dHz\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, %struct.usb_device*, i32, i64, i64)* @uaudio_chan_fill_info_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_chan_fill_info_sub(%struct.uaudio_softc* %0, %struct.usb_device* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.uaudio_softc*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.usb_descriptor*, align 8
  %12 = alloca %union.uaudio_asid, align 8
  %13 = alloca %union.uaudio_asf1d, align 8
  %14 = alloca %union.uaudio_sed, align 8
  %15 = alloca %struct.usb_midi_streaming_endpoint_descriptor*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.usb_audio_control_descriptor*, align 8
  %18 = alloca %struct.usb_config_descriptor*, align 8
  %19 = alloca %struct.usb_interface_descriptor*, align 8
  %20 = alloca %struct.uaudio_format*, align 8
  %21 = alloca %struct.uaudio_chan*, align 8
  %22 = alloca %struct.uaudio_chan_alt*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %6, align 8
  store %struct.usb_device* %1, %struct.usb_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.usb_descriptor* null, %struct.usb_descriptor** %11, align 8
  %38 = bitcast %union.uaudio_asid* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 8, i1 false)
  %39 = bitcast %union.uaudio_asf1d* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 8, i1 false)
  %40 = bitcast %union.uaudio_sed* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %40, i8 0, i64 8, i1 false)
  store %struct.usb_midi_streaming_endpoint_descriptor* null, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  store %struct.usb_audio_control_descriptor* null, %struct.usb_audio_control_descriptor** %17, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(%struct.usb_device* %41)
  store %struct.usb_config_descriptor* %42, %struct.usb_config_descriptor** %18, align 8
  store %struct.uaudio_format* null, %struct.uaudio_format** %20, align 8
  store i64 65535, i64* %24, align 8
  store i64 65535, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %33, align 8
  br label %43

43:                                               ; preds = %1080, %556, %481, %449, %420, %298, %5
  %44 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %18, align 8
  %45 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %46 = call %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor* %44, %struct.usb_descriptor* %45)
  store %struct.usb_descriptor* %46, %struct.usb_descriptor** %11, align 8
  %47 = icmp ne %struct.usb_descriptor* %46, null
  br i1 %47, label %48, label %1082

48:                                               ; preds = %43
  %49 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %50 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UDESC_INTERFACE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %224

54:                                               ; preds = %48
  %55 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %56 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp uge i64 %58, 32
  br i1 %59, label %60, label %224

60:                                               ; preds = %54
  %61 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %62 = bitcast %struct.usb_descriptor* %61 to i8*
  %63 = bitcast i8* %62 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %63, %struct.usb_interface_descriptor** %19, align 8
  %64 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %65 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %25, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %71 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %25, align 8
  %73 = load i64, i64* %24, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %24, align 8
  store i64 0, i64* %26, align 8
  br label %78

75:                                               ; preds = %60
  %76 = load i64, i64* %26, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %26, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %80 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %79, i32 0, i32 11
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @UAUDIO_HID_VALID, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %123, label %86

86:                                               ; preds = %78
  %87 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %88 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UICLASS_HID, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %86
  %93 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %94 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %92
  %98 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %99 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load i64, i64* %26, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %107 = load i64, i64* %24, align 8
  %108 = call i32* @usbd_get_iface(%struct.usb_device* %106, i64 %107)
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load i64, i64* %24, align 8
  %112 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* @UAUDIO_HID_VALID, align 4
  %114 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %115 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 8
  %119 = load i64, i64* %24, align 8
  %120 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %121 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %120, i32 0, i32 11
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  store i64 %119, i64* %122, align 8
  br label %123

123:                                              ; preds = %110, %105, %102, %97, %92, %86, %78
  %124 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %125 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UICLASS_AUDIO, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %131 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @UICLASS_VENDOR, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %137 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %135, %129
  %141 = phi i1 [ false, %129 ], [ %139, %135 ]
  br label %142

142:                                              ; preds = %140, %123
  %143 = phi i1 [ true, %123 ], [ %141, %140 ]
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %34, align 8
  %146 = load i64, i64* %34, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %150 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @UISUBCLASS_AUDIOSTREAM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i64 1, i64* %32, align 8
  br label %156

155:                                              ; preds = %148, %142
  store i64 0, i64* %32, align 8
  br label %156

156:                                              ; preds = %155, %154
  %157 = load i64, i64* %34, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %189

159:                                              ; preds = %156
  %160 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %161 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @UISUBCLASS_MIDISTREAM, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %159
  store i64 1, i64* %33, align 8
  %166 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %167 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %165
  %172 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %173 = load i64, i64* %24, align 8
  %174 = call i32* @usbd_get_iface(%struct.usb_device* %172, i64 %173)
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = load i64, i64* %24, align 8
  %178 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %179 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  store i64 %177, i64* %180, align 8
  %181 = load i64, i64* %26, align 8
  %182 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %183 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  store i64 %181, i64* %184, align 8
  %185 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %186 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %185, i32 0, i32 9
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  br label %188

188:                                              ; preds = %176, %171, %165
  br label %190

189:                                              ; preds = %159, %156
  store i64 0, i64* %33, align 8
  br label %190

190:                                              ; preds = %189, %188
  %191 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_20__**
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %191, align 8
  %192 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %192, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  %193 = bitcast %union.uaudio_sed* %14 to i32**
  store i32* null, i32** %193, align 8
  %194 = load i64, i64* %26, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %190
  %197 = load i64, i64* %24, align 8
  %198 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %199 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %197, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %19, align 8
  %204 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @UICLASS_AUDIO, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load i64, i64* %32, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i64, i64* %33, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %211, %208, %202
  %215 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %216 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* %24, align 8
  %219 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %220 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @usbd_set_parent_iface(i32 %217, i64 %218, i64 %221)
  br label %223

223:                                              ; preds = %214, %211, %196, %190
  br label %224

224:                                              ; preds = %223, %54, %48
  %225 = load i64, i64* %32, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %299

227:                                              ; preds = %224
  %228 = load i64, i64* %33, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %260

230:                                              ; preds = %227
  %231 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %17, align 8
  %232 = icmp eq %struct.usb_audio_control_descriptor* %231, null
  br i1 %232, label %233, label %259

233:                                              ; preds = %230
  %234 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %235 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @UDESC_CS_INTERFACE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %259

239:                                              ; preds = %233
  %240 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %241 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @UDESCSUB_AC_HEADER, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %259

245:                                              ; preds = %239
  %246 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %247 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = icmp uge i64 %249, 4
  br i1 %250, label %251, label %259

251:                                              ; preds = %245
  %252 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %253 = bitcast %struct.usb_descriptor* %252 to i8*
  %254 = bitcast i8* %253 to %struct.usb_audio_control_descriptor*
  store %struct.usb_audio_control_descriptor* %254, %struct.usb_audio_control_descriptor** %17, align 8
  %255 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %17, align 8
  %256 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i64 @UGETW(i32 %257)
  store i64 %258, i64* %27, align 8
  br label %259

259:                                              ; preds = %251, %245, %239, %233, %230
  br label %298

260:                                              ; preds = %227
  %261 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %262 = bitcast %struct.usb_descriptor* %261 to i8*
  %263 = bitcast i8* %262 to %struct.usb_midi_streaming_endpoint_descriptor*
  store %struct.usb_midi_streaming_endpoint_descriptor* %263, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  %264 = load %struct.usb_midi_streaming_endpoint_descriptor*, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  %265 = getelementptr inbounds %struct.usb_midi_streaming_endpoint_descriptor, %struct.usb_midi_streaming_endpoint_descriptor* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = icmp uge i64 %267, 32
  br i1 %268, label %269, label %297

269:                                              ; preds = %260
  %270 = load %struct.usb_midi_streaming_endpoint_descriptor*, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  %271 = getelementptr inbounds %struct.usb_midi_streaming_endpoint_descriptor, %struct.usb_midi_streaming_endpoint_descriptor* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @UDESC_CS_ENDPOINT, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %297

275:                                              ; preds = %269
  %276 = load %struct.usb_midi_streaming_endpoint_descriptor*, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  %277 = getelementptr inbounds %struct.usb_midi_streaming_endpoint_descriptor, %struct.usb_midi_streaming_endpoint_descriptor* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @MS_GENERAL, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %297

281:                                              ; preds = %275
  %282 = load %struct.usb_midi_streaming_endpoint_descriptor*, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  %283 = getelementptr inbounds %struct.usb_midi_streaming_endpoint_descriptor, %struct.usb_midi_streaming_endpoint_descriptor* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %286 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %285, i32 0, i32 9
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp sgt i64 %284, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %281
  %291 = load %struct.usb_midi_streaming_endpoint_descriptor*, %struct.usb_midi_streaming_endpoint_descriptor** %15, align 8
  %292 = getelementptr inbounds %struct.usb_midi_streaming_endpoint_descriptor, %struct.usb_midi_streaming_endpoint_descriptor* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %295 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %294, i32 0, i32 9
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  store i64 %293, i64* %296, align 8
  br label %297

297:                                              ; preds = %290, %281, %275, %269, %260
  br label %298

298:                                              ; preds = %297, %259
  br label %43

299:                                              ; preds = %224
  %300 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %17, align 8
  %301 = icmp ne %struct.usb_audio_control_descriptor* %300, null
  br i1 %301, label %307, label %302

302:                                              ; preds = %299
  %303 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %304 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %358

307:                                              ; preds = %302, %299
  %308 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %309 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @UDESC_CS_INTERFACE, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %358

313:                                              ; preds = %307
  %314 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %315 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @AS_GENERAL, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %358

319:                                              ; preds = %313
  %320 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_20__**
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %320, align 8
  %322 = icmp eq %struct.TYPE_20__* %321, null
  br i1 %322, label %323, label %358

323:                                              ; preds = %319
  %324 = load i64, i64* %27, align 8
  %325 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %326 = icmp sge i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  br label %357

328:                                              ; preds = %323
  %329 = load i64, i64* %27, align 8
  %330 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %331 = icmp sge i64 %329, %330
  br i1 %331, label %332, label %344

332:                                              ; preds = %328
  %333 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %334 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = icmp uge i64 %336, 16
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %340 = bitcast %struct.usb_descriptor* %339 to i8*
  %341 = bitcast i8* %340 to %struct.TYPE_17__*
  %342 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_17__**
  store %struct.TYPE_17__* %341, %struct.TYPE_17__** %342, align 8
  br label %343

343:                                              ; preds = %338, %332
  br label %356

344:                                              ; preds = %328
  %345 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %346 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = icmp uge i64 %348, 4
  br i1 %349, label %350, label %355

350:                                              ; preds = %344
  %351 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %352 = bitcast %struct.usb_descriptor* %351 to i8*
  %353 = bitcast i8* %352 to %struct.TYPE_20__*
  %354 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_20__**
  store %struct.TYPE_20__* %353, %struct.TYPE_20__** %354, align 8
  br label %355

355:                                              ; preds = %350, %344
  br label %356

356:                                              ; preds = %355, %343
  br label %357

357:                                              ; preds = %356, %327
  br label %358

358:                                              ; preds = %357, %319, %313, %307, %302
  %359 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %17, align 8
  %360 = icmp ne %struct.usb_audio_control_descriptor* %359, null
  br i1 %360, label %366, label %361

361:                                              ; preds = %358
  %362 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %363 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %456

366:                                              ; preds = %361, %358
  %367 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %368 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @UDESC_CS_INTERFACE, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %456

372:                                              ; preds = %366
  %373 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %374 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @FORMAT_TYPE, align 8
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %456

378:                                              ; preds = %372
  %379 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %379, align 8
  %381 = icmp eq %struct.TYPE_14__* %380, null
  br i1 %381, label %382, label %456

382:                                              ; preds = %378
  %383 = load i64, i64* %27, align 8
  %384 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %385 = icmp sge i64 %383, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  br label %455

387:                                              ; preds = %382
  %388 = load i64, i64* %27, align 8
  %389 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %390 = icmp sge i64 %388, %389
  br i1 %390, label %391, label %403

391:                                              ; preds = %387
  %392 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %393 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = sext i32 %394 to i64
  %396 = icmp uge i64 %395, 4
  br i1 %396, label %397, label %402

397:                                              ; preds = %391
  %398 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %399 = bitcast %struct.usb_descriptor* %398 to i8*
  %400 = bitcast i8* %399 to %struct.TYPE_18__*
  %401 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_18__**
  store %struct.TYPE_18__* %400, %struct.TYPE_18__** %401, align 8
  br label %402

402:                                              ; preds = %397, %391
  br label %454

403:                                              ; preds = %387
  %404 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %405 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = icmp uge i64 %407, 32
  br i1 %408, label %409, label %453

409:                                              ; preds = %403
  %410 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %411 = bitcast %struct.usb_descriptor* %410 to i8*
  %412 = bitcast i8* %411 to %struct.TYPE_14__*
  %413 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  store %struct.TYPE_14__* %412, %struct.TYPE_14__** %413, align 8
  %414 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @FORMAT_TYPE_I, align 8
  %419 = icmp ne i64 %417, %418
  br i1 %419, label %420, label %427

420:                                              ; preds = %409
  %421 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %424)
  %426 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %426, align 8
  br label %43

427:                                              ; preds = %409
  %428 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %429 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %427
  br label %444

438:                                              ; preds = %427
  %439 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = mul nsw i32 %442, 3
  br label %444

444:                                              ; preds = %438, %437
  %445 = phi i32 [ 6, %437 ], [ %443, %438 ]
  %446 = sext i32 %445 to i64
  %447 = add i64 32, %446
  %448 = icmp ult i64 %431, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %444
  %450 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %451 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %451, align 8
  br label %43

452:                                              ; preds = %444
  br label %453

453:                                              ; preds = %452, %403
  br label %454

454:                                              ; preds = %453, %402
  br label %455

455:                                              ; preds = %454, %386
  br label %456

456:                                              ; preds = %455, %378, %372, %366, %361
  %457 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %458 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @UDESC_ENDPOINT, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %483

462:                                              ; preds = %456
  %463 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %464 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @UEP_MINSIZE, align 4
  %467 = icmp sge i32 %465, %466
  br i1 %467, label %468, label %483

468:                                              ; preds = %462
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %470 = icmp eq %struct.TYPE_22__* %469, null
  br i1 %470, label %471, label %483

471:                                              ; preds = %468
  %472 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %473 = bitcast %struct.usb_descriptor* %472 to i8*
  %474 = bitcast i8* %473 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %474, %struct.TYPE_22__** %16, align 8
  %475 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %476 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = call i64 @UE_GET_XFERTYPE(i32 %477)
  %479 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %471
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  br label %43

482:                                              ; preds = %471
  br label %483

483:                                              ; preds = %482, %468, %462, %456
  %484 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %17, align 8
  %485 = icmp ne %struct.usb_audio_control_descriptor* %484, null
  br i1 %485, label %491, label %486

486:                                              ; preds = %483
  %487 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %488 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %541

491:                                              ; preds = %486, %483
  %492 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %493 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @UDESC_CS_ENDPOINT, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %541

497:                                              ; preds = %491
  %498 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %499 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %498, i32 0, i32 2
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @AS_GENERAL, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %541

503:                                              ; preds = %497
  %504 = bitcast %union.uaudio_sed* %14 to i32**
  %505 = load i32*, i32** %504, align 8
  %506 = icmp eq i32* %505, null
  br i1 %506, label %507, label %541

507:                                              ; preds = %503
  %508 = load i64, i64* %27, align 8
  %509 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %510 = icmp sge i64 %508, %509
  br i1 %510, label %511, label %512

511:                                              ; preds = %507
  br label %540

512:                                              ; preds = %507
  %513 = load i64, i64* %27, align 8
  %514 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %515 = icmp sge i64 %513, %514
  br i1 %515, label %516, label %527

516:                                              ; preds = %512
  %517 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %518 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 8
  %520 = sext i32 %519 to i64
  %521 = icmp uge i64 %520, 1
  br i1 %521, label %522, label %526

522:                                              ; preds = %516
  %523 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %524 = bitcast %struct.usb_descriptor* %523 to i8*
  %525 = bitcast %union.uaudio_sed* %14 to i8**
  store i8* %524, i8** %525, align 8
  br label %526

526:                                              ; preds = %522, %516
  br label %539

527:                                              ; preds = %512
  %528 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %529 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = sext i32 %530 to i64
  %532 = icmp uge i64 %531, 4
  br i1 %532, label %533, label %538

533:                                              ; preds = %527
  %534 = load %struct.usb_descriptor*, %struct.usb_descriptor** %11, align 8
  %535 = bitcast %struct.usb_descriptor* %534 to i8*
  %536 = bitcast i8* %535 to i32*
  %537 = bitcast %union.uaudio_sed* %14 to i32**
  store i32* %536, i32** %537, align 8
  br label %538

538:                                              ; preds = %533, %527
  br label %539

539:                                              ; preds = %538, %526
  br label %540

540:                                              ; preds = %539, %511
  br label %541

541:                                              ; preds = %540, %503, %497, %491, %486
  %542 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_20__**
  %543 = load %struct.TYPE_20__*, %struct.TYPE_20__** %542, align 8
  %544 = icmp eq %struct.TYPE_20__* %543, null
  br i1 %544, label %556, label %545

545:                                              ; preds = %541
  %546 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %547 = load %struct.TYPE_14__*, %struct.TYPE_14__** %546, align 8
  %548 = icmp eq %struct.TYPE_14__* %547, null
  br i1 %548, label %556, label %549

549:                                              ; preds = %545
  %550 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %551 = icmp eq %struct.TYPE_22__* %550, null
  br i1 %551, label %556, label %552

552:                                              ; preds = %549
  %553 = bitcast %union.uaudio_sed* %14 to i32**
  %554 = load i32*, i32** %553, align 8
  %555 = icmp eq i32* %554, null
  br i1 %555, label %556, label %557

556:                                              ; preds = %552, %549, %545, %541
  br label %43

557:                                              ; preds = %552
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = call i64 @UE_GET_DIR(i32 %560)
  store i64 %561, i64* %29, align 8
  %562 = load i64, i64* %27, align 8
  %563 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %564 = icmp sge i64 %562, %563
  br i1 %564, label %565, label %566

565:                                              ; preds = %557
  br label %1080

566:                                              ; preds = %557
  %567 = load i64, i64* %27, align 8
  %568 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %569 = icmp sge i64 %567, %568
  br i1 %569, label %570, label %688

570:                                              ; preds = %566
  %571 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_17__**
  %572 = load %struct.TYPE_17__*, %struct.TYPE_17__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 8
  %575 = call i32 @UGETDW(i32 %574)
  store i32 %575, i32* %35, align 4
  %576 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_17__**
  %577 = load %struct.TYPE_17__*, %struct.TYPE_17__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %30, align 8
  %580 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_18__**
  %581 = load %struct.TYPE_18__*, %struct.TYPE_18__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = mul nsw i32 %583, 8
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %31, align 8
  %586 = load i64, i64* %30, align 8
  %587 = load i64, i64* %9, align 8
  %588 = icmp ne i64 %586, %587
  br i1 %588, label %593, label %589

589:                                              ; preds = %570
  %590 = load i64, i64* %31, align 8
  %591 = load i64, i64* %10, align 8
  %592 = icmp ne i64 %590, %591
  br i1 %592, label %593, label %595

593:                                              ; preds = %589, %570
  %594 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %1080

595:                                              ; preds = %589
  %596 = load %struct.uaudio_format*, %struct.uaudio_format** @uaudio20_formats, align 8
  store %struct.uaudio_format* %596, %struct.uaudio_format** %20, align 8
  br label %597

597:                                              ; preds = %617, %595
  %598 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %599 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %620

602:                                              ; preds = %597
  %603 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %604 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = load i32, i32* %35, align 4
  %607 = and i32 %605, %606
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %616

609:                                              ; preds = %602
  %610 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %611 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %610, i32 0, i32 1
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* %31, align 8
  %614 = icmp eq i64 %612, %613
  br i1 %614, label %615, label %616

615:                                              ; preds = %609
  br label %620

616:                                              ; preds = %609, %602
  br label %617

617:                                              ; preds = %616
  %618 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %619 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %618, i32 1
  store %struct.uaudio_format* %619, %struct.uaudio_format** %20, align 8
  br label %597

620:                                              ; preds = %615, %597
  %621 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %622 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %627

625:                                              ; preds = %620
  %626 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %1080

627:                                              ; preds = %620
  store i64 0, i64* %28, align 8
  br label %628

628:                                              ; preds = %684, %627
  %629 = load i64, i64* %28, align 8
  %630 = icmp ne i64 %629, 256
  br i1 %630, label %631, label %687

631:                                              ; preds = %628
  %632 = load i64, i64* %29, align 8
  %633 = load i64, i64* @UE_DIR_OUT, align 8
  %634 = icmp eq i64 %632, %633
  br i1 %634, label %635, label %652

635:                                              ; preds = %631
  %636 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %637 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %636, i32 0, i32 8
  %638 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %637, i32 0, i32 0
  %639 = load i32*, i32** %638, align 8
  %640 = load i64, i64* %28, align 8
  %641 = sdiv i64 %640, 8
  %642 = getelementptr inbounds i32, i32* %639, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = load i64, i64* %28, align 8
  %645 = srem i64 %644, 8
  %646 = trunc i64 %645 to i32
  %647 = shl i32 1, %646
  %648 = and i32 %643, %647
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %651, label %650

650:                                              ; preds = %635
  br label %684

651:                                              ; preds = %635
  br label %669

652:                                              ; preds = %631
  %653 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %654 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %653, i32 0, i32 8
  %655 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %654, i32 0, i32 1
  %656 = load i32*, i32** %655, align 8
  %657 = load i64, i64* %28, align 8
  %658 = sdiv i64 %657, 8
  %659 = getelementptr inbounds i32, i32* %656, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = load i64, i64* %28, align 8
  %662 = srem i64 %661, 8
  %663 = trunc i64 %662 to i32
  %664 = shl i32 1, %663
  %665 = and i32 %660, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %652
  br label %684

668:                                              ; preds = %652
  br label %669

669:                                              ; preds = %668, %651
  %670 = load i64, i64* %28, align 8
  %671 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %670)
  %672 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %673 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %674 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %673, i32 0, i32 7
  %675 = load i32, i32* %674, align 8
  %676 = load i64, i64* %28, align 8
  %677 = load i32, i32* %8, align 4
  %678 = call i64 @uaudio20_check_rate(%struct.usb_device* %672, i32 %675, i64 %676, i32 %677)
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %683

680:                                              ; preds = %669
  %681 = load i64, i64* %28, align 8
  %682 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %681)
  br label %1080

683:                                              ; preds = %669
  br label %684

684:                                              ; preds = %683, %667, %650
  %685 = load i64, i64* %28, align 8
  %686 = add nsw i64 %685, 1
  store i64 %686, i64* %28, align 8
  br label %628

687:                                              ; preds = %628
  br label %803

688:                                              ; preds = %566
  %689 = bitcast %union.uaudio_asid* %12 to %struct.TYPE_20__**
  %690 = load %struct.TYPE_20__*, %struct.TYPE_20__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 4
  %693 = call i64 @UGETW(i32 %692)
  store i64 %693, i64* %36, align 8
  %694 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %695 = load %struct.TYPE_14__*, %struct.TYPE_14__** %694, align 8
  %696 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %695, i32 0, i32 2
  %697 = load i64, i64* %696, align 8
  %698 = call i32 @UAUDIO_MAX_CHAN(i64 %697)
  %699 = sext i32 %698 to i64
  store i64 %699, i64* %30, align 8
  %700 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %701 = load %struct.TYPE_14__*, %struct.TYPE_14__** %700, align 8
  %702 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %701, i32 0, i32 3
  %703 = load i32, i32* %702, align 8
  %704 = mul nsw i32 %703, 8
  %705 = sext i32 %704 to i64
  store i64 %705, i64* %31, align 8
  %706 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %707 = load %struct.TYPE_14__*, %struct.TYPE_14__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 8
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %732

711:                                              ; preds = %688
  %712 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %713 = load %struct.TYPE_14__*, %struct.TYPE_14__** %712, align 8
  %714 = call i32 @UA_SAMP_LO(%struct.TYPE_14__* %713)
  %715 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %716 = load %struct.TYPE_14__*, %struct.TYPE_14__** %715, align 8
  %717 = call i32 @UA_SAMP_HI(%struct.TYPE_14__* %716)
  %718 = call i32 (i32, i8*, ...) @DPRINTFN(i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %714, i32 %717)
  %719 = load i32, i32* %8, align 4
  %720 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %721 = load %struct.TYPE_14__*, %struct.TYPE_14__** %720, align 8
  %722 = call i32 @UA_SAMP_LO(%struct.TYPE_14__* %721)
  %723 = icmp sge i32 %719, %722
  br i1 %723, label %724, label %731

724:                                              ; preds = %711
  %725 = load i32, i32* %8, align 4
  %726 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %727 = load %struct.TYPE_14__*, %struct.TYPE_14__** %726, align 8
  %728 = call i32 @UA_SAMP_HI(%struct.TYPE_14__* %727)
  %729 = icmp sle i32 %725, %728
  br i1 %729, label %730, label %731

730:                                              ; preds = %724
  br label %760

731:                                              ; preds = %724, %711
  br label %759

732:                                              ; preds = %688
  store i64 0, i64* %28, align 8
  br label %733

733:                                              ; preds = %755, %732
  %734 = load i64, i64* %28, align 8
  %735 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %736 = load %struct.TYPE_14__*, %struct.TYPE_14__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 8
  %739 = sext i32 %738 to i64
  %740 = icmp slt i64 %734, %739
  br i1 %740, label %741, label %758

741:                                              ; preds = %733
  %742 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %743 = load %struct.TYPE_14__*, %struct.TYPE_14__** %742, align 8
  %744 = load i64, i64* %28, align 8
  %745 = call i32 @UA_GETSAMP(%struct.TYPE_14__* %743, i64 %744)
  %746 = call i32 (i32, i8*, ...) @DPRINTFN(i32 16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %745)
  %747 = load i32, i32* %8, align 4
  %748 = bitcast %union.uaudio_asf1d* %13 to %struct.TYPE_14__**
  %749 = load %struct.TYPE_14__*, %struct.TYPE_14__** %748, align 8
  %750 = load i64, i64* %28, align 8
  %751 = call i32 @UA_GETSAMP(%struct.TYPE_14__* %749, i64 %750)
  %752 = icmp eq i32 %747, %751
  br i1 %752, label %753, label %754

753:                                              ; preds = %741
  br label %760

754:                                              ; preds = %741
  br label %755

755:                                              ; preds = %754
  %756 = load i64, i64* %28, align 8
  %757 = add nsw i64 %756, 1
  store i64 %757, i64* %28, align 8
  br label %733

758:                                              ; preds = %733
  br label %759

759:                                              ; preds = %758, %731
  br label %1080

760:                                              ; preds = %753, %730
  %761 = load %struct.uaudio_format*, %struct.uaudio_format** @uaudio10_formats, align 8
  store %struct.uaudio_format* %761, %struct.uaudio_format** %20, align 8
  br label %762

762:                                              ; preds = %782, %760
  %763 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %764 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %763, i32 0, i32 0
  %765 = load i32, i32* %764, align 8
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %785

767:                                              ; preds = %762
  %768 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %769 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %768, i32 0, i32 0
  %770 = load i32, i32* %769, align 8
  %771 = sext i32 %770 to i64
  %772 = load i64, i64* %36, align 8
  %773 = icmp eq i64 %771, %772
  br i1 %773, label %774, label %781

774:                                              ; preds = %767
  %775 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %776 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %775, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = load i64, i64* %31, align 8
  %779 = icmp eq i64 %777, %778
  br i1 %779, label %780, label %781

780:                                              ; preds = %774
  br label %785

781:                                              ; preds = %774, %767
  br label %782

782:                                              ; preds = %781
  %783 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %784 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %783, i32 1
  store %struct.uaudio_format* %784, %struct.uaudio_format** %20, align 8
  br label %762

785:                                              ; preds = %780, %762
  %786 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %787 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %786, i32 0, i32 0
  %788 = load i32, i32* %787, align 8
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %792

790:                                              ; preds = %785
  %791 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %1080

792:                                              ; preds = %785
  %793 = load i64, i64* %30, align 8
  %794 = load i64, i64* %9, align 8
  %795 = icmp ne i64 %793, %794
  br i1 %795, label %800, label %796

796:                                              ; preds = %792
  %797 = load i64, i64* %31, align 8
  %798 = load i64, i64* %10, align 8
  %799 = icmp ne i64 %797, %798
  br i1 %799, label %800, label %802

800:                                              ; preds = %796, %792
  %801 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %1080

802:                                              ; preds = %796
  br label %803

803:                                              ; preds = %802, %687
  br label %804

804:                                              ; preds = %803
  %805 = load i64, i64* %29, align 8
  %806 = load i64, i64* @UE_DIR_IN, align 8
  %807 = icmp eq i64 %805, %806
  br i1 %807, label %808, label %811

808:                                              ; preds = %804
  %809 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %810 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %809, i32 0, i32 6
  br label %814

811:                                              ; preds = %804
  %812 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %813 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %812, i32 0, i32 5
  br label %814

814:                                              ; preds = %811, %808
  %815 = phi %struct.uaudio_chan* [ %810, %808 ], [ %813, %811 ]
  store %struct.uaudio_chan* %815, %struct.uaudio_chan** %21, align 8
  %816 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %817 = load i64, i64* %24, align 8
  %818 = call i32* @usbd_get_iface(%struct.usb_device* %816, i64 %817)
  %819 = icmp eq i32* %818, null
  br i1 %819, label %820, label %822

820:                                              ; preds = %814
  %821 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %1080

822:                                              ; preds = %814
  %823 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %824 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %823, i32 0, i32 0
  %825 = load i32, i32* %824, align 8
  %826 = load i32, i32* @CHAN_MAX_ALT, align 4
  %827 = icmp eq i32 %825, %826
  br i1 %827, label %828, label %830

828:                                              ; preds = %822
  %829 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %1080

830:                                              ; preds = %822
  %831 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %832 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %831, i32 0, i32 5
  store i64 0, i64* %832, align 8
  %833 = load i32, i32* @CHAN_MAX_ALT, align 4
  %834 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %835 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %834, i32 0, i32 1
  store i32 %833, i32* %835, align 4
  %836 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %837 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %836, i32 0, i32 4
  %838 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %837, align 8
  %839 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %840 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %839, i32 0, i32 0
  %841 = load i32, i32* %840, align 8
  %842 = add nsw i32 %841, 1
  store i32 %842, i32* %840, align 8
  %843 = sext i32 %841 to i64
  %844 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %838, i64 %843
  store %struct.uaudio_chan_alt* %844, %struct.uaudio_chan_alt** %22, align 8
  %845 = load i32, i32* %8, align 4
  %846 = load i64, i64* %9, align 8
  %847 = load i64, i64* %10, align 8
  %848 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %849 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %848, i32 0, i32 3
  %850 = load i32, i32* %849, align 4
  %851 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %845, i64 %846, i64 %847, i32 %850)
  %852 = load i32, i32* %8, align 4
  %853 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %854 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %853, i32 0, i32 0
  store i32 %852, i32* %854, align 8
  %855 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %856 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %855, i32 0, i32 9
  %857 = bitcast %union.uaudio_asf1d* %856 to i8*
  %858 = bitcast %union.uaudio_asf1d* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %857, i8* align 8 %858, i64 8, i1 false)
  %859 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %860 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %861 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %860, i32 0, i32 8
  store %struct.TYPE_22__* %859, %struct.TYPE_22__** %861, align 8
  %862 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %863 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %864 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %863, i32 0, i32 3
  store %struct.uaudio_format* %862, %struct.uaudio_format** %864, align 8
  %865 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %866 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %865, i32 0, i32 7
  %867 = bitcast %union.uaudio_sed* %866 to i8*
  %868 = bitcast %union.uaudio_sed* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %867, i8* align 8 %868, i64 8, i1 false)
  %869 = load i64, i64* %24, align 8
  %870 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %871 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %870, i32 0, i32 6
  store i64 %869, i64* %871, align 8
  %872 = load i64, i64* %26, align 8
  %873 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %874 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %873, i32 0, i32 5
  store i64 %872, i64* %874, align 8
  %875 = load i64, i64* %29, align 8
  %876 = load i64, i64* @UE_DIR_IN, align 8
  %877 = icmp eq i64 %875, %876
  br i1 %877, label %878, label %882

878:                                              ; preds = %830
  %879 = load i32, i32* @uaudio_cfg_record, align 4
  %880 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %881 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %880, i32 0, i32 4
  store i32 %879, i32* %881, align 8
  br label %886

882:                                              ; preds = %830
  %883 = load i32, i32* @uaudio_cfg_play, align 4
  %884 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %885 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %884, i32 0, i32 4
  store i32 %883, i32* %885, align 8
  br label %886

886:                                              ; preds = %882, %878
  %887 = load i64, i64* %9, align 8
  %888 = call i32 @UAUDIO_MAX_CHAN(i64 %887)
  %889 = sext i32 %888 to i64
  %890 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %891 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %890, i32 0, i32 1
  %892 = load i64, i64* %891, align 8
  %893 = mul nsw i64 %889, %892
  %894 = sdiv i64 %893, 8
  %895 = trunc i64 %894 to i32
  %896 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %897 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %896, i32 0, i32 1
  store i32 %895, i32* %897, align 4
  %898 = load i64, i64* %9, align 8
  %899 = trunc i64 %898 to i32
  %900 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %901 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %900, i32 0, i32 2
  store i32 %899, i32* %901, align 8
  %902 = load i64, i64* %29, align 8
  %903 = load i64, i64* @UE_DIR_IN, align 8
  %904 = icmp eq i64 %902, %903
  br i1 %904, label %905, label %925

905:                                              ; preds = %886
  %906 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %907 = call i64 @usbd_get_speed(%struct.usb_device* %906)
  %908 = load i64, i64* @USB_SPEED_FULL, align 8
  %909 = icmp eq i64 %907, %908
  br i1 %909, label %910, label %925

910:                                              ; preds = %905
  %911 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %912 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %913 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %912, i32 0, i32 1
  %914 = load i32, i32* %913, align 4
  %915 = load i32, i32* %8, align 4
  %916 = sdiv i32 %915, 1000
  %917 = mul nsw i32 %914, %916
  %918 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %919 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %918, i32 0, i32 1
  %920 = load i32, i32* %919, align 4
  %921 = load i32, i32* %8, align 4
  %922 = sdiv i32 %921, 4000
  %923 = mul nsw i32 %920, %922
  %924 = call i32 @uaudio_record_fix_fs(%struct.TYPE_22__* %911, i32 %917, i32 %923)
  br label %925

925:                                              ; preds = %910, %905, %886
  %926 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %927 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %926, i32 0, i32 3
  %928 = load %struct.uaudio_format*, %struct.uaudio_format** %927, align 8
  %929 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %928, i32 0, i32 2
  %930 = load i32, i32* %929, align 8
  store i32 %930, i32* %23, align 4
  %931 = load i32, i32* %23, align 4
  %932 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %933 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %932, i32 0, i32 2
  %934 = load i32, i32* %933, align 8
  %935 = call i32 @SND_FORMAT(i32 %931, i32 %934, i32 0)
  store i32 %935, i32* %23, align 4
  %936 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %937 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %936, i32 0, i32 2
  %938 = load i32, i32* %937, align 8
  switch i32 %938, label %940 [
    i32 1, label %939
    i32 2, label %939
  ]

939:                                              ; preds = %925, %925
  br label %948

940:                                              ; preds = %925
  %941 = load i32, i32* %23, align 4
  %942 = call i32 @feeder_matrix_default_format(i32 %941)
  store i32 %942, i32* %37, align 4
  %943 = load i32, i32* %37, align 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %947

945:                                              ; preds = %940
  %946 = load i32, i32* %37, align 4
  store i32 %946, i32* %23, align 4
  br label %947

947:                                              ; preds = %945, %940
  br label %948

948:                                              ; preds = %947, %939
  %949 = load i32, i32* %23, align 4
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %957

951:                                              ; preds = %948
  %952 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %953 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %954 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %953, i32 0, i32 0
  %955 = load i32, i32* %954, align 8
  %956 = add nsw i32 %955, -1
  store i32 %956, i32* %954, align 8
  br label %1080

957:                                              ; preds = %948
  %958 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %959 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %958, i32 0, i32 0
  %960 = load i32, i32* %959, align 8
  %961 = icmp sgt i32 %960, 1
  br i1 %961, label %962, label %997

962:                                              ; preds = %957
  %963 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %964 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %963, i32 0, i32 2
  %965 = load i32*, i32** %964, align 8
  %966 = getelementptr inbounds i32, i32* %965, i64 0
  %967 = load i32, i32* %966, align 4
  %968 = load i32, i32* %23, align 4
  %969 = icmp ne i32 %967, %968
  br i1 %969, label %970, label %976

970:                                              ; preds = %962
  %971 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %972 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %973 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %972, i32 0, i32 0
  %974 = load i32, i32* %973, align 8
  %975 = add nsw i32 %974, -1
  store i32 %975, i32* %973, align 8
  br label %1080

976:                                              ; preds = %962
  %977 = load i32, i32* %8, align 4
  %978 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %979 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %978, i32 0, i32 4
  %980 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %979, align 8
  %981 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %982 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %981, i32 0, i32 0
  %983 = load i32, i32* %982, align 8
  %984 = sub nsw i32 %983, 2
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %980, i64 %985
  %987 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %986, i32 0, i32 0
  %988 = load i32, i32* %987, align 8
  %989 = icmp eq i32 %977, %988
  br i1 %989, label %990, label %996

990:                                              ; preds = %976
  %991 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %992 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %993 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %992, i32 0, i32 0
  %994 = load i32, i32* %993, align 8
  %995 = add nsw i32 %994, -1
  store i32 %995, i32* %993, align 8
  br label %1080

996:                                              ; preds = %976
  br label %997

997:                                              ; preds = %996, %957
  %998 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %999 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %998, i32 0, i32 2
  %1000 = load i32*, i32** %999, align 8
  %1001 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1002 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1001, i32 0, i32 3
  %1003 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1002, i32 0, i32 0
  store i32* %1000, i32** %1003, align 8
  %1004 = load i32, i32* %23, align 4
  %1005 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1006 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1005, i32 0, i32 3
  %1007 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1006, i32 0, i32 0
  %1008 = load i32*, i32** %1007, align 8
  %1009 = getelementptr inbounds i32, i32* %1008, i64 0
  store i32 %1004, i32* %1009, align 4
  %1010 = load %struct.uaudio_chan_alt*, %struct.uaudio_chan_alt** %22, align 8
  %1011 = getelementptr inbounds %struct.uaudio_chan_alt, %struct.uaudio_chan_alt* %1010, i32 0, i32 2
  %1012 = load i32, i32* %1011, align 8
  %1013 = load i32, i32* @UAUDIO_MATRIX_MAX, align 4
  %1014 = icmp sgt i32 %1012, %1013
  br i1 %1014, label %1015, label %1018

1015:                                             ; preds = %997
  %1016 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %1017 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %1016, i32 0, i32 2
  store i32 1, i32* %1017, align 8
  br label %1018

1018:                                             ; preds = %1015, %997
  %1019 = load i32, i32* %8, align 4
  %1020 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1021 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1020, i32 0, i32 3
  %1022 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1021, i32 0, i32 1
  %1023 = load i32, i32* %1022, align 8
  %1024 = icmp slt i32 %1019, %1023
  br i1 %1024, label %1031, label %1025

1025:                                             ; preds = %1018
  %1026 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1027 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1026, i32 0, i32 3
  %1028 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1027, i32 0, i32 1
  %1029 = load i32, i32* %1028, align 8
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1036

1031:                                             ; preds = %1025, %1018
  %1032 = load i32, i32* %8, align 4
  %1033 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1034 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1033, i32 0, i32 3
  %1035 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1034, i32 0, i32 1
  store i32 %1032, i32* %1035, align 8
  br label %1036

1036:                                             ; preds = %1031, %1025
  %1037 = load i32, i32* %8, align 4
  %1038 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1039 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1038, i32 0, i32 3
  %1040 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1039, i32 0, i32 2
  %1041 = load i32, i32* %1040, align 4
  %1042 = icmp sgt i32 %1037, %1041
  br i1 %1042, label %1049, label %1043

1043:                                             ; preds = %1036
  %1044 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1045 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1044, i32 0, i32 3
  %1046 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1045, i32 0, i32 2
  %1047 = load i32, i32* %1046, align 4
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1054

1049:                                             ; preds = %1043, %1036
  %1050 = load i32, i32* %8, align 4
  %1051 = load %struct.uaudio_chan*, %struct.uaudio_chan** %21, align 8
  %1052 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %1051, i32 0, i32 3
  %1053 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1052, i32 0, i32 2
  store i32 %1050, i32* %1053, align 4
  br label %1054

1054:                                             ; preds = %1049, %1043
  %1055 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %1056 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %1055, i32 0, i32 3
  %1057 = load i64, i64* %1056, align 8
  %1058 = icmp ne i64 %1057, 0
  br i1 %1058, label %1059, label %1079

1059:                                             ; preds = %1054
  %1060 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %1061 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %1060, i32 0, i32 4
  %1062 = load i64, i64* %24, align 8
  %1063 = load i64, i64* %26, align 8
  %1064 = load i64, i64* %29, align 8
  %1065 = load i64, i64* @UE_DIR_IN, align 8
  %1066 = icmp eq i64 %1064, %1065
  %1067 = zext i1 %1066 to i64
  %1068 = select i1 %1066, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)
  %1069 = load i64, i64* %9, align 8
  %1070 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %1071 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %1070, i32 0, i32 1
  %1072 = load i64, i64* %1071, align 8
  %1073 = trunc i64 %1072 to i32
  %1074 = load %struct.uaudio_format*, %struct.uaudio_format** %20, align 8
  %1075 = getelementptr inbounds %struct.uaudio_format, %struct.uaudio_format* %1074, i32 0, i32 3
  %1076 = load i32, i32* %1075, align 4
  %1077 = load i32, i32* %8, align 4
  %1078 = call i32 @sbuf_printf(i32* %1061, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i64 %1062, i64 %1063, i8* %1068, i64 %1069, i32 %1073, i32 %1076, i32 %1077)
  br label %1079

1079:                                             ; preds = %1059, %1054
  br label %1080

1080:                                             ; preds = %1079, %990, %970, %951, %828, %820, %800, %790, %759, %680, %625, %593, %565
  %1081 = bitcast %union.uaudio_sed* %14 to i32**
  store i32* null, i32** %1081, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  br label %43

1082:                                             ; preds = %43
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(%struct.usb_device*) #2

declare dso_local %struct.usb_descriptor* @usb_desc_foreach(%struct.usb_config_descriptor*, %struct.usb_descriptor*) #2

declare dso_local i32* @usbd_get_iface(%struct.usb_device*, i64) #2

declare dso_local i32 @DPRINTF(i8*, ...) #2

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i64) #2

declare dso_local i64 @UGETW(i32) #2

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #2

declare dso_local i64 @UE_GET_XFERTYPE(i32) #2

declare dso_local i64 @UE_GET_DIR(i32) #2

declare dso_local i32 @UGETDW(i32) #2

declare dso_local i64 @uaudio20_check_rate(%struct.usb_device*, i32, i64, i32) #2

declare dso_local i32 @UAUDIO_MAX_CHAN(i64) #2

declare dso_local i32 @UA_SAMP_LO(%struct.TYPE_14__*) #2

declare dso_local i32 @UA_SAMP_HI(%struct.TYPE_14__*) #2

declare dso_local i32 @UA_GETSAMP(%struct.TYPE_14__*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @usbd_get_speed(%struct.usb_device*) #2

declare dso_local i32 @uaudio_record_fix_fs(%struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @SND_FORMAT(i32, i32, i32) #2

declare dso_local i32 @feeder_matrix_default_format(i32) #2

declare dso_local i32 @sbuf_printf(i32*, i8*, i64, i64, i8*, i64, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
