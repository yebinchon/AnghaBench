; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_mute_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_mute_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mixer_hwvol_mute_locked(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %3 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %4 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %9 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %12 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %15 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mixer_set(%struct.snd_mixer* %10, i32 %13, i32 %16)
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %20 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %24 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %25 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mixer_get(%struct.snd_mixer* %23, i32 %26)
  %28 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %29 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %31 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %32 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mixer_set(%struct.snd_mixer* %30, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @mixer_set(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @mixer_get(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
