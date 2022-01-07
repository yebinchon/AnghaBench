; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_dspmixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_dspmixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.emu_pcm_info = type { i32**, i32, i32*, i32, i32, i32, i32 }

@M_MASTER_REAR_L = common dso_local global i32 0, align 4
@M_MASTER_REAR_R = common dso_local global i32 0, align 4
@M_MASTER_CENTER = common dso_local global i32 0, align 4
@M_MASTER_SUBWOOFER = common dso_local global i32 0, align 4
@M_FX2_REAR_L = common dso_local global i32 0, align 4
@M_FX3_REAR_R = common dso_local global i32 0, align 4
@M_FX4_CENTER = common dso_local global i32 0, align 4
@M_FX5_SUBWOOFER = common dso_local global i32 0, align 4
@M_IN1_FRONT_L = common dso_local global i32 0, align 4
@M_IN1_FRONT_R = common dso_local global i32 0, align 4
@M_IN3_FRONT_L = common dso_local global i32 0, align 4
@M_IN3_FRONT_R = common dso_local global i32 0, align 4
@M_IN2_FRONT_L = common dso_local global i32 0, align 4
@M_IN2_FRONT_R = common dso_local global i32 0, align 4
@M_IN4_FRONT_L = common dso_local global i32 0, align 4
@M_IN4_FRONT_R = common dso_local global i32 0, align 4
@M_IN5_FRONT_L = common dso_local global i32 0, align 4
@M_IN5_FRONT_R = common dso_local global i32 0, align 4
@M_IN6_FRONT_L = common dso_local global i32 0, align 4
@M_IN6_FRONT_R = common dso_local global i32 0, align 4
@M_IN0_FRONT_L = common dso_local global i32 0, align 4
@M_IN0_FRONT_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mixer error: unknown device %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @emu_dspmixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_dspmixer_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.emu_pcm_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %11 = call %struct.emu_pcm_info* @mix_getdevinfo(%struct.snd_mixer* %10)
  store %struct.emu_pcm_info* %11, %struct.emu_pcm_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %365 [
    i32 128, label %13
    i32 129, label %147
    i32 134, label %281
    i32 133, label %294
    i32 131, label %326
    i32 132, label %339
    i32 130, label %352
  ]

13:                                               ; preds = %4
  %14 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %15 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %146 [
    i32 137, label %17
    i32 136, label %113
    i32 138, label %126
    i32 135, label %136
  ]

17:                                               ; preds = %13
  %18 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %19 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %24 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mix_set(i32* %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %32 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %112

35:                                               ; preds = %30
  %36 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %37 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %43 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %50 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = mul i32 %48, %55
  %57 = udiv i32 %56, 100
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %60 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %67 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = mul i32 %65, %72
  %74 = udiv i32 %73, 100
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %40, %35
  %76 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %77 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @M_MASTER_REAR_L, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @emumix_set_volume(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %83 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @M_MASTER_REAR_R, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @emumix_set_volume(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %89 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %75
  %93 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %94 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @M_MASTER_CENTER, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %97, %98
  %100 = udiv i32 %99, 2
  %101 = call i32 @emumix_set_volume(i32 %95, i32 %96, i32 %100)
  %102 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %103 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %106, %107
  %109 = udiv i32 %108, 2
  %110 = call i32 @emumix_set_volume(i32 %104, i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %92, %75
  br label %112

112:                                              ; preds = %111, %30
  br label %146

113:                                              ; preds = %13
  %114 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %115 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @M_MASTER_REAR_L, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @emumix_set_volume(i32 %116, i32 %117, i32 %118)
  %120 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %121 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @M_MASTER_REAR_R, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @emumix_set_volume(i32 %122, i32 %123, i32 %124)
  br label %146

126:                                              ; preds = %13
  %127 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %128 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @M_MASTER_CENTER, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %131, %132
  %134 = udiv i32 %133, 2
  %135 = call i32 @emumix_set_volume(i32 %129, i32 %130, i32 %134)
  br label %146

136:                                              ; preds = %13
  %137 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %138 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %141, %142
  %144 = udiv i32 %143, 2
  %145 = call i32 @emumix_set_volume(i32 %139, i32 %140, i32 %144)
  br label %146

146:                                              ; preds = %13, %136, %126, %113, %112
  br label %395

147:                                              ; preds = %4
  %148 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %149 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %280 [
    i32 137, label %151
    i32 136, label %247
    i32 138, label %260
    i32 135, label %270
  ]

151:                                              ; preds = %147
  %152 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %153 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %158 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @mix_set(i32* %159, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %151
  %165 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %166 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %246

169:                                              ; preds = %164
  %170 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %171 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %169
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %177 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %176, i32 0, i32 0
  %178 = load i32**, i32*** %177, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 %175, i32* %181, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %184 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %183, i32 0, i32 0
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = mul i32 %182, %189
  %191 = udiv i32 %190, 100
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %194 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %193, i32 0, i32 0
  %195 = load i32**, i32*** %194, align 8
  %196 = getelementptr inbounds i32*, i32** %195, i64 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %192, i32* %198, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %201 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %200, i32 0, i32 0
  %202 = load i32**, i32*** %201, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = mul i32 %199, %206
  %208 = udiv i32 %207, 100
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %174, %169
  %210 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %211 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @M_MASTER_REAR_L, align 4
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @emumix_set_volume(i32 %212, i32 %213, i32 %214)
  %216 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %217 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @M_MASTER_REAR_R, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @emumix_set_volume(i32 %218, i32 %219, i32 %220)
  %222 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %223 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %245, label %226

226:                                              ; preds = %209
  %227 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %228 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @M_MASTER_CENTER, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %8, align 4
  %233 = add i32 %231, %232
  %234 = udiv i32 %233, 2
  %235 = call i32 @emumix_set_volume(i32 %229, i32 %230, i32 %234)
  %236 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %237 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @M_MASTER_SUBWOOFER, align 4
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %8, align 4
  %242 = add i32 %240, %241
  %243 = udiv i32 %242, 2
  %244 = call i32 @emumix_set_volume(i32 %238, i32 %239, i32 %243)
  br label %245

245:                                              ; preds = %226, %209
  br label %246

246:                                              ; preds = %245, %164
  br label %280

247:                                              ; preds = %147
  %248 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %249 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @M_FX2_REAR_L, align 4
  %252 = load i32, i32* %7, align 4
  %253 = call i32 @emumix_set_volume(i32 %250, i32 %251, i32 %252)
  %254 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %255 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @M_FX3_REAR_R, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @emumix_set_volume(i32 %256, i32 %257, i32 %258)
  br label %280

260:                                              ; preds = %147
  %261 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %262 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @M_FX4_CENTER, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %8, align 4
  %267 = add i32 %265, %266
  %268 = udiv i32 %267, 2
  %269 = call i32 @emumix_set_volume(i32 %263, i32 %264, i32 %268)
  br label %280

270:                                              ; preds = %147
  %271 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %272 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @M_FX5_SUBWOOFER, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* %8, align 4
  %277 = add i32 %275, %276
  %278 = udiv i32 %277, 2
  %279 = call i32 @emumix_set_volume(i32 %273, i32 %274, i32 %278)
  br label %280

280:                                              ; preds = %147, %270, %260, %247, %246
  br label %395

281:                                              ; preds = %4
  %282 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %283 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @M_IN1_FRONT_L, align 4
  %286 = load i32, i32* %7, align 4
  %287 = call i32 @emumix_set_volume(i32 %284, i32 %285, i32 %286)
  %288 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %289 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @M_IN1_FRONT_R, align 4
  %292 = load i32, i32* %8, align 4
  %293 = call i32 @emumix_set_volume(i32 %290, i32 %291, i32 %292)
  br label %395

294:                                              ; preds = %4
  %295 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %296 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %294
  %300 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %301 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @M_IN3_FRONT_L, align 4
  %304 = load i32, i32* %7, align 4
  %305 = call i32 @emumix_set_volume(i32 %302, i32 %303, i32 %304)
  %306 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %307 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @M_IN3_FRONT_R, align 4
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @emumix_set_volume(i32 %308, i32 %309, i32 %310)
  br label %325

312:                                              ; preds = %294
  %313 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %314 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @M_IN2_FRONT_L, align 4
  %317 = load i32, i32* %7, align 4
  %318 = call i32 @emumix_set_volume(i32 %315, i32 %316, i32 %317)
  %319 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %320 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @M_IN2_FRONT_R, align 4
  %323 = load i32, i32* %8, align 4
  %324 = call i32 @emumix_set_volume(i32 %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %312, %299
  br label %395

326:                                              ; preds = %4
  %327 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %328 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @M_IN4_FRONT_L, align 4
  %331 = load i32, i32* %7, align 4
  %332 = call i32 @emumix_set_volume(i32 %329, i32 %330, i32 %331)
  %333 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %334 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @M_IN4_FRONT_R, align 4
  %337 = load i32, i32* %8, align 4
  %338 = call i32 @emumix_set_volume(i32 %335, i32 %336, i32 %337)
  br label %395

339:                                              ; preds = %4
  %340 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %341 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @M_IN5_FRONT_L, align 4
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @emumix_set_volume(i32 %342, i32 %343, i32 %344)
  %346 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %347 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @M_IN5_FRONT_R, align 4
  %350 = load i32, i32* %8, align 4
  %351 = call i32 @emumix_set_volume(i32 %348, i32 %349, i32 %350)
  br label %395

352:                                              ; preds = %4
  %353 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %354 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @M_IN6_FRONT_L, align 4
  %357 = load i32, i32* %7, align 4
  %358 = call i32 @emumix_set_volume(i32 %355, i32 %356, i32 %357)
  %359 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %360 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @M_IN6_FRONT_R, align 4
  %363 = load i32, i32* %8, align 4
  %364 = call i32 @emumix_set_volume(i32 %361, i32 %362, i32 %363)
  br label %395

365:                                              ; preds = %4
  %366 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %367 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %370, label %388

370:                                              ; preds = %365
  %371 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %372 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @M_IN0_FRONT_L, align 4
  %375 = call i32 @emumix_set_volume(i32 %373, i32 %374, i32 100)
  %376 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %377 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @M_IN0_FRONT_R, align 4
  %380 = call i32 @emumix_set_volume(i32 %378, i32 %379, i32 100)
  %381 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %382 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %381, i32 0, i32 2
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %6, align 4
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* %8, align 4
  %387 = call i32 @mix_set(i32* %383, i32 %384, i32 %385, i32 %386)
  br label %394

388:                                              ; preds = %365
  %389 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %9, align 8
  %390 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* %6, align 4
  %393 = call i32 @device_printf(i32 %391, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %392)
  br label %394

394:                                              ; preds = %388, %370
  br label %395

395:                                              ; preds = %394, %352, %339, %326, %325, %281, %280, %146
  ret i32 0
}

declare dso_local %struct.emu_pcm_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mix_set(i32*, i32, i32, i32) #1

declare dso_local i32 @emumix_set_volume(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
