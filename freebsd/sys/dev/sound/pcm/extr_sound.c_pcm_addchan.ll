; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_addchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_addchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.snddev_info = type { i32 }
%struct.pcm_channel = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"pcm_chn_create(%s, %d, %p) failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pcm_chn_add(%s) failed, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm_addchan(i32 %0, i32 %1, %struct.TYPE_4__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.snddev_info*, align 8
  %11 = alloca %struct.pcm_channel*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.snddev_info* @device_get_softc(i32 %13)
  store %struct.snddev_info* %14, %struct.snddev_info** %10, align 8
  %15 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %16 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %15)
  %17 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %18 = call i32 @PCM_LOCK(%struct.snddev_info* %17)
  %19 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call %struct.pcm_channel* @pcm_chn_create(%struct.snddev_info* %19, i32* null, %struct.TYPE_4__* %20, i32 %21, i32 -1, i8* %22)
  store %struct.pcm_channel* %23, %struct.pcm_channel** %11, align 8
  %24 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %25 = icmp ne %struct.pcm_channel* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %4
  %27 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %28 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i8* %34)
  %36 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %37 = call i32 @PCM_UNLOCK(%struct.snddev_info* %36)
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %5, align 4
  br label %60

39:                                               ; preds = %4
  %40 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %41 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %42 = call i32 @pcm_chn_add(%struct.snddev_info* %40, %struct.pcm_channel* %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %44 = call i32 @PCM_UNLOCK(%struct.snddev_info* %43)
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %49 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %52 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.pcm_channel*, %struct.pcm_channel** %11, align 8
  %57 = call i32 @pcm_chn_destroy(%struct.pcm_channel* %56)
  br label %58

58:                                               ; preds = %47, %39
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @PCM_LOCK(%struct.snddev_info*) #1

declare dso_local %struct.pcm_channel* @pcm_chn_create(%struct.snddev_info*, i32*, %struct.TYPE_4__*, i32, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @PCM_UNLOCK(%struct.snddev_info*) #1

declare dso_local i32 @pcm_chn_add(%struct.snddev_info*, %struct.pcm_channel*) #1

declare dso_local i32 @pcm_chn_destroy(%struct.pcm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
