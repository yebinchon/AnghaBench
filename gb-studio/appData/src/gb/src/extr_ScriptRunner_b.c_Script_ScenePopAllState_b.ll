; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ScenePopAllState_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ScenePopAllState_b.c"
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
define dso_local void @Script_ScenePopAllState_b() #0 {
  %1 = load i32, i32* @scene_stack_ptr, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %56

3:                                                ; preds = %0
  store i32 0, i32* @scene_stack_ptr, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %5 = load i32, i32* @scene_stack_ptr, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* @scene_next_index, align 8
  %10 = load i64, i64* @scene_next_index, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @scene_index, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 0), align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %13 = load i32, i32* @scene_stack_ptr, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 3
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 1), align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %21 = load i32, i32* @scene_stack_ptr, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 3
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @map_next_pos, i32 0, i32 1), align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %29 = load i32, i32* @scene_stack_ptr, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @map_next_dir, i32 0, i32 1), align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @scene_stack, align 8
  %36 = load i32, i32* @scene_stack_ptr, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @map_next_dir, i32 0, i32 0), align 4
  %42 = load i32, i32* @SCENE, align 4
  store i32 %42, i32* @stage_next_type, align 4
  %43 = load i8*, i8** @FALSE, align 8
  store i8* %43, i8** @scene_loaded, align 8
  %44 = load i8*, i8** @FALSE, align 8
  store i8* %44, i8** @script_action_complete, align 8
  %45 = load i32*, i32** @script_cmd_args, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FadeSetSpeed(i32 %47)
  %49 = call i32 (...) @FadeOut()
  %50 = load i64, i64* @script_cmd_args_len, align 8
  %51 = add nsw i64 1, %50
  %52 = load i32, i32* @script_ptr, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* @script_ptr, align 4
  br label %64

56:                                               ; preds = %0
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @script_action_complete, align 8
  %58 = load i64, i64* @script_cmd_args_len, align 8
  %59 = add nsw i64 1, %58
  %60 = load i32, i32* @script_ptr, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* @script_ptr, align 4
  br label %64

64:                                               ; preds = %56, %3
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
