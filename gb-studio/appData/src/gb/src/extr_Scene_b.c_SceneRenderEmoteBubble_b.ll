; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneRenderEmoteBubble_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneRenderEmoteBubble_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@emote_timer = common dso_local global i64 0, align 8
@BUBBLE_TOTAL_FRAMES = common dso_local global i64 0, align 8
@actors = common dso_local global %struct.TYPE_4__* null, align 8
@emote_actor = common dso_local global i64 0, align 8
@SCX_REG = common dso_local global i64 0, align 8
@ACTOR_HEIGHT = common dso_local global i64 0, align 8
@SCY_REG = common dso_local global i64 0, align 8
@BUBBLE_ANIMATION_FRAMES = common dso_local global i64 0, align 8
@emote_offsets = common dso_local global i64* null, align 8
@BUBBLE_SPRITE_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneRenderEmoteBubble_b() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @emote_timer, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %0
  %6 = load i64, i64* @emote_timer, align 8
  %7 = load i64, i64* @BUBBLE_TOTAL_FRAMES, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %11 = load i64, i64* @emote_actor, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCX_REG, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %1, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %19 = load i64, i64* @emote_actor, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACTOR_HEIGHT, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* @SCY_REG, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* @emote_timer, align 8
  %29 = load i64, i64* @BUBBLE_ANIMATION_FRAMES, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %9
  %32 = load i64*, i64** @emote_offsets, align 8
  %33 = load i64, i64* @emote_timer, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %2, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %31, %9
  %39 = load i32, i32* @BUBBLE_SPRITE_LEFT, align 4
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @move_sprite_pair(i32 %39, i64 %40, i64 %41)
  br label %43

43:                                               ; preds = %38, %5
  br label %44

44:                                               ; preds = %43, %0
  ret void
}

declare dso_local i32 @move_sprite_pair(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
