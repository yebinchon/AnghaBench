; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_fix_tone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97_fix_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32, i32, i32, i32* }

@AC97_CAP_TONE = common dso_local global i32 0, align 4
@SOUND_MIXER_BASS = common dso_local global i64 0, align 8
@SOUND_MIXER_TREBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_info*)* @ac97_fix_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac97_fix_tone(%struct.ac97_info* %0) #0 {
  %2 = alloca %struct.ac97_info*, align 8
  store %struct.ac97_info* %0, %struct.ac97_info** %2, align 8
  %3 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %4 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %21 [
    i32 1498236928, label %6
    i32 1498236931, label %6
    i32 1498236930, label %16
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @AC97_CAP_TONE, align 4
  %8 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %9 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %13 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, 4
  store i32 %15, i32* %13, align 8
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %18 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, 4
  store i32 %20, i32* %18, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %16, %6
  %23 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %24 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AC97_CAP_TONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %31 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @SOUND_MIXER_BASS, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @bzero(i32* %34, i32 4)
  %36 = load %struct.ac97_info*, %struct.ac97_info** %2, align 8
  %37 = getelementptr inbounds %struct.ac97_info, %struct.ac97_info* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @SOUND_MIXER_TREBLE, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @bzero(i32* %40, i32 4)
  br label %42

42:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
