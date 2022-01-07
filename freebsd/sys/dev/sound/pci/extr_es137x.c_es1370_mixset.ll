; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1370_mixset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es1370_mixset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.snd_mixer = type { i32 }
%struct.es_info = type { i32 }

@mixtable = common dso_local global %struct.TYPE_2__* null, align 8
@SOUND_MIXER_PCM = common dso_local global i32 0, align 4
@SOUND_MIXER_SYNTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @es1370_mixset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1370_mixset(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.es_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %165

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 15
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 2
  %53 = sdiv i32 %52, 14
  %54 = sub nsw i32 7, %53
  br label %55

55:                                               ; preds = %50, %49
  %56 = phi i32 [ 128, %49 ], [ %54, %50 ]
  store i32 %56, i32* %13, align 4
  br label %68

57:                                               ; preds = %37
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 7
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 7
  %64 = sdiv i32 %63, 3
  %65 = sub nsw i32 31, %64
  br label %66

66:                                               ; preds = %61, %60
  %67 = phi i32 [ 128, %60 ], [ %65, %61 ]
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %70 = call %struct.es_info* @mix_getdevinfo(%struct.snd_mixer* %69)
  store %struct.es_info* %70, %struct.es_info** %10, align 8
  %71 = load %struct.es_info*, %struct.es_info** %10, align 8
  %72 = call i32 @ES_LOCK(%struct.es_info* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SOUND_MIXER_PCM, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %68
  %77 = load %struct.es_info*, %struct.es_info** %10, align 8
  %78 = getelementptr inbounds %struct.es_info, %struct.es_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ES_SINGLE_PCM_MIX(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.es_info*, %struct.es_info** %10, align 8
  %84 = getelementptr inbounds %struct.es_info, %struct.es_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ES_DAC1_ENABLED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 1, i32* %15, align 4
  br label %90

89:                                               ; preds = %82, %76, %68
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %90
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 7
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %103, 7
  %105 = sdiv i32 %104, 3
  %106 = sub nsw i32 31, %105
  br label %107

107:                                              ; preds = %102, %101
  %108 = phi i32 [ 128, %101 ], [ %106, %102 ]
  store i32 %108, i32* %14, align 4
  %109 = load %struct.es_info*, %struct.es_info** %10, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @es1370_wrcodec(%struct.es_info* %109, i32 %115, i32 %116)
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %107
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %122 = load i64, i64* @SOUND_MIXER_SYNTH, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.es_info*, %struct.es_info** %10, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %130 = load i64, i64* @SOUND_MIXER_SYNTH, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @es1370_wrcodec(%struct.es_info* %128, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %127, %120, %107
  br label %137

137:                                              ; preds = %136, %90
  %138 = load %struct.es_info*, %struct.es_info** %10, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %140 = load i32, i32* %7, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @es1370_wrcodec(%struct.es_info* %138, i32 %144, i32 %145)
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %137
  %150 = load %struct.es_info*, %struct.es_info** %10, align 8
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mixtable, align 8
  %152 = load i64, i64* @SOUND_MIXER_SYNTH, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @es1370_wrcodec(%struct.es_info* %150, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %149, %137
  %159 = load %struct.es_info*, %struct.es_info** %10, align 8
  %160 = call i32 @ES_UNLOCK(%struct.es_info* %159)
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = shl i32 %162, 8
  %164 = or i32 %161, %163
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %158, %23
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.es_info* @mix_getdevinfo(%struct.snd_mixer*) #1

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
