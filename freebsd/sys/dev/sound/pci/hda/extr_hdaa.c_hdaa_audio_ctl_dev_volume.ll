; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dev_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dev_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { i32*, i32*, i32*, i32*, i64, i64, i64, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.hdaa_widget = type { i64, i64, i64, i32, i32, i32*, i32, i32, i32* }

@HDAA_AMP_MUTE_LEFT = common dso_local global i32 0, align 4
@HDAA_AMP_MUTE_RIGHT = common dso_local global i32 0, align 4
@SOUND_MIXER_RECLEV = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT = common dso_local global i64 0, align 8
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDAA_CTL_OUT = common dso_local global i64 0, align 8
@SOUND_MIXER_IGAIN = common dso_local global i32 0, align 4
@HDAA_ADC_MONITOR = common dso_local global i32 0, align 4
@HDAA_CTL_IN = common dso_local global i64 0, align 8
@SOUND_MIXER_IMIX = common dso_local global i32 0, align 4
@HDAA_IMIX_AS_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*, i32)* @hdaa_audio_ctl_dev_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_dev_volume(%struct.hdaa_pcm_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdaa_devinfo*, align 8
  %6 = alloca %struct.hdaa_widget*, align 8
  %7 = alloca %struct.hdaa_widget*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %14 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %13, i32 0, i32 7
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %14, align 8
  store %struct.hdaa_devinfo* %15, %struct.hdaa_devinfo** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %17 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @HDAA_AMP_MUTE_LEFT, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  store i32 -4000, i32* %9, align 4
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %30 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %37 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %35, %42
  %44 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %45 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %43, %50
  %52 = add nsw i32 %51, 50
  %53 = sdiv i32 %52, 100
  %54 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %55 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %53, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %28, %24
  %63 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %64 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @HDAA_AMP_MUTE_RIGHT, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  store i32 -4000, i32* %10, align 4
  br label %109

75:                                               ; preds = %62
  %76 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %77 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %84 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %82, %89
  %91 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %92 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %90, %97
  %99 = add nsw i32 %98, 50
  %100 = sdiv i32 %99, 100
  %101 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %102 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %100, %107
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %75, %71
  %110 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %111 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %336, %109
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %116 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %339

119:                                              ; preds = %113
  %120 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %120, i32 %121)
  store %struct.hdaa_widget* %122, %struct.hdaa_widget** %6, align 8
  %123 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %124 = icmp eq %struct.hdaa_widget* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %119
  %126 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %127 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %119
  br label %336

131:                                              ; preds = %125
  %132 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %133 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %138 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %336

142:                                              ; preds = %136
  br label %161

143:                                              ; preds = %131
  %144 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %145 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %148 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %143
  %152 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %153 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %156 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %336

160:                                              ; preds = %151, %143
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @SOUND_MIXER_RECLEV, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %161
  %166 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %167 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %175 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo* %172, i32 %173, i32 %176, i32 -1, i32 %177, i32 %178, i32 %179, i32 0)
  br label %336

181:                                              ; preds = %165, %161
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %187 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %185
  %192 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %193 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %192, i32 0, i32 2
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %196 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @HDAA_CTL_OUT, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %191
  %204 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %205 = load i32, i32* %4, align 4
  %206 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %207 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo* %204, i32 %205, i32 %208, i32 -1, i32 %209, i32 %210, i32 %211, i32 0)
  br label %336

213:                                              ; preds = %191, %185, %181
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @SOUND_MIXER_IGAIN, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %298

217:                                              ; preds = %213
  %218 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %219 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @HDAA_ADC_MONITOR, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %298

224:                                              ; preds = %217
  store i32 0, i32* %12, align 4
  br label %225

225:                                              ; preds = %294, %224
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %228 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %297

231:                                              ; preds = %225
  %232 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %233 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %232, i32 0, i32 8
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %231
  br label %294

241:                                              ; preds = %231
  %242 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %243 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %244 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %243, i32 0, i32 5
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %242, i32 %249)
  store %struct.hdaa_widget* %250, %struct.hdaa_widget** %7, align 8
  %251 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %252 = icmp eq %struct.hdaa_widget* %251, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %241
  %254 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %255 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253, %241
  br label %294

259:                                              ; preds = %253
  %260 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %261 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %262, -1
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  br label %294

265:                                              ; preds = %259
  %266 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %267 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp uge i64 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %265
  %271 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %5, align 8
  %272 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %271, i32 0, i32 2
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = load %struct.hdaa_widget*, %struct.hdaa_widget** %7, align 8
  %275 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @HDAA_CTL_IN, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  br label %294

283:                                              ; preds = %270, %265
  %284 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %285 = load i32, i32* %4, align 4
  %286 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %287 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %10, align 4
  %293 = call i32 @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo* %284, i32 %285, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 0)
  br label %294

294:                                              ; preds = %283, %282, %264, %258, %240
  %295 = load i32, i32* %12, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %12, align 4
  br label %225

297:                                              ; preds = %225
  br label %336

298:                                              ; preds = %217, %213
  %299 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %300 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %4, align 4
  %303 = icmp ne i32 %301, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  br label %336

305:                                              ; preds = %298
  %306 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %307 = load i32, i32* %4, align 4
  %308 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %309 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %10, align 4
  %314 = call i32 @hdaa_audio_ctl_source_volume(%struct.hdaa_pcm_devinfo* %306, i32 %307, i32 %310, i32 -1, i32 %311, i32 %312, i32 %313, i32 0)
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @SOUND_MIXER_IMIX, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %335

318:                                              ; preds = %305
  %319 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %320 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @HDAA_IMIX_AS_DST, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %318
  %326 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %3, align 8
  %327 = load i32, i32* %4, align 4
  %328 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %329 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %10, align 4
  %334 = call i32 @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo* %326, i32 %327, i32 %330, i32 -1, i32 %331, i32 %332, i32 %333, i32 0)
  br label %335

335:                                              ; preds = %325, %318, %305
  br label %336

336:                                              ; preds = %335, %304, %297, %203, %171, %159, %141, %130
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %11, align 4
  br label %113

339:                                              ; preds = %113
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_audio_ctl_dest_volume(%struct.hdaa_pcm_devinfo*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdaa_audio_ctl_source_volume(%struct.hdaa_pcm_devinfo*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
