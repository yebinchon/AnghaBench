; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_clonereset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_clonereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32, i32, i64, i64, i32 }

@snd_maxautovchans = common dso_local global i32 0, align 4
@PCMMAXCLONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snddev_info*)* @pcm_clonereset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_clonereset(%struct.snddev_info* %0) #0 {
  %2 = alloca %struct.snddev_info*, align 8
  %3 = alloca i32, align 4
  store %struct.snddev_info* %0, %struct.snddev_info** %2, align 8
  %4 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %5 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %4)
  %6 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %7 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %10 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %15 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %20 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @snd_maxautovchans, align 4
  %23 = call i32 @max(i64 %21, i32 %22)
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %29 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %34 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @snd_maxautovchans, align 4
  %37 = call i32 @max(i64 %35, i32 %36)
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PCMMAXCLONE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @PCMMAXCLONE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %49 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_clone_gc(i32 %50)
  %52 = load %struct.snddev_info*, %struct.snddev_info** %2, align 8
  %53 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @snd_clone_setmaxunit(i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @snd_clone_gc(i32) #1

declare dso_local i32 @snd_clone_setmaxunit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
