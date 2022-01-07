; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_sound_oss_card_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_sound_oss_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32 }
%struct.snddev_info = type { i32, i32 }

@pcm_devclass = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sound_oss_card_info(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.snddev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %67, %1
  %8 = load i32*, i32** @pcm_devclass, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** @pcm_devclass, align 8
  %13 = call i32 @devclass_get_maxunit(i32* %12)
  %14 = icmp slt i32 %11, %13
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %70

17:                                               ; preds = %15
  %18 = load i32*, i32** @pcm_devclass, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.snddev_info* @devclass_get_softc(i32* %18, i32 %19)
  store %struct.snddev_info* %20, %struct.snddev_info** %4, align 8
  %21 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %22 = call i32 @PCM_REGISTERED(%struct.snddev_info* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %67

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %35 = call i32 @PCM_UNLOCKASSERT(%struct.snddev_info* %34)
  %36 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %37 = call i32 @PCM_LOCK(%struct.snddev_info* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %42 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_get_nameunit(i32 %43)
  %45 = call i32 @strlcpy(i32 %40, i32 %44, i32 4)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %50 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_get_desc(i32 %51)
  %53 = call i32 @strlcpy(i32 %48, i32 %52, i32 4)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %58 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strlcpy(i32 %56, i32 %59, i32 4)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.snddev_info*, %struct.snddev_info** %4, align 8
  %66 = call i32 @PCM_UNLOCK(%struct.snddev_info* %65)
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %32, %24
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %7

70:                                               ; preds = %15
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %33
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @devclass_get_maxunit(i32*) #1

declare dso_local %struct.snddev_info* @devclass_get_softc(i32*, i32) #1

declare dso_local i32 @PCM_REGISTERED(%struct.snddev_info*) #1

declare dso_local i32 @PCM_UNLOCKASSERT(%struct.snddev_info*) #1

declare dso_local i32 @PCM_LOCK(%struct.snddev_info*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @PCM_UNLOCK(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
