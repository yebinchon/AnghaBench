; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97mix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97mix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.ac97_info = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@SOUND_MIXER_OGAIN = common dso_local global i64 0, align 8
@SOUND_MASK_OGAIN = common dso_local global i64 0, align 8
@SOUND_MIXER_PHONEOUT = common dso_local global i64 0, align 8
@SOUND_MASK_PHONEOUT = common dso_local global i64 0, align 8
@SOUND_MIXER_VOLUME = common dso_local global i64 0, align 8
@SOUND_MIXER_NONE = common dso_local global i64 0, align 8
@SOUND_MIXER_PCM = common dso_local global i64 0, align 8
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@AC97_MIX_PCM = common dso_local global i32 0, align 4
@AC97_MIXER_SIZE = common dso_local global i64 0, align 8
@AC97_MIX_MASTER = common dso_local global i32 0, align 4
@SOUND_MASK_CD = common dso_local global i64 0, align 8
@SOUND_MASK_PCM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @ac97mix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97mix_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca %struct.ac97_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.ac97_info* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.ac97_info* %8, %struct.ac97_info** %4, align 8
  %9 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %10 = icmp eq %struct.ac97_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %197

12:                                               ; preds = %1
  %13 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %14 = call i64 @ac97_initmixer(%struct.ac97_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %197

17:                                               ; preds = %12
  %18 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %19 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %121 [
    i32 1094996852, label %21
    i32 1129138497, label %104
    i32 1129138529, label %104
    i32 1129138552, label %104
    i32 1129138562, label %104
    i32 1129138563, label %104
  ]

21:                                               ; preds = %17
  %22 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %23 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %102 [
    i32 47779860, label %25
    i32 161222716, label %75
  ]

25:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  %26 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %27 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @SOUND_MIXER_OGAIN, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i64, i64* @SOUND_MASK_OGAIN, align 8
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %40 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @SOUND_MIXER_PHONEOUT, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i64, i64* @SOUND_MASK_PHONEOUT, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %53 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %62 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @mix_setparentchild(%struct.snd_mixer* %61, i64 %62, i64 %63)
  br label %74

65:                                               ; preds = %51
  %66 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %67 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @mix_setparentchild(%struct.snd_mixer* %66, i64 %67, i64 %68)
  %70 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %71 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %72 = load i64, i64* @SOUND_MIXER_NONE, align 8
  %73 = call i32 @mix_setrealdev(%struct.snd_mixer* %70, i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %65, %60
  br label %103

75:                                               ; preds = %21
  %76 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %77 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @SOUND_MIXER_OGAIN, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %83 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* @SOUND_MIXER_PHONEOUT, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %89 = load i64, i64* @SOUND_MIXER_PHONEOUT, align 8
  %90 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %91 = call i32 @mix_setrealdev(%struct.snd_mixer* %88, i64 %89, i64 %90)
  %92 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %93 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %94 = load i64, i64* @SOUND_MIXER_NONE, align 8
  %95 = call i32 @mix_setrealdev(%struct.snd_mixer* %92, i64 %93, i64 %94)
  %96 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %97 = load i64, i64* @SOUND_MIXER_VOLUME, align 8
  %98 = load i64, i64* @SOUND_MASK_OGAIN, align 8
  %99 = load i64, i64* @SOUND_MASK_PHONEOUT, align 8
  %100 = or i64 %98, %99
  %101 = call i32 @mix_setparentchild(%struct.snd_mixer* %96, i64 %97, i64 %100)
  br label %103

102:                                              ; preds = %21
  br label %103

103:                                              ; preds = %102, %75, %74
  br label %122

104:                                              ; preds = %17, %17, %17, %17, %17
  %105 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %106 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* @SOUND_MIXER_PCM, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = call i32 @bzero(%struct.TYPE_2__* %109, i32 16)
  %111 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %112 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %115 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @pcm_getflags(i32 %116)
  %118 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @pcm_setflags(i32 %113, i32 %119)
  br label %122

121:                                              ; preds = %17
  br label %122

122:                                              ; preds = %121, %104, %103
  %123 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %124 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pcm_getflags(i32 %125)
  %127 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %132 = load i32, i32* @AC97_MIX_PCM, align 4
  %133 = call i32 @ac97_wrcd(%struct.ac97_info* %131, i32 %132, i32 0)
  br label %134

134:                                              ; preds = %130, %122
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %135

135:                                              ; preds = %158, %134
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @AC97_MIXER_SIZE, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %141 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i64, i64* %5, align 8
  %150 = trunc i64 %149 to i32
  %151 = shl i32 1, %150
  br label %153

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ]
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %6, align 8
  %157 = or i64 %156, %155
  store i64 %157, i64* %6, align 8
  br label %158

158:                                              ; preds = %153
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %5, align 8
  br label %135

161:                                              ; preds = %135
  %162 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %163 = load i64, i64* %6, align 8
  %164 = call i32 @mix_setdevs(%struct.snd_mixer* %162, i64 %163)
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %165

165:                                              ; preds = %188, %161
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* @AC97_MIXER_SIZE, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %171 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i64, i64* %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = load i64, i64* %5, align 8
  %180 = trunc i64 %179 to i32
  %181 = shl i32 1, %180
  br label %183

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi i32 [ %181, %178 ], [ 0, %182 ]
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %6, align 8
  %187 = or i64 %186, %185
  store i64 %187, i64* %6, align 8
  br label %188

188:                                              ; preds = %183
  %189 = load i64, i64* %5, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %5, align 8
  br label %165

191:                                              ; preds = %165
  %192 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @mix_setrecdevs(%struct.snd_mixer* %192, i64 %193)
  %195 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %196 = call i32 @ac97_init_sysctl(%struct.ac97_info* %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %191, %16, %11
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.ac97_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i64 @ac97_initmixer(%struct.ac97_info*) #1

declare dso_local i32 @mix_setparentchild(%struct.snd_mixer*, i64, i64) #1

declare dso_local i32 @mix_setrealdev(%struct.snd_mixer*, i64, i64) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

declare dso_local i32 @ac97_wrcd(%struct.ac97_info*, i32, i32) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i64) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i64) #1

declare dso_local i32 @ac97_init_sysctl(%struct.ac97_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
