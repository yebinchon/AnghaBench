; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_mixer* }
%struct.snd_mixer = type { i32, i32, i32 }
%struct.thread = type { i32 }
%struct.snddev_info = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @mixer_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.snddev_info*, align 8
  %11 = alloca %struct.snd_mixer*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = icmp eq %struct.cdev* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.snd_mixer*, %struct.snd_mixer** %16, align 8
  %18 = icmp eq %struct.snd_mixer* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @EBADF, align 4
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.cdev*, %struct.cdev** %6, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.snd_mixer*, %struct.snd_mixer** %23, align 8
  store %struct.snd_mixer* %24, %struct.snd_mixer** %11, align 8
  %25 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %26 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.snddev_info* @device_get_softc(i32 %27)
  store %struct.snddev_info* %28, %struct.snddev_info** %10, align 8
  %29 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %30 = call i32 @PCM_REGISTERED(%struct.snddev_info* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @EBADF, align 4
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %36 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_mtxlock(i32 %37)
  %39 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %40 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %42 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_mtxunlock(i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %34, %32, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i32 @PCM_REGISTERED(%struct.snddev_info*) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
