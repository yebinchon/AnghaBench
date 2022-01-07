; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.snd_mixer* }
%struct.snd_mixer = type { i64, i32, i32 }
%struct.thread = type { i32 }
%struct.snddev_info = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @mixer_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.snddev_info*, align 8
  %11 = alloca %struct.snd_mixer*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = icmp eq %struct.cdev* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.snd_mixer*, %struct.snd_mixer** %17, align 8
  %19 = icmp eq %struct.snd_mixer* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @EBADF, align 4
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %15
  %23 = load %struct.cdev*, %struct.cdev** %6, align 8
  %24 = getelementptr inbounds %struct.cdev, %struct.cdev* %23, i32 0, i32 0
  %25 = load %struct.snd_mixer*, %struct.snd_mixer** %24, align 8
  store %struct.snd_mixer* %25, %struct.snd_mixer** %11, align 8
  %26 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %27 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.snddev_info* @device_get_softc(i32 %28)
  store %struct.snddev_info* %29, %struct.snddev_info** %10, align 8
  %30 = load %struct.snddev_info*, %struct.snddev_info** %10, align 8
  %31 = call i32 @PCM_REGISTERED(%struct.snddev_info* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @EBADF, align 4
  store i32 %34, i32* %5, align 4
  br label %56

35:                                               ; preds = %22
  %36 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %37 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snd_mtxlock(i32 %38)
  %40 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %41 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @EBADF, align 4
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %12, align 4
  %49 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %50 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.snd_mixer*, %struct.snd_mixer** %11, align 8
  %52 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_mtxunlock(i32 %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %33, %20
  %57 = load i32, i32* %5, align 4
  ret i32 %57
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
