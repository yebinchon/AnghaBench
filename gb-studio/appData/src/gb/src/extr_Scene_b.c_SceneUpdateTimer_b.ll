; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneUpdateTimer_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneUpdateTimer_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scene_loaded = common dso_local global i32 0, align 4
@scene_input_ready = common dso_local global i32 0, align 4
@script_ptr = common dso_local global i64 0, align 8
@emote_timer = common dso_local global i64 0, align 8
@fade_running = common dso_local global i64 0, align 8
@timer_script_duration = common dso_local global i64 0, align 8
@timer_script_time = common dso_local global i64 0, align 8
@last_joy = common dso_local global i32 0, align 4
@timer_script_ptr = common dso_local global i32 0, align 4
@time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneUpdateTimer_b() #0 {
  %1 = load i32, i32* @scene_loaded, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @scene_input_ready, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  br label %45

7:                                                ; preds = %3
  %8 = load i64, i64* @script_ptr, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @emote_timer, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @fade_running, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %7
  br label %45

17:                                               ; preds = %13
  %18 = call i32 (...) @UIIsClosed()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %45

21:                                               ; preds = %17
  %22 = load i64, i64* @timer_script_duration, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i64, i64* @timer_script_time, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = call i32 @ACTOR_ON_TILE(i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %45

31:                                               ; preds = %27
  %32 = load i32, i32* @last_joy, align 4
  %33 = and i32 %32, 240
  store i32 %33, i32* @last_joy, align 4
  %34 = call i32 @ScriptStart(i32* @timer_script_ptr)
  %35 = load i64, i64* @timer_script_duration, align 8
  store i64 %35, i64* @timer_script_time, align 8
  br label %44

36:                                               ; preds = %24
  %37 = load i32, i32* @time, align 4
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @timer_script_time, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* @timer_script_time, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %6, %16, %20, %30, %44, %21
  ret void
}

declare dso_local i32 @UIIsClosed(...) #1

declare dso_local i32 @ACTOR_ON_TILE(i32) #1

declare dso_local i32 @ScriptStart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
