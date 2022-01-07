; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneHandleTriggers_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneHandleTriggers_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@check_triggers = common dso_local global i8* null, align 8
@script_ptr = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@actors = common dso_local global %struct.TYPE_6__* null, align 8
@ACTOR_MAX_Y = common dso_local global i64 0, align 8
@scene_num_triggers = common dso_local global i64 0, align 8
@last_joy = common dso_local global i32 0, align 4
@script_actor = common dso_local global i64 0, align 8
@triggers = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneHandleTriggers_b() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i8*, i8** @check_triggers, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %54

5:                                                ; preds = %0
  %6 = load i64, i64* @script_ptr, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %5
  %9 = call i64 @ACTOR_ON_TILE(i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = load i8*, i8** @FALSE, align 8
  store i8* %12, i8** @check_triggers, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACTOR_MAX_Y, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %2, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @DIV_8(i64 %26)
  %28 = load i64, i64* %2, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @DIV_8(i64 %33)
  %35 = add i64 %28, %34
  %36 = call i64 @SceneTriggerAt_b(i64 %27, i64 %35)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @scene_num_triggers, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %11
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* @last_joy, align 4
  %46 = and i32 %45, 240
  store i32 %46, i32* @last_joy, align 4
  store i64 0, i64* @script_actor, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @triggers, align 8
  %48 = load i64, i64* %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @ScriptStart(i32* %50)
  %52 = call i32 (...) @ScriptRunnerUpdate()
  br label %53

53:                                               ; preds = %40, %11
  br label %54

54:                                               ; preds = %53, %8, %5, %0
  ret void
}

declare dso_local i64 @ACTOR_ON_TILE(i32) #1

declare dso_local i64 @SceneTriggerAt_b(i64, i64) #1

declare dso_local i64 @DIV_8(i64) #1

declare dso_local i32 @ScriptStart(i32*) #1

declare dso_local i32 @ScriptRunnerUpdate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
