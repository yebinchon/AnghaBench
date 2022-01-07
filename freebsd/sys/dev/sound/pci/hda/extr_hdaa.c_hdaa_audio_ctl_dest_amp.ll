; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dest_amp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_dest_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i64, i64 }
%struct.hdaa_widget = type { i64, i32, i64*, i64*, i64, i32, i64, i32 }
%struct.hdaa_audio_ctl = type { i32 }

@HDA_PARSE_MAXDEPTH = common dso_local global i32 0, align 4
@HDAA_CTL_OUT = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDAA_CTL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_devinfo*, i64, i32, i32, i32, i32*, i32*)* @hdaa_audio_ctl_dest_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdaa_devinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.hdaa_audio_as*, align 8
  %17 = alloca %struct.hdaa_widget*, align 8
  %18 = alloca %struct.hdaa_widget*, align 8
  %19 = alloca %struct.hdaa_audio_ctl*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %29 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %28, i32 0, i32 2
  %30 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %29, align 8
  store %struct.hdaa_audio_as* %30, %struct.hdaa_audio_as** %16, align 8
  store i32 0, i32* %27, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @HDA_PARSE_MAXDEPTH, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %7
  %35 = load i32, i32* %27, align 4
  store i32 %35, i32* %8, align 4
  br label %323

36:                                               ; preds = %7
  %37 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = trunc i64 %38 to i32
  %40 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %37, i32 %39)
  store %struct.hdaa_widget* %40, %struct.hdaa_widget** %17, align 8
  %41 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %42 = icmp eq %struct.hdaa_widget* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %45 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %27, align 4
  store i32 %49, i32* %8, align 4
  br label %323

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %189

53:                                               ; preds = %50
  store i32 0, i32* %22, align 4
  %54 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %55 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %20, align 4
  br label %57

57:                                               ; preds = %109, %53
  %58 = load i32, i32* %20, align 4
  %59 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %60 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %57
  %64 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %65 = load i32, i32* %20, align 4
  %66 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %64, i32 %65)
  store %struct.hdaa_widget* %66, %struct.hdaa_widget** %18, align 8
  %67 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %68 = icmp eq %struct.hdaa_widget* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %71 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %63
  br label %109

75:                                               ; preds = %69
  store i32 0, i32* %21, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %21, align 4
  %78 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %79 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %76
  %83 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %84 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %82
  %92 = load %struct.hdaa_widget*, %struct.hdaa_widget** %18, align 8
  %93 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %22, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %101, %91, %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %21, align 4
  br label %76

108:                                              ; preds = %76
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %57

112:                                              ; preds = %57
  %113 = load i32, i32* %22, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %144

115:                                              ; preds = %112
  %116 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %117 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %118, 0
  br i1 %119, label %147, label %120

120:                                              ; preds = %115
  %121 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %16, align 8
  %122 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %123 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %121, i64 %124
  %126 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %120
  %130 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %16, align 8
  %131 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %132 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %130, i64 %133
  %135 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %129
  %139 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %140 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 32768
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138, %112
  %145 = load i32, i32* %22, align 4
  %146 = icmp sgt i32 %145, 2
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %138, %129, %120, %115
  %148 = load i32, i32* %27, align 4
  store i32 %148, i32* %8, align 4
  br label %323

149:                                              ; preds = %144
  %150 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %151 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %152 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @HDAA_CTL_OUT, align 4
  %155 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %150, i32 %153, i32 %154, i32 -1, i32 1)
  store %struct.hdaa_audio_ctl* %155, %struct.hdaa_audio_ctl** %19, align 8
  %156 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %157 = icmp ne %struct.hdaa_audio_ctl* %156, null
  br i1 %157, label %158, label %188

158:                                              ; preds = %149
  %159 = load i32, i32* %12, align 4
  %160 = shl i32 1, %159
  %161 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %162 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %27, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %27, align 4
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %158
  %173 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %174 = call i64 @MINQDB(%struct.hdaa_audio_ctl* %173)
  %175 = load i32*, i32** %14, align 8
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %174
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 4
  %180 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %181 = call i64 @MAXQDB(%struct.hdaa_audio_ctl* %180)
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %181
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  br label %187

187:                                              ; preds = %172, %158
  br label %188

188:                                              ; preds = %187, %149
  br label %189

189:                                              ; preds = %188, %50
  %190 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %191 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* %13, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32, i32* %27, align 4
  store i32 %199, i32* %8, align 4
  br label %323

200:                                              ; preds = %195, %189
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %299, %200
  %202 = load i32, i32* %20, align 4
  %203 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %204 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %302

207:                                              ; preds = %201
  %208 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %209 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  br label %299

217:                                              ; preds = %207
  %218 = load i32, i32* %11, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %299

225:                                              ; preds = %220, %217
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %226 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %227 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %228 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @HDAA_CTL_IN, align 4
  %231 = load i32, i32* %20, align 4
  %232 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo* %226, i32 %229, i32 %230, i32 %231, i32 1)
  store %struct.hdaa_audio_ctl* %232, %struct.hdaa_audio_ctl** %19, align 8
  %233 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %234 = icmp ne %struct.hdaa_audio_ctl* %233, null
  br i1 %234, label %235, label %263

235:                                              ; preds = %225
  %236 = load i32, i32* %12, align 4
  %237 = shl i32 1, %236
  %238 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %239 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %27, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %27, align 4
  %244 = load i32*, i32** %14, align 8
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %262

249:                                              ; preds = %235
  %250 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %251 = call i64 @MINQDB(%struct.hdaa_audio_ctl* %250)
  %252 = load i32, i32* %23, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %23, align 4
  %256 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %19, align 8
  %257 = call i64 @MAXQDB(%struct.hdaa_audio_ctl* %256)
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %24, align 4
  br label %262

262:                                              ; preds = %249, %235
  br label %263

263:                                              ; preds = %262, %225
  %264 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %9, align 8
  %265 = load %struct.hdaa_widget*, %struct.hdaa_widget** %17, align 8
  %266 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %265, i32 0, i32 3
  %267 = load i64*, i64** %266, align 8
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  %275 = call i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo* %264, i64 %271, i32 -1, i32 %272, i32 %274, i32* %23, i32* %24)
  %276 = load i32, i32* %27, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %27, align 4
  %278 = load i32, i32* %25, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %263
  %281 = load i32, i32* %26, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* %23, align 4
  store i32 %284, i32* %25, align 4
  %285 = load i32, i32* %24, align 4
  store i32 %285, i32* %26, align 4
  br label %298

286:                                              ; preds = %280, %263
  %287 = load i32, i32* %23, align 4
  %288 = load i32, i32* %24, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load i32, i32* %25, align 4
  %292 = load i32, i32* %23, align 4
  %293 = call i32 @imax(i32 %291, i32 %292)
  store i32 %293, i32* %25, align 4
  %294 = load i32, i32* %26, align 4
  %295 = load i32, i32* %24, align 4
  %296 = call i32 @imin(i32 %294, i32 %295)
  store i32 %296, i32* %26, align 4
  br label %297

297:                                              ; preds = %290, %286
  br label %298

298:                                              ; preds = %297, %283
  br label %299

299:                                              ; preds = %298, %224, %216
  %300 = load i32, i32* %20, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %20, align 4
  br label %201

302:                                              ; preds = %201
  %303 = load i32*, i32** %14, align 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %15, align 8
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %304, %306
  br i1 %307, label %308, label %321

308:                                              ; preds = %302
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %26, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load i32, i32* %25, align 4
  %314 = load i32*, i32** %14, align 8
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, %313
  store i32 %316, i32* %314, align 4
  %317 = load i32, i32* %26, align 4
  %318 = load i32*, i32** %15, align 8
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, %317
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %312, %308, %302
  %322 = load i32, i32* %27, align 4
  store i32 %322, i32* %8, align 4
  br label %323

323:                                              ; preds = %321, %198, %147, %48, %34
  %324 = load i32, i32* %8, align 4
  ret i32 %324
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_amp_get(%struct.hdaa_devinfo*, i32, i32, i32, i32) #1

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
