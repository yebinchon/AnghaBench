; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_ossmixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_ossmixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.hdaa_pcm_devinfo = type { i64, i32, i64, i64, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { %struct.hdaa_chan*, %struct.hdaa_audio_as* }
%struct.hdaa_chan = type { i64* }
%struct.hdaa_audio_as = type { i32, i64*, i32 }
%struct.hdaa_widget = type { i64 }
%struct.hdaa_audio_ctl = type { i64, i32, i64*, i64*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @hdaa_audio_ctl_ossmixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_audio_ctl_ossmixer_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %7 = alloca %struct.hdaa_devinfo*, align 8
  %8 = alloca %struct.hdaa_widget*, align 8
  %9 = alloca %struct.hdaa_audio_as*, align 8
  %10 = alloca %struct.hdaa_audio_ctl*, align 8
  %11 = alloca %struct.hdaa_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %16 = call %struct.hdaa_pcm_devinfo* @mix_getdevinfo(%struct.snd_mixer* %15)
  store %struct.hdaa_pcm_devinfo* %16, %struct.hdaa_pcm_devinfo** %6, align 8
  %17 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %18 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %17, i32 0, i32 4
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %18, align 8
  store %struct.hdaa_devinfo* %19, %struct.hdaa_devinfo** %7, align 8
  store i32 -1, i32* %14, align 4
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %21 = call i32 @hdaa_lock(%struct.hdaa_devinfo* %20)
  %22 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %23 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %28 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %27)
  store i32 0, i32* %3, align 4
  br label %246

29:                                               ; preds = %2
  %30 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %31 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %30, i32 0, i32 1
  %32 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %31, align 8
  %33 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %34 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %32, i64 %35
  store %struct.hdaa_audio_as* %36, %struct.hdaa_audio_as** %9, align 8
  %37 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %38 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %29
  %42 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %43 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %42)
  %44 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %45 = call i32 @mix_getrecdevs(%struct.snd_mixer* %44)
  store i32 %45, i32* %3, align 4
  br label %246

46:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %109, %46
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %50 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %112

53:                                               ; preds = %47
  %54 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %55 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %54, i32 0, i32 0
  %56 = load %struct.hdaa_chan*, %struct.hdaa_chan** %55, align 8
  %57 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %9, align 8
  %58 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %56, i64 %63
  store %struct.hdaa_chan* %64, %struct.hdaa_chan** %11, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %105, %53
  %66 = load %struct.hdaa_chan*, %struct.hdaa_chan** %11, align 8
  %67 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %65
  %75 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %76 = load %struct.hdaa_chan*, %struct.hdaa_chan** %11, align 8
  %77 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %75, i64 %82)
  store %struct.hdaa_widget* %83, %struct.hdaa_widget** %8, align 8
  %84 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %85 = icmp eq %struct.hdaa_widget* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = load %struct.hdaa_widget*, %struct.hdaa_widget** %8, align 8
  %88 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %74
  br label %105

92:                                               ; preds = %86
  %93 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.hdaa_chan*, %struct.hdaa_chan** %11, align 8
  %96 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @hdaa_audio_ctl_recsel_comm(%struct.hdaa_pcm_devinfo* %93, i32 %94, i64 %101, i32 0)
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %92, %91
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %65

108:                                              ; preds = %65
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %47

112:                                              ; preds = %47
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %115, %112
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %215, %178, %135, %116
  %118 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %119 = call %struct.hdaa_audio_ctl* @hdaa_audio_ctl_each(%struct.hdaa_devinfo* %118, i32* %12)
  store %struct.hdaa_audio_ctl* %119, %struct.hdaa_audio_ctl** %10, align 8
  %120 = icmp ne %struct.hdaa_audio_ctl* %119, null
  br i1 %120, label %121, label %216

121:                                              ; preds = %117
  %122 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %123 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %121
  %127 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %128 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %131 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %126, %121
  br label %117

136:                                              ; preds = %126
  %137 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %138 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp sge i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %143 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %142, i32 0, i32 5
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %148 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %179, label %151

151:                                              ; preds = %141, %136
  %152 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %153 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp uge i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %158 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %157, i32 0, i32 5
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %163 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %179, label %166

166:                                              ; preds = %156, %151
  %167 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %168 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %173 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %172, i32 0, i32 5
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, -2
  br i1 %177, label %179, label %178

178:                                              ; preds = %171, %166
  br label %117

179:                                              ; preds = %171, %156, %141
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %212, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %215

184:                                              ; preds = %180
  %185 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %186 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = shl i32 1, %188
  %190 = and i32 %187, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %184
  %193 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %194 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %193, i32 0, i32 4
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  store i64 0, i64* %198, align 8
  %199 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %200 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %199, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 0, i64* %204, align 8
  %205 = load %struct.hdaa_audio_ctl*, %struct.hdaa_audio_ctl** %10, align 8
  %206 = getelementptr inbounds %struct.hdaa_audio_ctl, %struct.hdaa_audio_ctl* %205, i32 0, i32 2
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %192, %184
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %180

215:                                              ; preds = %180
  br label %117

216:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %236, %216
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %239

221:                                              ; preds = %217
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %224 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %222, %225
  %227 = load i32, i32* %13, align 4
  %228 = shl i32 1, %227
  %229 = and i32 %226, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %221
  %232 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @hdaa_audio_ctl_dev_volume(%struct.hdaa_pcm_devinfo* %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %221
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %217

239:                                              ; preds = %217
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %6, align 8
  %242 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  %244 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %243)
  %245 = load i32, i32* %14, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %239, %41, %26
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local %struct.hdaa_pcm_devinfo* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @hdaa_lock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_unlock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @mix_getrecdevs(%struct.snd_mixer*) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i64) #1

declare dso_local i32 @hdaa_audio_ctl_recsel_comm(%struct.hdaa_pcm_devinfo*, i32, i64, i32) #1

declare dso_local %struct.hdaa_audio_ctl* @hdaa_audio_ctl_each(%struct.hdaa_devinfo*, i32*) #1

declare dso_local i32 @hdaa_audio_ctl_dev_volume(%struct.hdaa_pcm_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
