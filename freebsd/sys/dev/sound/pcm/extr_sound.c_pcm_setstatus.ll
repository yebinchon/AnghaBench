; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_setstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_setstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32, i64, i64, i32*, i32 }

@SD_F_REGISTERED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SD_F_SIMPLEX = common dso_local global i32 0, align 4
@SD_F_AUTOVCHAN = common dso_local global i32 0, align 4
@snd_maxautovchans = common dso_local global i32 0, align 4
@SND_STATUSLEN = common dso_local global i32 0, align 4
@snd_unit_auto = common dso_local global i32 0, align 4
@snd_unit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm_setstatus(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snddev_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.snddev_info* @device_get_softc(i32 %7)
  store %struct.snddev_info* %8, %struct.snddev_info** %6, align 8
  %9 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %10 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SD_F_REGISTERED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %108

17:                                               ; preds = %2
  %18 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %19 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %18)
  %20 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %21 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %26 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %17
  %30 = load i32, i32* @SD_F_SIMPLEX, align 4
  %31 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %32 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %37 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %42 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @SD_F_AUTOVCHAN, align 4
  %47 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %48 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %53 = load i32, i32* @snd_maxautovchans, align 4
  %54 = call i32 @pcm_setmaxautovchans(%struct.snddev_info* %52, i32 %53)
  %55 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %56 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @SND_STATUSLEN, align 4
  %60 = call i32 @strlcpy(i32 %57, i8* %58, i32 %59)
  %61 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %62 = call i32 @PCM_LOCK(%struct.snddev_info* %61)
  %63 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %64 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %69 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @snd_clone_enable(i32* %70)
  br label %72

72:                                               ; preds = %67, %51
  %73 = load i32, i32* @SD_F_REGISTERED, align 4
  %74 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %75 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %79 = call i32 @PCM_RELEASE(%struct.snddev_info* %78)
  %80 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %81 = call i32 @PCM_UNLOCK(%struct.snddev_info* %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @pcm_sysinit(i32 %82)
  %84 = load i32, i32* @snd_unit_auto, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load i64, i64* @snd_unit, align 8
  %88 = icmp slt i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* @snd_unit_auto, align 4
  br label %91

91:                                               ; preds = %86, %72
  %92 = load i64, i64* @snd_unit, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @snd_unit_auto, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @device_get_unit(i32 %98)
  store i64 %99, i64* @snd_unit, align 8
  br label %107

100:                                              ; preds = %94
  %101 = load i32, i32* @snd_unit_auto, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* @snd_unit, align 8
  %105 = call i64 @pcm_best_unit(i64 %104)
  store i64 %105, i64* @snd_unit, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %97
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @pcm_setmaxautovchans(%struct.snddev_info*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @PCM_LOCK(%struct.snddev_info*) #1

declare dso_local i32 @snd_clone_enable(i32*) #1

declare dso_local i32 @PCM_RELEASE(%struct.snddev_info*) #1

declare dso_local i32 @PCM_UNLOCK(%struct.snddev_info*) #1

declare dso_local i32 @pcm_sysinit(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i64 @pcm_best_unit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
