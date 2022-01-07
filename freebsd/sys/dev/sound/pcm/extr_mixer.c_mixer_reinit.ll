; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32, i32* }
%struct.cdev = type { %struct.snd_mixer* }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mixer_reinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.cdev* @mixer_get_devt(i32 %7)
  store %struct.cdev* %8, %struct.cdev** %5, align 8
  %9 = load %struct.cdev*, %struct.cdev** %5, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %10, align 8
  store %struct.snd_mixer* %11, %struct.snd_mixer** %4, align 8
  %12 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %13 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @snd_mtxlock(i32 %14)
  %16 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %17 = call i32 @MIXER_REINIT(%struct.snd_mixer* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %22 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snd_mtxunlock(i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %35 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mixer_set(%struct.snd_mixer* %32, i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %47 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %48 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mixer_setrecsrc(%struct.snd_mixer* %46, i32 %49)
  %51 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %52 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snd_mtxunlock(i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %45, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.cdev* @mixer_get_devt(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @MIXER_REINIT(%struct.snd_mixer*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @mixer_set(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @mixer_setrecsrc(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
