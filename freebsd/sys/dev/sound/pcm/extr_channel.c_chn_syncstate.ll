; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_syncstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_channel.c_chn_syncstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i64, i32, %struct.snddev_info* }
%struct.snddev_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_mixer* }
%struct.snd_mixer = type { i32 }
%struct.pcm_feeder = type { i32 }

@FEEDER_VOLUME = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@SOUND_MIXER_PCM = common dso_local global i64 0, align 8
@SOUND_MIXER_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Soft PCM Volume: Failed to read pcm default value\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Soft PCM Volume: Failed to read parent default value\0A\00", align 1
@SND_VOL_C_MASTER = common dso_local global i32 0, align 4
@FEEDER_EQ = common dso_local global i32 0, align 4
@SOUND_MIXER_TREBLE = common dso_local global i64 0, align 8
@SOUND_MIXER_BASS = common dso_local global i64 0, align 8
@FEEDEQ_TREBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"EQ: Failed to set treble -- %d\0A\00", align 1
@FEEDEQ_BASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"EQ: Failed to set bass -- %d\0A\00", align 1
@FEEDEQ_PREAMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"EQ: Failed to set preamp -- %d\0A\00", align 1
@SD_F_EQ_BYPASSED = common dso_local global i32 0, align 4
@FEEDEQ_BYPASS = common dso_local global i32 0, align 4
@SD_F_EQ_ENABLED = common dso_local global i32 0, align 4
@FEEDEQ_ENABLE = common dso_local global i32 0, align 4
@FEEDEQ_DISABLE = common dso_local global i32 0, align 4
@FEEDEQ_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"EQ: Failed to set state -- %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chn_syncstate(%struct.pcm_channel* %0) #0 {
  %2 = alloca %struct.pcm_channel*, align 8
  %3 = alloca %struct.snddev_info*, align 8
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcm_feeder*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %2, align 8
  %15 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %16 = icmp ne %struct.pcm_channel* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %19 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %18, i32 0, i32 3
  %20 = load %struct.snddev_info*, %struct.snddev_info** %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi %struct.snddev_info* [ %20, %17 ], [ null, %21 ]
  store %struct.snddev_info* %23, %struct.snddev_info** %3, align 8
  %24 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %25 = icmp ne %struct.snddev_info* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %28 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %33 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.snd_mixer*, %struct.snd_mixer** %35, align 8
  br label %38

37:                                               ; preds = %26, %22
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi %struct.snd_mixer* [ %36, %31 ], [ null, %37 ]
  store %struct.snd_mixer* %39, %struct.snd_mixer** %4, align 8
  %40 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %41 = icmp eq %struct.snddev_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %44 = icmp eq %struct.snd_mixer* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %38
  br label %247

46:                                               ; preds = %42
  %47 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %48 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %47)
  %49 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %50 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FEEDER_VOLUME, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %128

56:                                               ; preds = %46
  %57 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %58 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PCMDIR_PLAY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %64 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %71 = load i64, i64* @SOUND_MIXER_PCM, align 8
  %72 = call i32 @mix_get(%struct.snd_mixer* %70, i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %74 = load i64, i64* @SOUND_MIXER_PCM, align 8
  %75 = call i64 @mix_getparent(%struct.snd_mixer* %73, i64 %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @SOUND_MIXER_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @mix_get(%struct.snd_mixer* %80, i64 %81)
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %69
  store i32 25700, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %87

85:                                               ; preds = %62, %56
  store i32 25700, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %92 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 25700, i32* %6, align 4
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %100 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 25700, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 127
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 127
  %108 = mul nsw i32 %105, %107
  %109 = sdiv i32 %108, 100
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 127
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 8
  %115 = and i32 %114, 127
  %116 = mul nsw i32 %112, %115
  %117 = sdiv i32 %116, 100
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = ashr i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %123 = load i32, i32* @SND_VOL_C_MASTER, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @chn_setvolume_multi(%struct.pcm_channel* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %103, %46
  %129 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %130 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @FEEDER_EQ, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %247

136:                                              ; preds = %128
  %137 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %138 = load i64, i64* @SOUND_MIXER_TREBLE, align 8
  %139 = call i32 @mix_get(%struct.snd_mixer* %137, i64 %138)
  store i32 %139, i32* %12, align 4
  %140 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %141 = load i64, i64* @SOUND_MIXER_BASS, align 8
  %142 = call i32 @mix_get(%struct.snd_mixer* %140, i64 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 50, i32* %12, align 4
  br label %154

146:                                              ; preds = %136
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, 127
  %149 = load i32, i32* %12, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 127
  %152 = add nsw i32 %148, %151
  %153 = ashr i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %146, %145
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 50, i32* %13, align 4
  br label %166

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = and i32 %159, 127
  %161 = load i32, i32* %13, align 4
  %162 = ashr i32 %161, 8
  %163 = and i32 %162, 127
  %164 = add nsw i32 %160, %163
  %165 = ashr i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %158, %157
  %167 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %168 = load i32, i32* @FEEDER_EQ, align 4
  %169 = call %struct.pcm_feeder* @chn_findfeeder(%struct.pcm_channel* %167, i32 %168)
  store %struct.pcm_feeder* %169, %struct.pcm_feeder** %11, align 8
  %170 = load %struct.pcm_feeder*, %struct.pcm_feeder** %11, align 8
  %171 = icmp ne %struct.pcm_feeder* %170, null
  br i1 %171, label %172, label %246

172:                                              ; preds = %166
  %173 = load %struct.pcm_feeder*, %struct.pcm_feeder** %11, align 8
  %174 = load i32, i32* @FEEDEQ_TREBLE, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i64 @FEEDER_SET(%struct.pcm_feeder* %173, i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %180 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %178, %172
  %185 = load %struct.pcm_feeder*, %struct.pcm_feeder** %11, align 8
  %186 = load i32, i32* @FEEDEQ_BASS, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i64 @FEEDER_SET(%struct.pcm_feeder* %185, i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %192 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 (i32, i8*, ...) @device_printf(i32 %193, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %190, %184
  %197 = load %struct.pcm_feeder*, %struct.pcm_feeder** %11, align 8
  %198 = load i32, i32* @FEEDEQ_PREAMP, align 4
  %199 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %200 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @FEEDER_SET(%struct.pcm_feeder* %197, i32 %198, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %196
  %205 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %206 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %209 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %204, %196
  %213 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %214 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @SD_F_EQ_BYPASSED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load i32, i32* @FEEDEQ_BYPASS, align 4
  store i32 %220, i32* %14, align 4
  br label %233

221:                                              ; preds = %212
  %222 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %223 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @SD_F_EQ_ENABLED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = load i32, i32* @FEEDEQ_ENABLE, align 4
  store i32 %229, i32* %14, align 4
  br label %232

230:                                              ; preds = %221
  %231 = load i32, i32* @FEEDEQ_DISABLE, align 4
  store i32 %231, i32* %14, align 4
  br label %232

232:                                              ; preds = %230, %228
  br label %233

233:                                              ; preds = %232, %219
  %234 = load %struct.pcm_feeder*, %struct.pcm_feeder** %11, align 8
  %235 = load i32, i32* @FEEDEQ_STATE, align 4
  %236 = load i32, i32* %14, align 4
  %237 = call i64 @FEEDER_SET(%struct.pcm_feeder* %234, i32 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  %240 = load %struct.pcm_channel*, %struct.pcm_channel** %2, align 8
  %241 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = call i32 (i32, i8*, ...) @device_printf(i32 %242, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %239, %233
  br label %246

246:                                              ; preds = %245, %166
  br label %247

247:                                              ; preds = %45, %246, %128
  ret void
}

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @mix_get(%struct.snd_mixer*, i64) #1

declare dso_local i64 @mix_getparent(%struct.snd_mixer*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @chn_setvolume_multi(%struct.pcm_channel*, i32, i32, i32, i32) #1

declare dso_local %struct.pcm_feeder* @chn_findfeeder(%struct.pcm_channel*, i32) #1

declare dso_local i64 @FEEDER_SET(%struct.pcm_feeder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
