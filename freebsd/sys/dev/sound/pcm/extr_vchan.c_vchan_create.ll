; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_vchan.c_vchan_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_vchan.c_vchan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32, i64, i64, i64, i32, i32, i32, %struct.snddev_info* }
%struct.snddev_info = type { i64, i64, i64, i64 }
%struct.pcmchan_caps = type { i32, i64, i32 }

@CHN_F_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMDIR_REC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PCMDIR_PLAY_VIRTUAL = common dso_local global i32 0, align 4
@PCMDIR_REC_VIRTUAL = common dso_local global i32 0, align 4
@vchan_class = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@children = common dso_local global i32 0, align 4
@CHN_F_HAS_VCHAN = common dso_local global i32 0, align 4
@AFMT_VCHAN = common dso_local global i64 0, align 8
@VCHAN_DEFAULT_FORMAT = common dso_local global i64 0, align 8
@VCHAN_DEFAULT_RATE = common dso_local global i64 0, align 8
@feeder_rate_min = common dso_local global i64 0, align 8
@feeder_rate_max = common dso_local global i64 0, align 8
@feeder_rate_round = common dso_local global i64 0, align 8
@AFMT_PASSTHROUGH = common dso_local global i32 0, align 4
@CHN_F_VCHAN_DYNAMIC = common dso_local global i32 0, align 4
@CHN_F_VCHAN_PASSTHROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchan_create(%struct.pcm_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snddev_info*, align 8
  %7 = alloca %struct.pcm_channel*, align 8
  %8 = alloca %struct.pcmchan_caps*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %17 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %16, i32 0, i32 7
  %18 = load %struct.snddev_info*, %struct.snddev_info** %17, align 8
  store %struct.snddev_info* %18, %struct.snddev_info** %6, align 8
  %19 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %20 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %19)
  %21 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %22 = call i32 @CHN_LOCKASSERT(%struct.pcm_channel* %21)
  %23 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %24 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CHN_F_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EBUSY, align 4
  store i32 %30, i32* %3, align 4
  br label %361

31:                                               ; preds = %2
  %32 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %33 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCMDIR_PLAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %39 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCMDIR_REC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %361

45:                                               ; preds = %37, %31
  %46 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %47 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %46, i32 0, i32 7
  %48 = load %struct.snddev_info*, %struct.snddev_info** %47, align 8
  store %struct.snddev_info* %48, %struct.snddev_info** %6, align 8
  %49 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %50 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %49)
  %51 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %52 = call i32 @PCM_LOCK(%struct.snddev_info* %51)
  %53 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %54 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCMDIR_PLAY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = load i32, i32* @PCMDIR_PLAY_VIRTUAL, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %61 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  %63 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %64 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  br label %74

66:                                               ; preds = %45
  %67 = load i32, i32* @PCMDIR_REC_VIRTUAL, align 4
  store i32 %67, i32* %12, align 4
  %68 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %69 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  %71 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %72 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %66, %58
  %75 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %76 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %80 = call %struct.pcm_channel* @pcm_chn_create(%struct.snddev_info* %75, %struct.pcm_channel* %76, i32* @vchan_class, i32 %77, i32 %78, %struct.pcm_channel* %79)
  store %struct.pcm_channel* %80, %struct.pcm_channel** %7, align 8
  %81 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %82 = icmp eq %struct.pcm_channel* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %85 = call i32 @PCM_UNLOCK(%struct.snddev_info* %84)
  %86 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %87 = call i32 @CHN_LOCK(%struct.pcm_channel* %86)
  %88 = load i32, i32* @ENODEV, align 4
  store i32 %88, i32* %3, align 4
  br label %361

89:                                               ; preds = %74
  %90 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %91 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %92 = call i32 @pcm_chn_add(%struct.snddev_info* %90, %struct.pcm_channel* %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %94 = call i32 @PCM_UNLOCK(%struct.snddev_info* %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %99 = call i32 @pcm_chn_destroy(%struct.pcm_channel* %98)
  %100 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %101 = call i32 @CHN_LOCK(%struct.pcm_channel* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %361

103:                                              ; preds = %89
  %104 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %105 = call i32 @CHN_LOCK(%struct.pcm_channel* %104)
  %106 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %107 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %108 = load i32, i32* @children, align 4
  %109 = call i32 @CHN_INSERT_SORT_DESCEND(%struct.pcm_channel* %106, %struct.pcm_channel* %107, i32 %108)
  %110 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %111 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CHN_F_HAS_VCHAN, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %361

117:                                              ; preds = %103
  %118 = load i32, i32* @CHN_F_HAS_VCHAN, align 4
  %119 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %120 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %124 = call %struct.pcmchan_caps* @chn_getcaps(%struct.pcm_channel* %123)
  store %struct.pcmchan_caps* %124, %struct.pcmchan_caps** %8, align 8
  %125 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %126 = icmp eq %struct.pcmchan_caps* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %127, %117
  store i32 0, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %175

132:                                              ; preds = %129
  %133 = load i64, i64* %9, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %132
  %136 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %137 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %136)
  %138 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %139 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @device_get_name(i32 %140)
  %142 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %143 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @device_get_unit(i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @VCHAN_FMT_HINT(i32 %146)
  %148 = call i32 @resource_string_value(i32 %141, i32 %145, i32 %147, i8** %15)
  store i32 %148, i32* %13, align 4
  %149 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %150 = call i32 @CHN_LOCK(%struct.pcm_channel* %149)
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %135
  store i8* null, i8** %15, align 8
  br label %154

154:                                              ; preds = %153, %135
  %155 = load i8*, i8** %15, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load i8*, i8** %15, align 8
  %159 = call i64 @snd_str2afmt(i8* %158)
  store i64 %159, i64* %9, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* @AFMT_VCHAN, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  store i64 0, i64* %9, align 8
  br label %168

168:                                              ; preds = %167, %162, %157
  br label %169

169:                                              ; preds = %168, %154
  %170 = load i64, i64* %9, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i64, i64* @VCHAN_DEFAULT_FORMAT, align 8
  store i64 %173, i64* %9, align 8
  br label %174

174:                                              ; preds = %172, %169
  store i32 1, i32* %14, align 4
  br label %175

175:                                              ; preds = %174, %132, %129
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %230

178:                                              ; preds = %175
  %179 = load i64, i64* %10, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %230

181:                                              ; preds = %178
  %182 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %183 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %182)
  %184 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %185 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @device_get_name(i32 %186)
  %188 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %189 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @device_get_unit(i32 %190)
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @VCHAN_SPD_HINT(i32 %192)
  %194 = call i32 @resource_int_value(i32 %187, i32 %191, i32 %193, i64* %10)
  store i32 %194, i32* %13, align 4
  %195 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %196 = call i32 @CHN_LOCK(%struct.pcm_channel* %195)
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %181
  %200 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %201 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %204 [
    i32 45000, label %203
    i32 49000, label %203
  ]

203:                                              ; preds = %199, %199
  store i64 44100, i64* %10, align 8
  br label %218

204:                                              ; preds = %199
  %205 = load i64, i64* @VCHAN_DEFAULT_RATE, align 8
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %208 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = icmp sgt i64 %206, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %214 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %10, align 8
  br label %217

217:                                              ; preds = %212, %204
  br label %218

218:                                              ; preds = %217, %203
  %219 = load i64, i64* %10, align 8
  %220 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %221 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %219, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %226 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %10, align 8
  br label %228

228:                                              ; preds = %224, %218
  br label %229

229:                                              ; preds = %228, %181
  store i32 1, i32* %14, align 4
  br label %230

230:                                              ; preds = %229, %178, %175
  %231 = load i32, i32* %11, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %271

233:                                              ; preds = %230
  %234 = load i64, i64* %10, align 8
  %235 = load i64, i64* @feeder_rate_min, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i64, i64* @feeder_rate_min, align 8
  store i64 %238, i64* %10, align 8
  br label %239

239:                                              ; preds = %237, %233
  %240 = load i64, i64* %10, align 8
  %241 = load i64, i64* @feeder_rate_max, align 8
  %242 = icmp sgt i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i64, i64* @feeder_rate_max, align 8
  store i64 %244, i64* %10, align 8
  br label %245

245:                                              ; preds = %243, %239
  %246 = load i64, i64* @feeder_rate_round, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %266

248:                                              ; preds = %245
  %249 = load i64, i64* %10, align 8
  %250 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %251 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %254 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = call i32 @RANGE(i64 %249, i64 %252, i64 %256)
  %258 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %259 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %262 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* %10, align 8
  %265 = call i64 @CHANNEL_SETSPEED(i32 %260, i32 %263, i64 %264)
  store i64 %265, i64* %10, align 8
  br label %266

266:                                              ; preds = %248, %245
  %267 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %268 = load i64, i64* %9, align 8
  %269 = load i64, i64* %10, align 8
  %270 = call i32 @chn_reset(%struct.pcm_channel* %267, i64 %268, i64 %269)
  store i32 %270, i32* %11, align 4
  br label %271

271:                                              ; preds = %266, %230
  %272 = load i32, i32* %11, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %304

274:                                              ; preds = %271
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %304

277:                                              ; preds = %274
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* @PCMDIR_PLAY_VIRTUAL, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %292

281:                                              ; preds = %277
  %282 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %283 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %286 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %288 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %291 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %290, i32 0, i32 1
  store i64 %289, i64* %291, align 8
  br label %303

292:                                              ; preds = %277
  %293 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %294 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %297 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %296, i32 0, i32 2
  store i64 %295, i64* %297, align 8
  %298 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %299 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %302 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %301, i32 0, i32 3
  store i64 %300, i64* %302, align 8
  br label %303

303:                                              ; preds = %292, %281
  br label %304

304:                                              ; preds = %303, %274, %271
  %305 = load i32, i32* %11, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %326

307:                                              ; preds = %304
  %308 = load i32, i32* @AFMT_PASSTHROUGH, align 4
  %309 = load %struct.pcmchan_caps*, %struct.pcmchan_caps** %8, align 8
  %310 = getelementptr inbounds %struct.pcmchan_caps, %struct.pcmchan_caps* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @snd_fmtvalid(i32 %308, i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %307
  %315 = load i32, i32* @CHN_F_VCHAN_DYNAMIC, align 4
  %316 = xor i32 %315, -1
  %317 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %318 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = and i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load i32, i32* @CHN_F_VCHAN_PASSTHROUGH, align 4
  %322 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %323 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 8
  br label %326

326:                                              ; preds = %314, %307, %304
  %327 = load i32, i32* %11, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %359

329:                                              ; preds = %326
  %330 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %331 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %332 = load i32, i32* @children, align 4
  %333 = call i32 @CHN_REMOVE(%struct.pcm_channel* %330, %struct.pcm_channel* %331, i32 %332)
  %334 = load i32, i32* @CHN_F_HAS_VCHAN, align 4
  %335 = xor i32 %334, -1
  %336 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %337 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %341 = call i32 @CHN_UNLOCK(%struct.pcm_channel* %340)
  %342 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %343 = call i32 @PCM_LOCK(%struct.snddev_info* %342)
  %344 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %345 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %346 = call i64 @pcm_chn_remove(%struct.snddev_info* %344, %struct.pcm_channel* %345)
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %329
  %349 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %350 = call i32 @PCM_UNLOCK(%struct.snddev_info* %349)
  %351 = load %struct.pcm_channel*, %struct.pcm_channel** %7, align 8
  %352 = call i32 @pcm_chn_destroy(%struct.pcm_channel* %351)
  br label %356

353:                                              ; preds = %329
  %354 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %355 = call i32 @PCM_UNLOCK(%struct.snddev_info* %354)
  br label %356

356:                                              ; preds = %353, %348
  %357 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %358 = call i32 @CHN_LOCK(%struct.pcm_channel* %357)
  br label %359

359:                                              ; preds = %356, %326
  %360 = load i32, i32* %11, align 4
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %359, %116, %97, %83, %43, %29
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @CHN_LOCKASSERT(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_UNLOCK(%struct.pcm_channel*) #1

declare dso_local i32 @PCM_LOCK(%struct.snddev_info*) #1

declare dso_local %struct.pcm_channel* @pcm_chn_create(%struct.snddev_info*, %struct.pcm_channel*, i32*, i32, i32, %struct.pcm_channel*) #1

declare dso_local i32 @PCM_UNLOCK(%struct.snddev_info*) #1

declare dso_local i32 @CHN_LOCK(%struct.pcm_channel*) #1

declare dso_local i32 @pcm_chn_add(%struct.snddev_info*, %struct.pcm_channel*) #1

declare dso_local i32 @pcm_chn_destroy(%struct.pcm_channel*) #1

declare dso_local i32 @CHN_INSERT_SORT_DESCEND(%struct.pcm_channel*, %struct.pcm_channel*, i32) #1

declare dso_local %struct.pcmchan_caps* @chn_getcaps(%struct.pcm_channel*) #1

declare dso_local i32 @resource_string_value(i32, i32, i32, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @VCHAN_FMT_HINT(i32) #1

declare dso_local i64 @snd_str2afmt(i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i32, i64*) #1

declare dso_local i32 @VCHAN_SPD_HINT(i32) #1

declare dso_local i32 @RANGE(i64, i64, i64) #1

declare dso_local i64 @CHANNEL_SETSPEED(i32, i32, i64) #1

declare dso_local i32 @chn_reset(%struct.pcm_channel*, i64, i64) #1

declare dso_local i64 @snd_fmtvalid(i32, i32) #1

declare dso_local i32 @CHN_REMOVE(%struct.pcm_channel*, %struct.pcm_channel*, i32) #1

declare dso_local i64 @pcm_chn_remove(%struct.snddev_info*, %struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
