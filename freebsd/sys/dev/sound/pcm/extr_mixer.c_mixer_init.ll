; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32, %struct.cdev*, i64 }
%struct.cdev = type { %struct.snd_mixer* }
%struct.snd_mixer = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@SD_F_EQ = common dso_local global i32 0, align 4
@SD_F_EQ_MASK = common dso_local global i32 0, align 4
@SD_F_EQ_DEFAULT = common dso_local global i32 0, align 4
@MIXER_TYPE_PRIMARY = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@snd_mixerdefaults = common dso_local global i32* null, align 8
@snd_mixernames = common dso_local global i8** null, align 8
@SND_DEV_CTL = common dso_local global i32 0, align 4
@mixer_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mixer%d\00", align 1
@mixer_count = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Mixer \22%s\22 -> \22%s\22:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Mixer \22%s\22:\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" parent=\22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" child=0x%08x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Soft PCM mixer ENABLED\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"EQ Treble/Bass ENABLED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mixer_init(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snddev_info*, align 8
  %9 = alloca %struct.snd_mixer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.snddev_info* @device_get_softc(i32 %16)
  store %struct.snddev_info* %17, %struct.snddev_info** %8, align 8
  %18 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %19 = icmp eq %struct.snddev_info* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %264

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @device_get_name(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @device_get_unit(i32 %24)
  %26 = call i64 @resource_int_value(i32 %23, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %15)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i32, i32* @SD_F_EQ, align 4
  %33 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %34 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @SD_F_EQ_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %45 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %54

48:                                               ; preds = %31
  %49 = load i32, i32* @SD_F_EQ_DEFAULT, align 4
  %50 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %51 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %56 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %28, %21
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @MIXER_TYPE_PRIMARY, align 4
  %62 = call %struct.snd_mixer* @mixer_obj_create(i32 %58, i32 %59, i8* %60, i32 %61, i32* null)
  store %struct.snd_mixer* %62, %struct.snd_mixer** %9, align 8
  %63 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %64 = icmp eq %struct.snd_mixer* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %264

66:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %105, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %108

71:                                               ; preds = %67
  %72 = load i32*, i32** @snd_mixerdefaults, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @device_get_name(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @device_get_unit(i32 %79)
  %81 = load i8**, i8*** @snd_mixernames, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @resource_int_value(i32 %78, i32 %80, i8* %85, i32* %15)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %71
  %89 = load i32, i32* %15, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %15, align 4
  %93 = icmp sle i32 %92, 100
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %91, %88
  br label %97

97:                                               ; preds = %96, %71
  %98 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %100, %102
  %104 = call i32 @mixer_set(%struct.snd_mixer* %98, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %67

108:                                              ; preds = %67
  %109 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %110 = call i32 @mixer_setrecsrc(%struct.snd_mixer* %109, i32 0)
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @device_get_unit(i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @SND_DEV_CTL, align 4
  %115 = call i32 @snd_mkunit(i32 %113, i32 %114, i32 0)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @PCMMINOR(i32 %116)
  %118 = load i32, i32* @UID_ROOT, align 4
  %119 = load i32, i32* @GID_WHEEL, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call %struct.cdev* @make_dev(i32* @mixer_cdevsw, i32 %117, i32 %118, i32 %119, i32 438, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  store %struct.cdev* %121, %struct.cdev** %11, align 8
  %122 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %123 = load %struct.cdev*, %struct.cdev** %11, align 8
  %124 = getelementptr inbounds %struct.cdev, %struct.cdev* %123, i32 0, i32 0
  store %struct.snd_mixer* %122, %struct.snd_mixer** %124, align 8
  %125 = load %struct.cdev*, %struct.cdev** %11, align 8
  %126 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %127 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %126, i32 0, i32 1
  store %struct.cdev* %125, %struct.cdev** %127, align 8
  %128 = load i32, i32* @mixer_count, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @mixer_count, align 4
  %130 = load i64, i64* @bootverbose, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %263

132:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %239, %132
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %242

137:                                              ; preds = %133
  %138 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %139 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = shl i32 1, %141
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  br label %239

146:                                              ; preds = %137
  %147 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %148 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %188

156:                                              ; preds = %146
  %157 = load i32, i32* %5, align 4
  %158 = load i8**, i8*** @snd_mixernames, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %164 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %156
  %173 = load i8**, i8*** @snd_mixernames, align 8
  %174 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %175 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %173, i64 %181
  %183 = load i8*, i8** %182, align 8
  br label %185

184:                                              ; preds = %156
  br label %185

185:                                              ; preds = %184, %172
  %186 = phi i8* [ %183, %172 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %184 ]
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %162, i8* %186)
  br label %196

188:                                              ; preds = %146
  %189 = load i32, i32* %5, align 4
  %190 = load i8**, i8*** @snd_mixernames, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i32, i8*, ...) @device_printf(i32 %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %188, %185
  %197 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %198 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %196
  %207 = load i8**, i8*** @snd_mixernames, align 8
  %208 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %209 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %207, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %217)
  br label %219

219:                                              ; preds = %206, %196
  %220 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %221 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %219
  %229 = load %struct.snd_mixer*, %struct.snd_mixer** %9, align 8
  %230 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %228, %219
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %145
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %133

242:                                              ; preds = %133
  %243 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %244 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = load i32, i32* %5, align 4
  %251 = call i32 (i32, i8*, ...) @device_printf(i32 %250, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %242
  %253 = load %struct.snddev_info*, %struct.snddev_info** %8, align 8
  %254 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @SD_F_EQ, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = load i32, i32* %5, align 4
  %261 = call i32 (i32, i8*, ...) @device_printf(i32 %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %252
  br label %263

263:                                              ; preds = %262, %108
  store i32 0, i32* %4, align 4
  br label %264

264:                                              ; preds = %263, %65, %20
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.snd_mixer* @mixer_obj_create(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @mixer_set(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @mixer_setrecsrc(%struct.snd_mixer*, i32) #1

declare dso_local i32 @snd_mkunit(i32, i32, i32) #1

declare dso_local %struct.cdev* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PCMMINOR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
