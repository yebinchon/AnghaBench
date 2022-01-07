; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_dspmixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_dspmixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.snd_mixer = type { i32 }
%struct.emu_pcm_info = type { i32, i32, i64, i32* }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@dspmix_k1 = common dso_local global %struct.TYPE_4__* null, align 8
@dspmix_k2 = common dso_local global %struct.TYPE_3__* null, align 8
@M_IN0_REC_L = common dso_local global i32 0, align 4
@M_IN0_REC_R = common dso_local global i32 0, align 4
@M_IN1_REC_L = common dso_local global i32 0, align 4
@M_IN1_REC_R = common dso_local global i32 0, align 4
@M_IN2_REC_L = common dso_local global i32 0, align 4
@M_IN2_REC_R = common dso_local global i32 0, align 4
@M_IN3_REC_L = common dso_local global i32 0, align 4
@M_IN3_REC_R = common dso_local global i32 0, align 4
@M_IN4_REC_L = common dso_local global i32 0, align 4
@M_IN4_REC_R = common dso_local global i32 0, align 4
@M_IN5_REC_L = common dso_local global i32 0, align 4
@M_IN5_REC_R = common dso_local global i32 0, align 4
@M_IN6_REC_L = common dso_local global i32 0, align 4
@M_IN6_REC_R = common dso_local global i32 0, align 4
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@M_FX0_REC_L = common dso_local global i32 0, align 4
@M_FX0_FRONT_L = common dso_local global i32 0, align 4
@M_FX1_REC_R = common dso_local global i32 0, align 4
@M_FX1_FRONT_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @emu_dspmixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_dspmixer_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.emu_pcm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %10 = call %struct.emu_pcm_info* @mix_getdevinfo(%struct.snd_mixer* %9)
  store %struct.emu_pcm_info* %10, %struct.emu_pcm_info** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %18, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %16
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %11

21:                                               ; preds = %11
  %22 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %23 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %29 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %35 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %39 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %37, %40
  %42 = call i64 @mix_setrecsrc(i32* %36, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %47 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %45, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %52, align 16
  br label %53

53:                                               ; preds = %44, %33
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %57 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %95, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dspmix_k1, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %74, %76
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 1, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dspmix_k1, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %91
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %81, %73
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %61

98:                                               ; preds = %61
  br label %138

99:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %134, %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dspmix_k2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %104
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 1, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i32, i32* %6, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dspmix_k2, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %130
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %120, %112
  br label %133

133:                                              ; preds = %132, %104
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %100

137:                                              ; preds = %100
  br label %138

138:                                              ; preds = %137, %98
  %139 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %140 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @M_IN0_REC_L, align 4
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = icmp eq i32 %144, 1
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 100, i32 0
  %148 = call i32 @emumix_set_volume(i32 %141, i32 %142, i32 %147)
  %149 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %150 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @M_IN0_REC_R, align 4
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = icmp eq i32 %154, 1
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 100, i32 0
  %158 = call i32 @emumix_set_volume(i32 %151, i32 %152, i32 %157)
  %159 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %160 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @M_IN1_REC_L, align 4
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 1
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 100, i32 0
  %168 = call i32 @emumix_set_volume(i32 %161, i32 %162, i32 %167)
  %169 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %170 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @M_IN1_REC_R, align 4
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 1
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 100, i32 0
  %178 = call i32 @emumix_set_volume(i32 %171, i32 %172, i32 %177)
  %179 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %180 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %204, label %183

183:                                              ; preds = %138
  %184 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %185 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @M_IN2_REC_L, align 4
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 1
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 100, i32 0
  %193 = call i32 @emumix_set_volume(i32 %186, i32 %187, i32 %192)
  %194 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %195 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @M_IN2_REC_R, align 4
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 1
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 100, i32 0
  %203 = call i32 @emumix_set_volume(i32 %196, i32 %197, i32 %202)
  br label %204

204:                                              ; preds = %183, %138
  %205 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %206 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %230

209:                                              ; preds = %204
  %210 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %211 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @M_IN3_REC_L, align 4
  %214 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 1
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 100, i32 0
  %219 = call i32 @emumix_set_volume(i32 %212, i32 %213, i32 %218)
  %220 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %221 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @M_IN3_REC_R, align 4
  %224 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 1
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 100, i32 0
  %229 = call i32 @emumix_set_volume(i32 %222, i32 %223, i32 %228)
  br label %230

230:                                              ; preds = %209, %204
  %231 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %232 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @M_IN4_REC_L, align 4
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  %236 = load i32, i32* %235, align 16
  %237 = icmp eq i32 %236, 1
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i32 100, i32 0
  %240 = call i32 @emumix_set_volume(i32 %233, i32 %234, i32 %239)
  %241 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %242 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @M_IN4_REC_R, align 4
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  %246 = load i32, i32* %245, align 16
  %247 = icmp eq i32 %246, 1
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i32 100, i32 0
  %250 = call i32 @emumix_set_volume(i32 %243, i32 %244, i32 %249)
  %251 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %252 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @M_IN5_REC_L, align 4
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 1
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 100, i32 0
  %260 = call i32 @emumix_set_volume(i32 %253, i32 %254, i32 %259)
  %261 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %262 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @M_IN5_REC_R, align 4
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 1
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 100, i32 0
  %270 = call i32 @emumix_set_volume(i32 %263, i32 %264, i32 %269)
  %271 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %272 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @M_IN6_REC_L, align 4
  %275 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 1
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 100, i32 0
  %280 = call i32 @emumix_set_volume(i32 %273, i32 %274, i32 %279)
  %281 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %282 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @M_IN6_REC_R, align 4
  %285 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 1
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 100, i32 0
  %290 = call i32 @emumix_set_volume(i32 %283, i32 %284, i32 %289)
  %291 = load i32, i32* %4, align 4
  %292 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %293 = shl i32 1, %292
  %294 = and i32 %291, %293
  %295 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %296 = shl i32 1, %295
  %297 = icmp eq i32 %294, %296
  br i1 %297, label %298, label %319

298:                                              ; preds = %230
  %299 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %300 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @M_FX0_REC_L, align 4
  %303 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %304 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @M_FX0_FRONT_L, align 4
  %307 = call i32 @emumix_get_volume(i32 %305, i32 %306)
  %308 = call i32 @emumix_set_volume(i32 %301, i32 %302, i32 %307)
  %309 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %310 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @M_FX1_REC_R, align 4
  %313 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %314 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @M_FX1_FRONT_R, align 4
  %317 = call i32 @emumix_get_volume(i32 %315, i32 %316)
  %318 = call i32 @emumix_set_volume(i32 %311, i32 %312, i32 %317)
  br label %330

319:                                              ; preds = %230
  %320 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %321 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @M_FX0_REC_L, align 4
  %324 = call i32 @emumix_set_volume(i32 %322, i32 %323, i32 0)
  %325 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %5, align 8
  %326 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @M_FX1_REC_R, align 4
  %329 = call i32 @emumix_set_volume(i32 %327, i32 %328, i32 0)
  br label %330

330:                                              ; preds = %319, %298
  %331 = load i32, i32* %7, align 4
  ret i32 %331
}

declare dso_local %struct.emu_pcm_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i64 @mix_setrecsrc(i32*, i32) #1

declare dso_local i32 @emumix_set_volume(i32, i32, i32) #1

declare dso_local i32 @emumix_get_volume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
