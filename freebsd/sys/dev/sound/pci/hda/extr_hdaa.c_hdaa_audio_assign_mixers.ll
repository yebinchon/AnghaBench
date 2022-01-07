; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_assign_mixers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_assign_mixers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i64 }
%struct.hdaa_widget = type { i64, i64, i64, i64, i32, i32, i32*, i32, i32* }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_OUTPUT = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_BEEP_WIDGET = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDAA_CTL_IN = common dso_local global i64 0, align 8
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT = common dso_local global i64 0, align 8
@SOUND_MIXER_RECLEV = common dso_local global i64 0, align 8
@HDAA_CTL_OUT = common dso_local global i64 0, align 8
@SOUND_MIXER_VOLUME = common dso_local global i64 0, align 8
@SOUND_MIXER_IMIX = common dso_local global i64 0, align 8
@HDAA_IMIX_AS_DST = common dso_local global i32 0, align 4
@HDAA_ADC_MONITOR = common dso_local global i32 0, align 4
@SOUND_MIXER_IGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_audio_assign_mixers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_assign_mixers(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_audio_as*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca %struct.hdaa_widget*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %11 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %12 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %11, i32 0, i32 2
  %13 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %12, align 8
  store %struct.hdaa_audio_as* %13, %struct.hdaa_audio_as** %3, align 8
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %262, %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %20 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %265

23:                                               ; preds = %17
  %24 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %24, i32 %25)
  store %struct.hdaa_widget* %26, %struct.hdaa_widget** %4, align 8
  %27 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %28 = icmp eq %struct.hdaa_widget* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %31 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %23
  br label %262

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %36 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %37 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_OUTPUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %63, label %41

41:                                               ; preds = %35
  %42 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %43 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_BEEP_WIDGET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %41
  %48 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %49 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  %54 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %55 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %56 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %54, i64 %57
  %59 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HDAA_CTL_IN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %53, %41, %35
  %64 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %65 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %262

69:                                               ; preds = %63
  %70 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %71 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %72 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %75 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @hdaa_audio_ctl_source_amp(%struct.hdaa_devinfo* %70, i32 %73, i32 -1, i64 %76, i32 1, i32 0, i32* %8, i32* %9)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %79 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %80 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @hdaa_adjust_amp(%struct.hdaa_widget* %78, i64 %81, i32 %82, i32 %83, i32 %84)
  br label %136

86:                                               ; preds = %53, %47
  %87 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %88 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_AUDIO_INPUT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %94 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %95 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* @SOUND_MIXER_RECLEV, align 8
  %98 = call i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo* %93, i32 %96, i32 -1, i64 %97, i32 0, i32* %8, i32* %9)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %100 = load i64, i64* @SOUND_MIXER_RECLEV, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @hdaa_adjust_amp(%struct.hdaa_widget* %99, i64 %100, i32 %101, i32 %102, i32 %103)
  br label %135

105:                                              ; preds = %86
  %106 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %107 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %113 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %114 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %112, i64 %115
  %117 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HDAA_CTL_OUT, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %111
  %122 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %123 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %124 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %127 = call i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo* %122, i32 %125, i32 -1, i64 %126, i32 0, i32* %8, i32* %9)
  store i32 %127, i32* %10, align 4
  %128 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %129 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @hdaa_adjust_amp(%struct.hdaa_widget* %128, i64 %129, i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %121, %111, %105
  br label %135

135:                                              ; preds = %134, %92
  br label %136

136:                                              ; preds = %135, %69
  %137 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %138 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SOUND_MIXER_IMIX, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %179

142:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %143 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %144 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %145 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %148 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @hdaa_audio_ctl_source_amp(%struct.hdaa_devinfo* %143, i32 %146, i32 -1, i64 %149, i32 1, i32 0, i32* %8, i32* %9)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %142
  %155 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %156 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %157 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %160 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo* %155, i32 %158, i32 -1, i64 %161, i32 0, i32* %8, i32* %9)
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* @HDAA_IMIX_AS_DST, align 4
  %166 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %167 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %154, %142
  %171 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %172 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %173 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @hdaa_adjust_amp(%struct.hdaa_widget* %171, i64 %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %170, %136
  %180 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %181 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @HDAA_ADC_MONITOR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %261

186:                                              ; preds = %179
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %257, %186
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %190 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %260

193:                                              ; preds = %187
  %194 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %195 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %194, i32 0, i32 8
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %193
  br label %257

203:                                              ; preds = %193
  %204 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %205 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %206 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %204, i32 %211)
  store %struct.hdaa_widget* %212, %struct.hdaa_widget** %5, align 8
  %213 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %214 = icmp eq %struct.hdaa_widget* %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %203
  %216 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %217 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215, %203
  br label %257

221:                                              ; preds = %215
  %222 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %223 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, -1
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %257

227:                                              ; preds = %221
  %228 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %229 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp uge i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %3, align 8
  %234 = load %struct.hdaa_widget*, %struct.hdaa_widget** %5, align 8
  %235 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %233, i64 %236
  %238 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @HDAA_CTL_IN, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %232
  br label %257

243:                                              ; preds = %232, %227
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %244 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %245 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %246 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = load i64, i64* @SOUND_MIXER_IGAIN, align 8
  %250 = call i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo* %244, i32 %247, i32 %248, i64 %249, i32 0, i32* %8, i32* %9)
  store i32 %250, i32* %10, align 4
  %251 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %252 = load i64, i64* @SOUND_MIXER_IGAIN, align 8
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @hdaa_adjust_amp(%struct.hdaa_widget* %251, i64 %252, i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %243, %242, %226, %220, %202
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  br label %187

260:                                              ; preds = %187
  br label %261

261:                                              ; preds = %260, %179
  br label %262

262:                                              ; preds = %261, %68, %34
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %6, align 4
  br label %17

265:                                              ; preds = %17
  ret void
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_audio_ctl_source_amp(%struct.hdaa_devinfo*, i32, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @hdaa_adjust_amp(%struct.hdaa_widget*, i64, i32, i32, i32) #1

declare dso_local i32 @hdaa_audio_ctl_dest_amp(%struct.hdaa_devinfo*, i32, i32, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
