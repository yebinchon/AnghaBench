; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24mixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sc_info = type { i32, i64*, i64*, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32)* }

@envy24_mixmap = common dso_local global i32* null, align 8
@envy24_chanmap = common dso_local global i32* null, align 8
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENVY24_VOL_MIN = common dso_local global i64 0, align 8
@ENVY24_VOL_MUTE = common dso_local global i8* null, align 8
@ENVY24_CHAN_PLAY_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @envy24mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24mixer_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sc_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %15 = call %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer* %14)
  store %struct.sc_info* %15, %struct.sc_info** %10, align 8
  %16 = load i32*, i32** @envy24_mixmap, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %22 = icmp eq %struct.sc_info* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %156

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %33, align 8
  %35 = icmp eq i32 (i32, i32, i32, i32)* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %156

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %156

44:                                               ; preds = %40, %37
  %45 = load i32*, i32** @envy24_chanmap, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_mtxlock(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %82, %56
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 6
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %69, align 8
  %71 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCMDIR_PLAY, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 %70(i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %57

85:                                               ; preds = %57
  br label %147

86:                                               ; preds = %44
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 100, %87
  %89 = zext i32 %88 to i64
  %90 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %91 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %89, i64* %95, align 8
  %96 = load i64, i64* @ENVY24_VOL_MIN, align 8
  %97 = icmp sgt i64 %89, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %86
  %99 = load i8*, i8** @ENVY24_VOL_MUTE, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %102 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %100, i64* %106, align 8
  br label %107

107:                                              ; preds = %98, %86
  %108 = load i32, i32* %9, align 4
  %109 = sub i32 100, %108
  %110 = zext i32 %109 to i64
  %111 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %112 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 %110, i64* %116, align 8
  %117 = load i64, i64* @ENVY24_VOL_MIN, align 8
  %118 = icmp sgt i64 %110, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %107
  %120 = load i8*, i8** @ENVY24_VOL_MUTE, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %123 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %121, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %107
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @ENVY24_CHAN_PLAY_SPDIF, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %132, %128
  %143 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @envy24_setvolume(%struct.sc_info* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %132
  br label %147

147:                                              ; preds = %146, %85
  %148 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  %149 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @snd_mtxunlock(i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = shl i32 %152, 8
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %147, %43, %36, %23
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.sc_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @envy24_setvolume(%struct.sc_info*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
