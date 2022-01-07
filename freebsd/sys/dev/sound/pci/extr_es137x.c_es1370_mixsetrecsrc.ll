; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1370_mixsetrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1370_mixsetrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_mixer = type { i32 }
%struct.es_info = type { i32 }

@SOUND_MIXER_MIC = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@mixtable = common dso_local global %struct.TYPE_2__* null, align 8
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@SOUND_MIXER_SYNTH = common dso_local global i64 0, align 8
@CODEC_LIMIX1 = common dso_local global i32 0, align 4
@CODEC_RIMIX1 = common dso_local global i32 0, align 4
@CODEC_LIMIX2 = common dso_local global i32 0, align 4
@CODEC_RIMIX2 = common dso_local global i32 0, align 4
@CODEC_OMIX1 = common dso_local global i32 0, align 4
@CODEC_OMIX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @es1370_mixsetrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1370_mixsetrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.es_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %9 = call %struct.es_info* @mix_getdevinfo(%struct.snd_mixer* %8)
  store %struct.es_info* %9, %struct.es_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @SOUND_MIXER_MIC, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %17 = call i32 @mix_getrecdevs(%struct.snd_mixer* %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %40, %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.es_info*, %struct.es_info** %5, align 8
  %45 = call i32 @ES_LOCK(%struct.es_info* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load %struct.es_info*, %struct.es_info** %5, align 8
  %53 = getelementptr inbounds %struct.es_info, %struct.es_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ES_SINGLE_PCM_MIX(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.es_info*, %struct.es_info** %5, align 8
  %59 = getelementptr inbounds %struct.es_info, %struct.es_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ES_DAC1_ENABLED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %65 = load i64, i64* @SOUND_MIXER_SYNTH, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63, %57, %51, %43
  %72 = load %struct.es_info*, %struct.es_info** %5, align 8
  %73 = load i32, i32* @CODEC_LIMIX1, align 4
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 85
  %76 = call i32 @es1370_wrcodec(%struct.es_info* %72, i32 %73, i32 %75)
  %77 = load %struct.es_info*, %struct.es_info** %5, align 8
  %78 = load i32, i32* @CODEC_RIMIX1, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 170
  %81 = call i32 @es1370_wrcodec(%struct.es_info* %77, i32 %78, i32 %80)
  %82 = load %struct.es_info*, %struct.es_info** %5, align 8
  %83 = load i32, i32* @CODEC_LIMIX2, align 4
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 8
  %86 = and i32 %85, 23
  %87 = call i32 @es1370_wrcodec(%struct.es_info* %82, i32 %83, i32 %86)
  %88 = load %struct.es_info*, %struct.es_info** %5, align 8
  %89 = load i32, i32* @CODEC_RIMIX2, align 4
  %90 = load i32, i32* %7, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 15
  %93 = call i32 @es1370_wrcodec(%struct.es_info* %88, i32 %89, i32 %92)
  %94 = load %struct.es_info*, %struct.es_info** %5, align 8
  %95 = load i32, i32* @CODEC_OMIX1, align 4
  %96 = call i32 @es1370_wrcodec(%struct.es_info* %94, i32 %95, i32 127)
  %97 = load %struct.es_info*, %struct.es_info** %5, align 8
  %98 = load i32, i32* @CODEC_OMIX2, align 4
  %99 = call i32 @es1370_wrcodec(%struct.es_info* %97, i32 %98, i32 63)
  %100 = load %struct.es_info*, %struct.es_info** %5, align 8
  %101 = call i32 @ES_UNLOCK(%struct.es_info* %100)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.es_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mix_getrecdevs(%struct.snd_mixer*) #1

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i64 @ES_SINGLE_PCM_MIX(i32) #1

declare dso_local i64 @ES_DAC1_ENABLED(i32) #1

declare dso_local i32 @es1370_wrcodec(%struct.es_info*, i32, i32) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
