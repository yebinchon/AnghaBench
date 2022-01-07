; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_mute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.cdev = type { %struct.snd_mixer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mixer_hwvol_mute(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca %struct.cdev*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cdev* @mixer_get_devt(i32 %5)
  store %struct.cdev* %6, %struct.cdev** %4, align 8
  %7 = load %struct.cdev*, %struct.cdev** %4, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 0
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %8, align 8
  store %struct.snd_mixer* %9, %struct.snd_mixer** %3, align 8
  %10 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %11 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snd_mtxlock(i32 %12)
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %15 = call i32 @mixer_hwvol_mute_locked(%struct.snd_mixer* %14)
  %16 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %17 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_mtxunlock(i32 %18)
  ret void
}

declare dso_local %struct.cdev* @mixer_get_devt(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @mixer_hwvol_mute_locked(%struct.snd_mixer*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
