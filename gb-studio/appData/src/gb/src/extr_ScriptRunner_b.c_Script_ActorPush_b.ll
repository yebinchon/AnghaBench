; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorPush_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorPush_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }

@script_cmd_args = common dso_local global i64* null, align 8
@actors = common dso_local global %struct.TYPE_7__* null, align 8
@ACTOR_MAX_X = common dso_local global i8* null, align 8
@script_actor = common dso_local global i64 0, align 8
@ACTOR_MAX_Y = common dso_local global i8* null, align 8
@ACTOR_MOVE_ENABLED = common dso_local global i32 0, align 4
@actor_move_settings = common dso_local global i32 0, align 4
@ACTOR_NOCLIP = common dso_local global i32 0, align 4
@actor_move_dest = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@script_action_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ActorPush_b() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i64*, i64** @script_cmd_args, align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i8* null, i8** %1, align 8
  br label %32

15:                                               ; preds = %7
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i8*, i8** @ACTOR_MAX_X, align 8
  store i8* %23, i8** %1, align 8
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %26 = load i64, i64* @script_actor, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %1, align 8
  br label %31

31:                                               ; preds = %24, %22
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %57

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** @ACTOR_MAX_Y, align 8
  store i8* %48, i8** %2, align 8
  br label %56

49:                                               ; preds = %40
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %51 = load i64, i64* @script_actor, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %2, align 8
  br label %56

56:                                               ; preds = %49, %47
  br label %57

57:                                               ; preds = %56, %39
  br label %87

58:                                               ; preds = %0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %60 = load i64, i64* @script_actor, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 16
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %64, i64 %71
  store i8* %72, i8** %1, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %74 = load i64, i64* @script_actor, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actors, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 16
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %78, i64 %85
  store i8* %86, i8** %2, align 8
  br label %87

87:                                               ; preds = %58, %57
  %88 = load i32, i32* @ACTOR_MOVE_ENABLED, align 4
  %89 = load i32, i32* @actor_move_settings, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* @actor_move_settings, align 4
  %91 = load i32, i32* @ACTOR_NOCLIP, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* @actor_move_settings, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* @actor_move_settings, align 4
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @actor_move_dest, i32 0, i32 1), align 8
  %95 = load i8*, i8** %1, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @actor_move_dest, i32 0, i32 1), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @actor_move_dest, i32 0, i32 0), align 8
  %96 = load i8*, i8** %2, align 8
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @actor_move_dest, i32 0, i32 0), align 8
  %97 = load i64, i64* @script_cmd_args_len, align 8
  %98 = add nsw i64 1, %97
  %99 = load i32, i32* @script_ptr, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* @script_ptr, align 4
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* @script_action_complete, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
