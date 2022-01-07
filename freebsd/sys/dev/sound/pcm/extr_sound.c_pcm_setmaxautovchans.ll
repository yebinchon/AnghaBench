; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_setmaxautovchans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_setmaxautovchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snddev_info*, i32)* @pcm_setmaxautovchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcm_setmaxautovchans(%struct.snddev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.snddev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.snddev_info* %0, %struct.snddev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %6 = call i32 @PCM_BUSYASSERT(%struct.snddev_info* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %15 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %21 = load i32, i32* @PCMDIR_PLAY, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pcm_setvchans(%struct.snddev_info* %20, i32 %21, i32 %22, i32 -1)
  br label %37

24:                                               ; preds = %13, %10
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %29 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %34 = load i32, i32* @PCMDIR_PLAY, align 4
  %35 = call i32 @pcm_setvchans(%struct.snddev_info* %33, i32 %34, i32 1, i32 -1)
  br label %36

36:                                               ; preds = %32, %27, %24
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %42 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %48 = load i32, i32* @PCMDIR_REC, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pcm_setvchans(%struct.snddev_info* %47, i32 %48, i32 %49, i32 -1)
  br label %64

51:                                               ; preds = %40, %37
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %56 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %61 = load i32, i32* @PCMDIR_REC, align 4
  %62 = call i32 @pcm_setvchans(%struct.snddev_info* %60, i32 %61, i32 1, i32 -1)
  br label %63

63:                                               ; preds = %59, %54, %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %66 = call i32 @pcm_clonereset(%struct.snddev_info* %65)
  br label %67

67:                                               ; preds = %64, %9
  ret void
}

declare dso_local i32 @PCM_BUSYASSERT(%struct.snddev_info*) #1

declare dso_local i32 @pcm_setvchans(%struct.snddev_info*, i32, i32, i32) #1

declare dso_local i32 @pcm_clonereset(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
