; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_fill_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.usb_audio_control_descriptor = type { i32, i64, i64, i32, i32 }
%struct.usb_config_descriptor = type { i32 }
%struct.usb_descriptor = type { i64, i64 }
%struct.usb_audio_unit = type { i64 }
%struct.uaudio_terminal_node = type { %struct.TYPE_6__, %struct.uaudio_terminal_node*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.usb_descriptor* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"no Audio Control header\0A\00", align 1
@UDESC_CS_INTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid Audio Control header\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"found AC header, vers=%03x, len=%d\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"no memory!\0A\00", align 1
@UAUDIO_VERSION_30 = common dso_local global i64 0, align 8
@UAUDIO_VERSION_20 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Maximum ID=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"id=%d subtype=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unexpected AC header\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"bad AC desc subtype=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, %struct.usb_device*, i8*)* @uaudio_mixer_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_fill_info(%struct.uaudio_softc* %0, %struct.usb_device* %1, i8* %2) #0 {
  %4 = alloca %struct.uaudio_softc*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_audio_control_descriptor*, align 8
  %8 = alloca %struct.usb_config_descriptor*, align 8
  %9 = alloca %struct.usb_descriptor*, align 8
  %10 = alloca %struct.usb_audio_unit*, align 8
  %11 = alloca %struct.uaudio_terminal_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(%struct.usb_device* %15)
  store %struct.usb_config_descriptor* %16, %struct.usb_config_descriptor** %8, align 8
  store %struct.uaudio_terminal_node* null, %struct.uaudio_terminal_node** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @usb_desc_foreach(%struct.usb_config_descriptor* %17, i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %338

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.usb_audio_control_descriptor*
  store %struct.usb_audio_control_descriptor* %26, %struct.usb_audio_control_descriptor** %7, align 8
  %27 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %7, align 8
  %28 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 32
  br i1 %31, label %43, label %32

32:                                               ; preds = %24
  %33 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %7, align 8
  %34 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UDESC_CS_INTERFACE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %7, align 8
  %40 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 135
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %32, %24
  %44 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %338

45:                                               ; preds = %38
  %46 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %7, align 8
  %47 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @UGETW(i32 %48)
  %50 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %7, align 8
  %51 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %49, %53
  store i64 %54, i64* %12, align 8
  %55 = load %struct.usb_audio_control_descriptor*, %struct.usb_audio_control_descriptor** %7, align 8
  %56 = getelementptr inbounds %struct.usb_audio_control_descriptor, %struct.usb_audio_control_descriptor* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @UGETW(i32 %57)
  %59 = trunc i64 %58 to i32
  %60 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %61 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %63 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @DPRINTFN(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %65)
  %67 = load i32, i32* @M_TEMP, align 4
  %68 = load i32, i32* @M_WAITOK, align 4
  %69 = load i32, i32* @M_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = call %struct.uaudio_terminal_node* @malloc(i32 6144, i32 %67, i32 %70)
  store %struct.uaudio_terminal_node* %71, %struct.uaudio_terminal_node** %11, align 8
  %72 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %73 = icmp eq %struct.uaudio_terminal_node* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %45
  %75 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %338

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %145, %76
  %78 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @usb_desc_foreach(%struct.usb_config_descriptor* %78, i8* %79)
  store i8* %80, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %146

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = bitcast i8* %83 to %struct.usb_descriptor*
  store %struct.usb_descriptor* %84, %struct.usb_descriptor** %9, align 8
  %85 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %86 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %146

91:                                               ; preds = %82
  %92 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %93 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %91
  %98 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %99 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store %struct.usb_audio_unit* null, %struct.usb_audio_unit** %10, align 8
  br label %119

105:                                              ; preds = %97
  %106 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %107 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %114 = call %struct.usb_audio_unit* @uaudio20_mixer_verify_desc(%struct.usb_descriptor* %113, i32 0)
  store %struct.usb_audio_unit* %114, %struct.usb_audio_unit** %10, align 8
  br label %118

115:                                              ; preds = %105
  %116 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %117 = call %struct.usb_audio_unit* @uaudio_mixer_verify_desc(%struct.usb_descriptor* %116, i32 0)
  store %struct.usb_audio_unit* %117, %struct.usb_audio_unit** %10, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.usb_audio_unit*, %struct.usb_audio_unit** %10, align 8
  %121 = icmp ne %struct.usb_audio_unit* %120, null
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  %123 = load %struct.usb_audio_unit*, %struct.usb_audio_unit** %10, align 8
  %124 = bitcast %struct.usb_audio_unit* %123 to i8*
  %125 = bitcast i8* %124 to %struct.usb_descriptor*
  %126 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %127 = load %struct.usb_audio_unit*, %struct.usb_audio_unit** %10, align 8
  %128 = getelementptr inbounds %struct.usb_audio_unit, %struct.usb_audio_unit* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %126, i64 %129
  %131 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store %struct.usb_descriptor* %125, %struct.usb_descriptor** %132, align 8
  %133 = load %struct.usb_audio_unit*, %struct.usb_audio_unit** %10, align 8
  %134 = getelementptr inbounds %struct.usb_audio_unit, %struct.usb_audio_unit* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp ugt i64 %135, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %122
  %140 = load %struct.usb_audio_unit*, %struct.usb_audio_unit** %10, align 8
  %141 = getelementptr inbounds %struct.usb_audio_unit, %struct.usb_audio_unit* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %139, %122
  br label %145

145:                                              ; preds = %144, %119
  br label %77

146:                                              ; preds = %90, %77
  %147 = load i32, i32* %13, align 4
  %148 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %193, %146
  %151 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %152 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %192

158:                                              ; preds = %150
  %159 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %160 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %158
  %166 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %167 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %167, i64 %169
  %171 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %170, i32 0, i32 2
  %172 = call i32 @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %166, i32* %14, i32 1, %struct.TYPE_7__* %171)
  %173 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %174 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 255, i32* %175, align 8
  %176 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %177 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %180 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %181 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %180, i32 0, i32 1
  %182 = call i32 @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node* %179, i32* %14, i32 1, %struct.TYPE_8__* %181)
  br label %191

183:                                              ; preds = %158
  %184 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %185 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %185, i64 %187
  %189 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %188, i32 0, i32 2
  %190 = call i32 @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %184, i32* %14, i32 1, %struct.TYPE_7__* %189)
  br label %191

191:                                              ; preds = %183, %165
  br label %192

192:                                              ; preds = %191, %157
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %14, align 4
  %196 = icmp ne i32 %194, 0
  br i1 %196, label %150, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %209, %197
  %200 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %203, i64 %205
  %207 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %206, i32 0, i32 2
  %208 = call i32 @uaudio_mixer_find_outputs_sub(%struct.uaudio_terminal_node* %200, i32 %201, i32 %202, %struct.TYPE_7__* %207)
  br label %209

209:                                              ; preds = %199
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %14, align 4
  %212 = icmp ne i32 %210, 0
  br i1 %212, label %199, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %14, align 4
  br label %215

215:                                              ; preds = %229, %213
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %217, i64 %219
  %221 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  store i32 %216, i32* %222, align 8
  %223 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %224 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %224, i64 %226
  %228 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %227, i32 0, i32 1
  store %struct.uaudio_terminal_node* %223, %struct.uaudio_terminal_node** %228, align 8
  br label %229

229:                                              ; preds = %215
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %14, align 4
  %232 = icmp ne i32 %230, 0
  br i1 %232, label %215, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %13, align 4
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %333, %233
  %236 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %236, i64 %238
  %240 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load %struct.usb_descriptor*, %struct.usb_descriptor** %241, align 8
  store %struct.usb_descriptor* %242, %struct.usb_descriptor** %9, align 8
  %243 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %244 = icmp eq %struct.usb_descriptor* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br label %333

246:                                              ; preds = %235
  %247 = load i32, i32* %14, align 4
  %248 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %249 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %247, i64 %250)
  %252 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %253 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* @UAUDIO_VERSION_30, align 8
  %257 = icmp sge i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %246
  br label %333

259:                                              ; preds = %246
  %260 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %261 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* @UAUDIO_VERSION_20, align 8
  %265 = icmp sge i64 %263, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %259
  %267 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %268 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  switch i64 %269, label %288 [
    i64 135, label %270
    i64 134, label %272
    i64 132, label %272
    i64 130, label %272
    i64 137, label %272
    i64 139, label %272
    i64 140, label %272
    i64 141, label %272
    i64 142, label %272
    i64 129, label %272
    i64 133, label %273
    i64 128, label %278
    i64 136, label %283
  ]

270:                                              ; preds = %266
  %271 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %293

272:                                              ; preds = %266, %266, %266, %266, %266, %266, %266, %266, %266
  br label %293

273:                                              ; preds = %266
  %274 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %275 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %276 = load i32, i32* %14, align 4
  %277 = call i32 @uaudio20_mixer_add_mixer(%struct.uaudio_softc* %274, %struct.uaudio_terminal_node* %275, i32 %276)
  br label %293

278:                                              ; preds = %266
  %279 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %280 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %281 = load i32, i32* %14, align 4
  %282 = call i32 @uaudio20_mixer_add_selector(%struct.uaudio_softc* %279, %struct.uaudio_terminal_node* %280, i32 %281)
  br label %293

283:                                              ; preds = %266
  %284 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %285 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @uaudio20_mixer_add_feature(%struct.uaudio_softc* %284, %struct.uaudio_terminal_node* %285, i32 %286)
  br label %293

288:                                              ; preds = %266
  %289 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %290 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %291)
  br label %293

293:                                              ; preds = %288, %283, %278, %273, %272, %270
  br label %333

294:                                              ; preds = %259
  br label %295

295:                                              ; preds = %294
  %296 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %297 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  switch i64 %298, label %327 [
    i64 135, label %299
    i64 134, label %301
    i64 132, label %301
    i64 133, label %302
    i64 128, label %307
    i64 136, label %312
    i64 131, label %317
    i64 138, label %322
  ]

299:                                              ; preds = %295
  %300 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %332

301:                                              ; preds = %295, %295
  br label %332

302:                                              ; preds = %295
  %303 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %304 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %305 = load i32, i32* %14, align 4
  %306 = call i32 @uaudio_mixer_add_mixer(%struct.uaudio_softc* %303, %struct.uaudio_terminal_node* %304, i32 %305)
  br label %332

307:                                              ; preds = %295
  %308 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %309 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %310 = load i32, i32* %14, align 4
  %311 = call i32 @uaudio_mixer_add_selector(%struct.uaudio_softc* %308, %struct.uaudio_terminal_node* %309, i32 %310)
  br label %332

312:                                              ; preds = %295
  %313 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %314 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %315 = load i32, i32* %14, align 4
  %316 = call i32 @uaudio_mixer_add_feature(%struct.uaudio_softc* %313, %struct.uaudio_terminal_node* %314, i32 %315)
  br label %332

317:                                              ; preds = %295
  %318 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %319 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %320 = load i32, i32* %14, align 4
  %321 = call i32 @uaudio_mixer_add_processing(%struct.uaudio_softc* %318, %struct.uaudio_terminal_node* %319, i32 %320)
  br label %332

322:                                              ; preds = %295
  %323 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %324 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %325 = load i32, i32* %14, align 4
  %326 = call i32 @uaudio_mixer_add_extension(%struct.uaudio_softc* %323, %struct.uaudio_terminal_node* %324, i32 %325)
  br label %332

327:                                              ; preds = %295
  %328 = load %struct.usb_descriptor*, %struct.usb_descriptor** %9, align 8
  %329 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %330)
  br label %332

332:                                              ; preds = %327, %322, %317, %312, %307, %302, %301, %299
  br label %333

333:                                              ; preds = %332, %293, %258, %245
  %334 = load i32, i32* %14, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %14, align 4
  %336 = icmp ne i32 %334, 0
  br i1 %336, label %235, label %337

337:                                              ; preds = %333
  br label %338

338:                                              ; preds = %337, %74, %43, %22
  %339 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %11, align 8
  %340 = load i32, i32* @M_TEMP, align 4
  %341 = call i32 @free(%struct.uaudio_terminal_node* %339, i32 %340)
  ret void
}

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(%struct.usb_device*) #1

declare dso_local i8* @usb_desc_foreach(%struct.usb_config_descriptor*, i8*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @UGETW(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i64) #1

declare dso_local %struct.uaudio_terminal_node* @malloc(i32, i32, i32) #1

declare dso_local %struct.usb_audio_unit* @uaudio20_mixer_verify_desc(%struct.usb_descriptor*, i32) #1

declare dso_local %struct.usb_audio_unit* @uaudio_mixer_verify_desc(%struct.usb_descriptor*, i32) #1

declare dso_local i32 @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @uaudio_mixer_find_outputs_sub(%struct.uaudio_terminal_node*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @uaudio20_mixer_add_mixer(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio20_mixer_add_selector(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio20_mixer_add_feature(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio_mixer_add_mixer(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio_mixer_add_selector(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio_mixer_add_feature(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio_mixer_add_processing(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @uaudio_mixer_add_extension(%struct.uaudio_softc*, %struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @free(%struct.uaudio_terminal_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
