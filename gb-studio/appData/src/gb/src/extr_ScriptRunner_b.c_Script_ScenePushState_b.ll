; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ScenePushState_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ScenePushState_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@scene_stack_ptr = common dso_local global i64 0, align 8
@MAX_SCENE_STATES = common dso_local global i64 0, align 8
@scene_index = common dso_local global i32 0, align 4
@scene_stack = common dso_local global %struct.TYPE_11__* null, align 8
@actors = common dso_local global %struct.TYPE_12__* null, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ScenePushState_b() #0 {
  %1 = load i64, i64* @scene_stack_ptr, align 8
  %2 = load i64, i64* @MAX_SCENE_STATES, align 8
  %3 = icmp ult i64 %1, %2
  br i1 %3, label %4, label %64

4:                                                ; preds = %0
  %5 = load i32, i32* @scene_index, align 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %7 = load i64, i64* @scene_stack_ptr, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %5, i32* %9, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @actors, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %16 = load i64, i64* @scene_stack_ptr, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 %14, i32* %19, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @actors, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %26 = load i64, i64* @scene_stack_ptr, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %31 = load i64, i64* @scene_stack_ptr, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @actors, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %42 = load i64, i64* @scene_stack_ptr, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %47 = load i64, i64* @scene_stack_ptr, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @actors, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 3
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @scene_stack, align 8
  %58 = load i64, i64* @scene_stack_ptr, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load i64, i64* @scene_stack_ptr, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* @scene_stack_ptr, align 8
  br label %64

64:                                               ; preds = %4, %0
  %65 = load i64, i64* @script_cmd_args_len, align 8
  %66 = add nsw i64 1, %65
  %67 = load i32, i32* @script_ptr, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @script_ptr, align 4
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
