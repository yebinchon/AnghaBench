; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ScenePopState_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ScenePopState_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@scene_stack_ptr = common dso_local global i32 0, align 4
@scene_stack = common dso_local global %struct.TYPE_8__* null, align 8
@scene_next_index = common dso_local global i64 0, align 8
@scene_index = common dso_local global i64 0, align 8
@map_next_pos = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@map_next_dir = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@SCENE = common dso_local global i32 0, align 4
@stage_next_type = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@scene_loaded = common dso_local global i8* null, align 8
@script_action_complete = common dso_local global i8* null, align 8
@script_cmd_args = common dso_local global i32* null, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ScenePopState_b() #0 {
  %1 = load i32, i32* @scene_stack_ptr, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %58

3:                                                ; preds = %0
  %4 = load i32, i32* @scene_stack_ptr, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @scene_stack_ptr, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %7 = load i32, i32* @scene_stack_ptr, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* @scene_next_index, align 8
  %12 = load i64, i64* @scene_next_index, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @scene_index, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 0), align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %15 = load i32, i32* @scene_stack_ptr, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 3
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 1), align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %23 = load i32, i32* @scene_stack_ptr, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 1), align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %31 = load i32, i32* @scene_stack_ptr, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @map_next_dir, i32 0, i32 1), align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %38 = load i32, i32* @scene_stack_ptr, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @map_next_dir, i32 0, i32 0), align 4
  %44 = load i32, i32* @SCENE, align 4
  store i32 %44, i32* @stage_next_type, align 4
  %45 = load i8*, i8** @FALSE, align 8
  store i8* %45, i8** @scene_loaded, align 8
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** @script_action_complete, align 8
  %47 = load i32*, i32** @script_cmd_args, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FadeSetSpeed(i32 %49)
  %51 = call i32 (...) @FadeOut()
  %52 = load i64, i64* @script_cmd_args_len, align 8
  %53 = add nsw i64 1, %52
  %54 = load i32, i32* @script_ptr, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* @script_ptr, align 4
  br label %66

58:                                               ; preds = %0
  %59 = load i8*, i8** @TRUE, align 8
  store i8* %59, i8** @script_action_complete, align 8
  %60 = load i64, i64* @script_cmd_args_len, align 8
  %61 = add nsw i64 1, %60
  %62 = load i32, i32* @script_ptr, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* @script_ptr, align 4
  br label %66

66:                                               ; preds = %58, %3
  ret void
}

declare dso_local i32 @FadeSetSpeed(i32) #1

declare dso_local i32 @FadeOut(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
