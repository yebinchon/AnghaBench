; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_oss_mixerinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_oss_mixerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_mixer*, i32* }
%struct.snd_mixer = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.snddev_info = type { %struct.cdev* }

@mixer_cdevsw = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pcm_devclass = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"mixer%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mixer_oss_mixerinfo(%struct.cdev* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.snddev_info*, align 8
  %7 = alloca %struct.snd_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.cdev*, %struct.cdev** %4, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @mixer_cdevsw
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %139

21:                                               ; preds = %14, %2
  store %struct.snddev_info* null, %struct.snddev_info** %6, align 8
  store %struct.snd_mixer* null, %struct.snd_mixer** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %134, %21
  %23 = load i32*, i32** @pcm_devclass, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** @pcm_devclass, align 8
  %28 = call i32 @devclass_get_maxunit(i32* %27)
  %29 = icmp slt i32 %26, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %137

32:                                               ; preds = %30
  %33 = load i32*, i32** @pcm_devclass, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.snddev_info* @devclass_get_softc(i32* %33, i32 %34)
  store %struct.snddev_info* %35, %struct.snddev_info** %6, align 8
  %36 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %37 = call i32 @PCM_REGISTERED(%struct.snddev_info* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %134

40:                                               ; preds = %32
  %41 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %42 = call i32 @PCM_UNLOCKASSERT(%struct.snddev_info* %41)
  %43 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %44 = call i32 @PCM_LOCK(%struct.snddev_info* %43)
  %45 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %46 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %45, i32 0, i32 0
  %47 = load %struct.cdev*, %struct.cdev** %46, align 8
  %48 = icmp ne %struct.cdev* %47, null
  br i1 %48, label %49, label %124

49:                                               ; preds = %40
  %50 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %51 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %50, i32 0, i32 0
  %52 = load %struct.cdev*, %struct.cdev** %51, align 8
  %53 = getelementptr inbounds %struct.cdev, %struct.cdev* %52, i32 0, i32 0
  %54 = load %struct.snd_mixer*, %struct.snd_mixer** %53, align 8
  %55 = icmp ne %struct.snd_mixer* %54, null
  br i1 %55, label %56, label %124

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %63 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %62, i32 0, i32 0
  %64 = load %struct.cdev*, %struct.cdev** %63, align 8
  %65 = load %struct.cdev*, %struct.cdev** %4, align 8
  %66 = icmp eq %struct.cdev* %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %67, %61
  %74 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %75 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %74, i32 0, i32 0
  %76 = load %struct.cdev*, %struct.cdev** %75, align 8
  %77 = getelementptr inbounds %struct.cdev, %struct.cdev* %76, i32 0, i32 0
  %78 = load %struct.snd_mixer*, %struct.snd_mixer** %77, align 8
  store %struct.snd_mixer* %78, %struct.snd_mixer** %7, align 8
  %79 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %80 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @mtx_lock(i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = bitcast %struct.TYPE_3__* %83 to i8*
  %85 = call i32 @bzero(i8* %84, i32 40)
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @snprintf(i32 %91, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %98 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strlcpy(i32 %96, i32 %99, i32 4)
  %101 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %102 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %112 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @device_is_attached(i32 %113)
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %121 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mtx_unlock(i32 %122)
  br label %127

124:                                              ; preds = %67, %49, %40
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %73
  %128 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %129 = call i32 @PCM_UNLOCK(%struct.snddev_info* %128)
  %130 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %131 = icmp ne %struct.snd_mixer* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %139

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %39
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %22

137:                                              ; preds = %30
  %138 = load i32, i32* @EINVAL, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %132, %19
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @devclass_get_maxunit(i32*) #1

declare dso_local %struct.snddev_info* @devclass_get_softc(i32*, i32) #1

declare dso_local i32 @PCM_REGISTERED(%struct.snddev_info*) #1

declare dso_local i32 @PCM_UNLOCKASSERT(%struct.snddev_info*) #1

declare dso_local i32 @PCM_LOCK(%struct.snddev_info*) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @PCM_UNLOCK(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
