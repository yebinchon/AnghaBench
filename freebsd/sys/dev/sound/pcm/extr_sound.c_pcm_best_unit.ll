; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_best_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sound.c_pcm_best_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snddev_info = type { i64, i64 }

@pcm_devclass = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcm_best_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_best_unit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snddev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %5, align 4
  store i32 -100, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %58, %1
  %9 = load i32*, i32** @pcm_devclass, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** @pcm_devclass, align 8
  %14 = call i32 @devclass_get_maxunit(i32* %13)
  %15 = icmp slt i32 %12, %14
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %61

18:                                               ; preds = %16
  %19 = load i32*, i32** @pcm_devclass, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.snddev_info* @devclass_get_softc(i32* %19, i32 %20)
  store %struct.snddev_info* %21, %struct.snddev_info** %3, align 8
  %22 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %23 = call i32 @PCM_REGISTERED(%struct.snddev_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %58

26:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  %27 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %28 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 10
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.snddev_info*, %struct.snddev_info** %3, align 8
  %36 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %50, %46
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %8

61:                                               ; preds = %16
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @devclass_get_maxunit(i32*) #1

declare dso_local %struct.snddev_info* @devclass_get_softc(i32*, i32) #1

declare dso_local i32 @PCM_REGISTERED(%struct.snddev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
