; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_get_recroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_get_recroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32*)* @mixer_get_recroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_get_recroute(%struct.snd_mixer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %16 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %35

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %24 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %8

35:                                               ; preds = %19, %8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @EIDRM, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %39
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
