; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_ioctl_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_dsp.c_dsp_ioctl_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.pcm_channel = type { i32, i64 }
%struct.snddev_info = type { i32 }

@SD_F_VPC = common dso_local global i32 0, align 4
@SOUND_MIXER_RECLEV = common dso_local global i32 0, align 4
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@SND_DEV_DSPHW_PLAY = common dso_local global i32 0, align 4
@SND_DEV_DSPHW_VPLAY = common dso_local global i32 0, align 4
@SND_DEV_DSPHW_REC = common dso_local global i32 0, align 4
@SND_DEV_DSPHW_VREC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FEEDER_VOLUME = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i64 0, align 8
@SND_VOL_C_PCM = common dso_local global i32 0, align 4
@SND_CHN_T_FL = common dso_local global i32 0, align 4
@SND_CHN_T_FR = common dso_local global i32 0, align 4
@SOUND_MASK_RECLEV = common dso_local global i32 0, align 4
@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.pcm_channel*, i32, i64)* @dsp_ioctl_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_ioctl_channel(%struct.cdev* %0, %struct.pcm_channel* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca %struct.pcm_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.snddev_info*, align 8
  %11 = alloca %struct.pcm_channel*, align 8
  %12 = alloca %struct.pcm_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store %struct.pcm_channel* %1, %struct.pcm_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %19 = load %struct.cdev*, %struct.cdev** %6, align 8
  %20 = call %struct.snddev_info* @dsp_get_info(%struct.cdev* %19)
  store %struct.snddev_info* %20, %struct.snddev_info** %10, align 8
  %21 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %22 = call i32 @PCM_REGISTERED(%struct.snddev_info* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.cdev*, %struct.cdev** %6, align 8
  %26 = call i32 @dsp_get_flags(%struct.cdev* %25)
  %27 = load i32, i32* @SD_F_VPC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %4
  store i32 -1, i32* %5, align 4
  br label %256

31:                                               ; preds = %24
  %32 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %33 = call i32 @PCM_UNLOCKASSERT(%struct.snddev_info* %32)
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %13, align 4
  %36 = load %struct.cdev*, %struct.cdev** %6, align 8
  %37 = call %struct.pcm_channel* @PCM_RDCH(%struct.cdev* %36)
  store %struct.pcm_channel* %37, %struct.pcm_channel** %11, align 8
  %38 = load %struct.cdev*, %struct.cdev** %6, align 8
  %39 = call %struct.pcm_channel* @PCM_WRCH(%struct.cdev* %38)
  store %struct.pcm_channel* %39, %struct.pcm_channel** %12, align 8
  %40 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %41 = icmp eq %struct.pcm_channel* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.cdev*, %struct.cdev** %6, align 8
  %44 = call %struct.pcm_channel* @PCM_VOLCH(%struct.cdev* %43)
  store %struct.pcm_channel* %44, %struct.pcm_channel** %7, align 8
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %47 = icmp eq %struct.pcm_channel* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @SOUND_MIXER_RECLEV, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %54 = icmp ne %struct.pcm_channel* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  store %struct.pcm_channel* %56, %struct.pcm_channel** %7, align 8
  br label %67

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.pcm_channel*, %struct.pcm_channel** %12, align 8
  %63 = icmp ne %struct.pcm_channel* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.pcm_channel*, %struct.pcm_channel** %12, align 8
  store %struct.pcm_channel* %65, %struct.pcm_channel** %7, align 8
  br label %66

66:                                               ; preds = %64, %61, %57
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.cdev*, %struct.cdev** %6, align 8
  %70 = call i32 @PCMDEV(%struct.cdev* %69)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %72 = icmp eq %struct.pcm_channel* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @SND_DEV_DSPHW_PLAY, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @SND_DEV_DSPHW_VPLAY, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @SND_DEV_DSPHW_REC, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @SND_DEV_DSPHW_VREC, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85, %81, %77, %73
  %90 = load %struct.cdev*, %struct.cdev** %6, align 8
  %91 = call i32 @dsp_get_volume_channel(%struct.cdev* %90, %struct.pcm_channel** %7)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  br label %256

96:                                               ; preds = %89
  %97 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %98 = icmp eq %struct.pcm_channel* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %5, align 4
  br label %256

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %85, %68
  %103 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %104 = icmp ne %struct.pcm_channel* %103, null
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %107 = call i32 @CHN_LOCK(%struct.pcm_channel* %106)
  %108 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %109 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FEEDER_VOLUME, align 4
  %112 = shl i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %105
  %116 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %117 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %116)
  store i32 -1, i32* %5, align 4
  br label %256

118:                                              ; preds = %105
  %119 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %120 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PCMDIR_PLAY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  store %struct.pcm_channel* %125, %struct.pcm_channel** %12, align 8
  br label %128

126:                                              ; preds = %118
  %127 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  store %struct.pcm_channel* %127, %struct.pcm_channel** %11, align 8
  br label %128

128:                                              ; preds = %126, %124
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %15, align 4
  %131 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %132 = icmp ne %struct.pcm_channel* %131, null
  br i1 %132, label %133, label %201

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %139 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PCMDIR_PLAY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %153, label %143

143:                                              ; preds = %137, %133
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @SOUND_MIXER_RECLEV, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %201

147:                                              ; preds = %143
  %148 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %149 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PCMDIR_REC, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %201

153:                                              ; preds = %147, %137
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, -256
  %156 = call i32 @MIXER_WRITE(i32 0)
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %153
  %159 = load i64, i64* %9, align 8
  %160 = inttoptr i64 %159 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 127
  store i32 %162, i32* %16, align 4
  %163 = load i64, i64* %9, align 8
  %164 = inttoptr i64 %163 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 8
  %167 = and i32 %166, 127
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %168, %169
  %171 = ashr i32 %170, 1
  store i32 %171, i32* %18, align 4
  %172 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %173 = load i32, i32* @SND_VOL_C_PCM, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @chn_setvolume_multi(%struct.pcm_channel* %172, i32 %173, i32 %174, i32 %175, i32 %176)
  br label %200

178:                                              ; preds = %153
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, -256
  %181 = call i32 @MIXER_READ(i32 0)
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %178
  %184 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %185 = load i32, i32* @SND_VOL_C_PCM, align 4
  %186 = load i32, i32* @SND_CHN_T_FL, align 4
  %187 = call i32 @CHN_GETVOLUME(%struct.pcm_channel* %184, i32 %185, i32 %186)
  %188 = load i64, i64* %9, align 8
  %189 = inttoptr i64 %188 to i32*
  store i32 %187, i32* %189, align 4
  %190 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %191 = load i32, i32* @SND_VOL_C_PCM, align 4
  %192 = load i32, i32* @SND_CHN_T_FR, align 4
  %193 = call i32 @CHN_GETVOLUME(%struct.pcm_channel* %190, i32 %191, i32 %192)
  %194 = shl i32 %193, 8
  %195 = load i64, i64* %9, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %183, %178
  br label %200

200:                                              ; preds = %199, %158
  store i32 0, i32* %15, align 4
  br label %248

201:                                              ; preds = %147, %143, %129
  %202 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %203 = icmp ne %struct.pcm_channel* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load %struct.pcm_channel*, %struct.pcm_channel** %12, align 8
  %206 = icmp ne %struct.pcm_channel* %205, null
  br i1 %206, label %207, label %247

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %13, align 4
  switch i32 %208, label %245 [
    i32 131, label %209
    i32 132, label %209
    i32 128, label %209
    i32 130, label %236
    i32 129, label %236
  ]

209:                                              ; preds = %207, %207, %207
  %210 = load i32, i32* %8, align 4
  %211 = and i32 %210, -256
  %212 = call i32 @MIXER_READ(i32 0)
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %209
  %215 = load i64, i64* %9, align 8
  %216 = inttoptr i64 %215 to i32*
  store i32 0, i32* %216, align 4
  %217 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %218 = icmp ne %struct.pcm_channel* %217, null
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load i32, i32* @SOUND_MASK_RECLEV, align 4
  %221 = load i64, i64* %9, align 8
  %222 = inttoptr i64 %221 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %214
  %226 = load %struct.pcm_channel*, %struct.pcm_channel** %12, align 8
  %227 = icmp ne %struct.pcm_channel* %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load i32, i32* @SOUND_MASK_PCM, align 4
  %230 = load i64, i64* %9, align 8
  %231 = inttoptr i64 %230 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %228, %225
  br label %235

235:                                              ; preds = %234, %209
  store i32 0, i32* %15, align 4
  br label %246

236:                                              ; preds = %207, %207
  %237 = load i32, i32* %8, align 4
  %238 = and i32 %237, -256
  %239 = call i32 @MIXER_READ(i32 0)
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load i64, i64* %9, align 8
  %243 = inttoptr i64 %242 to i32*
  store i32 0, i32* %243, align 4
  br label %244

244:                                              ; preds = %241, %236
  store i32 0, i32* %15, align 4
  br label %246

245:                                              ; preds = %207
  br label %246

246:                                              ; preds = %245, %244, %235
  br label %247

247:                                              ; preds = %246, %204
  br label %248

248:                                              ; preds = %247, %200
  %249 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %250 = icmp ne %struct.pcm_channel* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %253 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %254, %115, %99, %94, %30
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local %struct.snddev_info* @dsp_get_info(%struct.cdev*) #1

declare dso_local i32 @PCM_REGISTERED(%struct.snddev_info*) #1

declare dso_local i32 @dsp_get_flags(%struct.cdev*) #1

declare dso_local i32 @PCM_UNLOCKASSERT(%struct.snddev_info*) #1

declare dso_local %struct.pcm_channel* @PCM_RDCH(%struct.cdev*) #1

declare dso_local %struct.pcm_channel* @PCM_WRCH(%struct.cdev*) #1

declare dso_local %struct.pcm_channel* @PCM_VOLCH(%struct.cdev*) #1

declare dso_local i32 @PCMDEV(%struct.cdev*) #1

declare dso_local i32 @dsp_get_volume_channel(%struct.cdev*, %struct.pcm_channel**) #1

declare dso_local i32 @CHN_LOCK(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_UNLOCK(%struct.pcm_channel*) #1

declare dso_local i32 @MIXER_WRITE(i32) #1

declare dso_local i32 @chn_setvolume_multi(%struct.pcm_channel*, i32, i32, i32, i32) #1

declare dso_local i32 @MIXER_READ(i32) #1

declare dso_local i32 @CHN_GETVOLUME(%struct.pcm_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
