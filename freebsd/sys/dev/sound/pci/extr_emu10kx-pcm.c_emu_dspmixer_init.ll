; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_dspmixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_dspmixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.snd_mixer = type { i32 }
%struct.emu_pcm_info = type { i64, i32, i32, i64, i32*, i32*, i32*, i32 }

@RT_FRONT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@dspmix_k1 = common dso_local global %struct.TYPE_4__* null, align 8
@dspmix_k2 = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @emu_dspmixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_dspmixer_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.emu_pcm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %8 = call %struct.emu_pcm_info* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.emu_pcm_info* %8, %struct.emu_pcm_info** %3, align 8
  %9 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %10 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RT_FRONT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %1
  %15 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %16 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %51

19:                                               ; preds = %14
  %20 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %21 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %26 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %29 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %32 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @mixer_create(i32 %27, i32* %30, i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %36 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %38 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %24
  %42 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %43 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @mix_getdevs(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %47 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @mix_getrecdevs(i32* %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %41, %24
  br label %51

51:                                               ; preds = %50, %19, %14
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %54 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %57 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %1
  %59 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %68 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RT_FRONT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %150

72:                                               ; preds = %58
  %73 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %3, align 8
  %74 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %113

77:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %109, %77
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %78
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dspmix_k1, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load i32, i32* %4, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dspmix_k1, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load i32, i32* %4, align 4
  %105 = shl i32 1, %104
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %103, %95
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %78

112:                                              ; preds = %78
  br label %149

113:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %145, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dspmix_k2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load i32, i32* %4, align 4
  %128 = shl i32 1, %127
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %118
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dspmix_k2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i32, i32* %4, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %139, %131
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %114

148:                                              ; preds = %114
  br label %149

149:                                              ; preds = %148, %112
  br label %150

150:                                              ; preds = %149, %58
  %151 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @mix_setdevs(%struct.snd_mixer* %151, i32 %152)
  %154 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @mix_setrecdevs(%struct.snd_mixer* %154, i32 %155)
  ret i32 0
}

declare dso_local %struct.emu_pcm_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32* @mixer_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @mix_getdevs(i32*) #1

declare dso_local i32 @mix_getrecdevs(i32*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
