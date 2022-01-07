; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_FadeManager.c_FadeUpdate.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_FadeManager.c_FadeUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fade_running = common dso_local global i64 0, align 8
@fade_frame = common dso_local global i32 0, align 4
@fade_frames_per_step = common dso_local global i32 0, align 4
@fade_direction = common dso_local global i64 0, align 8
@FADE_IN = common dso_local global i64 0, align 8
@fade_timer = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FadeUpdate() #0 {
  %1 = load i64, i64* @fade_running, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  %4 = load i32, i32* @fade_frame, align 4
  %5 = load i32, i32* @fade_frames_per_step, align 4
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = load i64, i64* @fade_direction, align 8
  %10 = load i64, i64* @FADE_IN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* @fade_timer, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @fade_timer, align 4
  %15 = load i32, i32* @fade_timer, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* @fade_running, align 8
  br label %19

19:                                               ; preds = %17, %12
  br label %28

20:                                               ; preds = %8
  %21 = load i32, i32* @fade_timer, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @fade_timer, align 4
  %23 = load i32, i32* @fade_timer, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* @fade_running, align 8
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* @fade_timer, align 4
  %31 = call i32 @ApplyPaletteChange(i32 %30)
  %32 = load i32, i32* @fade_frame, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @fade_frame, align 4
  br label %34

34:                                               ; preds = %29, %0
  ret void
}

declare dso_local i32 @ApplyPaletteChange(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
