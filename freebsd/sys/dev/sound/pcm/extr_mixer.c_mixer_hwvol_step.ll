; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.cdev = type { %struct.snd_mixer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mixer_hwvol_step(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_mixer*, align 8
  %8 = alloca %struct.cdev*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cdev* @mixer_get_devt(i32 %9)
  store %struct.cdev* %10, %struct.cdev** %8, align 8
  %11 = load %struct.cdev*, %struct.cdev** %8, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.snd_mixer*, %struct.snd_mixer** %12, align 8
  store %struct.snd_mixer* %13, %struct.snd_mixer** %7, align 8
  %14 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %15 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_mtxlock(i32 %16)
  %18 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mixer_hwvol_step_locked(%struct.snd_mixer* %18, i32 %19, i32 %20)
  %22 = load %struct.snd_mixer*, %struct.snd_mixer** %7, align 8
  %23 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_mtxunlock(i32 %24)
  ret void
}

declare dso_local %struct.cdev* @mixer_get_devt(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @mixer_hwvol_step_locked(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
