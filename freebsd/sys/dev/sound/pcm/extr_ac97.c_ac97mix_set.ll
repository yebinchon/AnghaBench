; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97mix_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_ac97.c_ac97mix_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.ac97_info = type { i32 }

@AC97_MIXER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @ac97mix_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97mix_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ac97_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %12 = call %struct.ac97_info* @mix_getdevinfo(%struct.snd_mixer* %11)
  store %struct.ac97_info* %12, %struct.ac97_info** %10, align 8
  %13 = load %struct.ac97_info*, %struct.ac97_info** %10, align 8
  %14 = icmp eq %struct.ac97_info* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AC97_MIXER_SIZE, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load %struct.ac97_info*, %struct.ac97_info** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ac97_setmixer(%struct.ac97_info* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.ac97_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @ac97_setmixer(%struct.ac97_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
