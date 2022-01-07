; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_step_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_hwvol_step_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mixer_hwvol_step_locked(%struct.snd_mixer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %11 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %16 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %18 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %22 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %23 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mixer_get(%struct.snd_mixer* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %37 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %50

45:                                               ; preds = %29
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 100, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %53 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  br label %66

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 100
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 100, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %60
  %67 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %68 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %69 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %71, %73
  %75 = call i32 @mixer_set(%struct.snd_mixer* %67, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %66, %26
  ret void
}

declare dso_local i32 @mixer_get(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mixer_set(%struct.snd_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
