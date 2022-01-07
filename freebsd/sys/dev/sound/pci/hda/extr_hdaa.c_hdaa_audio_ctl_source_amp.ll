; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_source_amp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_source_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32 }
%struct.hdaa_widget = type { i64, i32, i64, i64, i64, i32, i64*, i64* }
%struct.hdaa_audio_ctl = type { i32 }

@HDA_PARSE_MAXDEPTH = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDAA_CTL_IN = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER = common dso_local global i64 0, align 8
@HDAA_CTL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_devinfo*, i64, i32, i32, i32, i32, i32*, i32*)* @hdaa_audio_ctl_source_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_audio_ctl_source_amp(%struct.hdaa_devinfo* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdaa_devinfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hdaa_widget*, align 8
  %19 = alloca %struct.hdaa_widget*, align 8
  %20 = alloca %struct.hdaa_audio_ctl*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @HDA_PARSE_MAXDEPTH, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* %28, align 4
  store i32 %33, i32* %9, align 4
  br label %328

34:                                               ; preds = %8
  %35 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %35, i32 %37)
  store %struct.hdaa_widget* %38, %struct.hdaa_widget** %18, align 8
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %40 = icmp eq %struct.hdaa_widget* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %43 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %28, align 4
  store i32 %47, i32* %9, align 4
  br label %328

48:                                               ; preds = %41
  %49 = load i32, i32* %15, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %55 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %60 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %59, i32 0, i32 7
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %22, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %23, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %23, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  br label %52

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %131

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %131

81:                                               ; preds = %78
  %82 = load i32, i32* %23, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %86 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %84, %81
  %91 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %92 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %93 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @HDAA_CTL_IN, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %91, i64 %94, i32 %95, i32 %96, i32 1)
  store %struct.hdaa_audio_ctl* %97, %struct.hdaa_audio_ctl** %20, align 8
  %98 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %99 = icmp ne %struct.hdaa_audio_ctl* %98, null
  br i1 %99, label %100, label %130

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = shl i32 1, %101
  %103 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %104 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %28, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %28, align 4
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %100
  %115 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %116 = call i64 @MINQDB(%struct.hdaa_audio_ctl* %115)
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %116
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  %122 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %123 = call i64 @MAXQDB(%struct.hdaa_audio_ctl* %122)
  %124 = load i32*, i32** %17, align 8
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %123
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  br label %129

129:                                              ; preds = %114, %100
  br label %130

130:                                              ; preds = %129, %90
  br label %131

131:                                              ; preds = %130, %84, %78, %75
  %132 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %133 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* %28, align 4
  store i32 %140, i32* %9, align 4
  br label %328

141:                                              ; preds = %136, %131
  %142 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %143 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %149 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147, %141
  %154 = load i32, i32* %15, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %28, align 4
  store i32 %157, i32* %9, align 4
  br label %328

158:                                              ; preds = %153, %147
  %159 = load i32, i32* %13, align 4
  %160 = shl i32 1, %159
  %161 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %162 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load i32, i32* %23, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %169 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_MIXER, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %174

174:                                              ; preds = %173, %167, %158
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %217

177:                                              ; preds = %174
  %178 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %179 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %180 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @HDAA_CTL_OUT, align 4
  %183 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %178, i64 %181, i32 %182, i32 -1, i32 1)
  store %struct.hdaa_audio_ctl* %183, %struct.hdaa_audio_ctl** %20, align 8
  %184 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %185 = icmp ne %struct.hdaa_audio_ctl* %184, null
  br i1 %185, label %186, label %216

186:                                              ; preds = %177
  %187 = load i32, i32* %13, align 4
  %188 = shl i32 1, %187
  %189 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %190 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %28, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %28, align 4
  %195 = load i32*, i32** %16, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %17, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %186
  %201 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %202 = call i64 @MINQDB(%struct.hdaa_audio_ctl* %201)
  %203 = load i32*, i32** %16, align 8
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %202
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  %208 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %20, align 8
  %209 = call i64 @MAXQDB(%struct.hdaa_audio_ctl* %208)
  %210 = load i32*, i32** %17, align 8
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %209
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  br label %215

215:                                              ; preds = %200, %186
  br label %216

216:                                              ; preds = %215, %177
  br label %217

217:                                              ; preds = %216, %174
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %218 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %219 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %21, align 4
  br label %221

221:                                              ; preds = %304, %217
  %222 = load i32, i32* %21, align 4
  %223 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %224 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %307

227:                                              ; preds = %221
  %228 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %229 = load i32, i32* %21, align 4
  %230 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %228, i32 %229)
  store %struct.hdaa_widget* %230, %struct.hdaa_widget** %19, align 8
  %231 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %232 = icmp eq %struct.hdaa_widget* %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %227
  %234 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %235 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233, %227
  br label %304

239:                                              ; preds = %233
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %300, %239
  %241 = load i32, i32* %22, align 4
  %242 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %243 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %303

246:                                              ; preds = %240
  %247 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %248 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %247, i32 0, i32 7
  %249 = load i64*, i64** %248, align 8
  %250 = load i32, i32* %22, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %299

255:                                              ; preds = %246
  %256 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %257 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %256, i32 0, i32 6
  %258 = load i64*, i64** %257, align 8
  %259 = load i32, i32* %22, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %11, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %299

265:                                              ; preds = %255
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  %266 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %10, align 8
  %267 = load %struct.hdaa_widget*, %struct.hdaa_widget** %19, align 8
  %268 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %15, align 4
  %274 = add nsw i32 %273, 1
  %275 = call i32 @hdaa_audio_ctl_source_amp(%struct.hdaa_devinfo* %266, i64 %269, i32 %270, i32 %271, i32 %272, i32 %274, i32* %24, i32* %25)
  %276 = load i32, i32* %28, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %28, align 4
  %278 = load i32, i32* %26, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %265
  %281 = load i32, i32* %27, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* %24, align 4
  store i32 %284, i32* %26, align 4
  %285 = load i32, i32* %25, align 4
  store i32 %285, i32* %27, align 4
  br label %298

286:                                              ; preds = %280, %265
  %287 = load i32, i32* %24, align 4
  %288 = load i32, i32* %25, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load i32, i32* %26, align 4
  %292 = load i32, i32* %24, align 4
  %293 = call i32 @imax(i32 %291, i32 %292)
  store i32 %293, i32* %26, align 4
  %294 = load i32, i32* %27, align 4
  %295 = load i32, i32* %25, align 4
  %296 = call i32 @imin(i32 %294, i32 %295)
  store i32 %296, i32* %27, align 4
  br label %297

297:                                              ; preds = %290, %286
  br label %298

298:                                              ; preds = %297, %283
  br label %299

299:                                              ; preds = %298, %255, %246
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %22, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %22, align 4
  br label %240

303:                                              ; preds = %240
  br label %304

304:                                              ; preds = %303, %238
  %305 = load i32, i32* %21, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %21, align 4
  br label %221

307:                                              ; preds = %221
  %308 = load i32*, i32** %16, align 8
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** %17, align 8
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %309, %311
  br i1 %312, label %313, label %326

313:                                              ; preds = %307
  %314 = load i32, i32* %26, align 4
  %315 = load i32, i32* %27, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %313
  %318 = load i32, i32* %26, align 4
  %319 = load i32*, i32** %16, align 8
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, %318
  store i32 %321, i32* %319, align 4
  %322 = load i32, i32* %27, align 4
  %323 = load i32*, i32** %17, align 8
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, %322
  store i32 %325, i32* %323, align 4
  br label %326

326:                                              ; preds = %317, %313, %307
  %327 = load i32, i32* %28, align 4
  store i32 %327, i32* %9, align 4
  br label %328

328:                                              ; preds = %326, %156, %139, %46, %32
  %329 = load i32, i32* %9, align 4
  ret i32 %329
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo*, i64, i32, i32, i32) #1

declare dso_local i64 @MINQDB(%struct.hdaa_audio_ctl*) #1

declare dso_local i64 @MAXQDB(%struct.hdaa_audio_ctl*) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @imin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
