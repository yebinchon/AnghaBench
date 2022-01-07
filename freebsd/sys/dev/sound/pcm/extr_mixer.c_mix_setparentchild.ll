; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mix_setparentchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mix_setparentchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32*, i32* }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_setparentchild(%struct.snd_mixer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %10 = icmp eq %struct.snd_mixer* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  br label %95

16:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %79, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %79

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %38 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %51 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %54 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %52, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %49
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %46, %32
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %67 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %73 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %64, %26
  br label %79

79:                                               ; preds = %78, %25
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 1, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %90 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %82, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
