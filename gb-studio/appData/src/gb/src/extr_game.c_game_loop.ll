; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_game.c_game_loop.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_game.c_game_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@LYC_REG = common dso_local global i32 0, align 4
@joy = common dso_local global i32 0, align 4
@stage_type = common dso_local global i64 0, align 8
@stage_next_type = common dso_local global i64 0, align 8
@scene_next_index = common dso_local global i32 0, align 4
@scene_index = common dso_local global i32 0, align 4
@actors = common dso_local global %struct.TYPE_10__* null, align 8
@map_next_pos = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@map_next_dir = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@SCENE = common dso_local global i64 0, align 8
@prev_joy = common dso_local global i32 0, align 4
@time = common dso_local global i64 0, align 8
@rand_seed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @game_loop() #0 {
  %1 = call i32 (...) @wait_vbl_done()
  store i32 0, i32* @LYC_REG, align 4
  %2 = call i32 (...) @joypad()
  store i32 %2, i32* @joy, align 4
  %3 = call i32 (...) @FadeUpdate()
  %4 = load i64, i64* @stage_type, align 8
  %5 = load i64, i64* @stage_next_type, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %0
  %8 = call i32 (...) @IsFading()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @stage_next_type, align 8
  store i64 %11, i64* @stage_type, align 8
  %12 = load i32, i32* @scene_next_index, align 4
  store i32 %12, i32* @scene_index, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @map_next_pos, i32 0, i32 1), align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @map_next_pos, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_dir, i32 0, i32 1), align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @actors, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_dir, i32 0, i32 0), align 4
  %33 = load i64, i64* @stage_type, align 8
  %34 = load i64, i64* @SCENE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = call i32 (...) @SceneInit()
  br label %38

38:                                               ; preds = %36, %10
  br label %39

39:                                               ; preds = %38, %7, %0
  %40 = load i64, i64* @stage_type, align 8
  %41 = load i64, i64* @SCENE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 (...) @SceneUpdate()
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* @joy, align 4
  store i32 %46, i32* @prev_joy, align 4
  %47 = load i64, i64* @time, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* @time, align 8
  %49 = load i64, i64* @time, align 8
  %50 = load i32, i32* @rand_seed, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* @rand_seed, align 4
  %54 = load i32, i32* @rand_seed, align 4
  %55 = call i32 @initrand(i32 %54)
  %56 = call i32 (...) @gbt_update()
  ret void
}

declare dso_local i32 @wait_vbl_done(...) #1

declare dso_local i32 @joypad(...) #1

declare dso_local i32 @FadeUpdate(...) #1

declare dso_local i32 @IsFading(...) #1

declare dso_local i32 @SceneInit(...) #1

declare dso_local i32 @SceneUpdate(...) #1

declare dso_local i32 @initrand(i32) #1

declare dso_local i32 @gbt_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
