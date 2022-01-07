; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorMoveTo_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorMoveTo_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ACTOR_MOVE_ENABLED = common dso_local global i32 0, align 4
@actor_move_settings = common dso_local global i32 0, align 4
@ACTOR_NOCLIP = common dso_local global i32 0, align 4
@actor_move_dest = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@script_cmd_args = common dso_local global i32* null, align 8
@ACTOR_MAX_Y = common dso_local global i32 0, align 4
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@script_action_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ActorMoveTo_b() #0 {
  %1 = load i32, i32* @ACTOR_MOVE_ENABLED, align 4
  %2 = load i32, i32* @actor_move_settings, align 4
  %3 = or i32 %2, %1
  store i32 %3, i32* @actor_move_settings, align 4
  %4 = load i32, i32* @ACTOR_NOCLIP, align 4
  %5 = load i32, i32* @actor_move_settings, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* @actor_move_settings, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @actor_move_dest, i32 0, i32 0), align 4
  %7 = load i32*, i32** @script_cmd_args, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 3
  %11 = add nsw i32 %10, 8
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @actor_move_dest, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @actor_move_dest, i32 0, i32 1), align 4
  %12 = load i32*, i32** @script_cmd_args, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 3
  %16 = add nsw i32 %15, 8
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @actor_move_dest, i32 0, i32 1), align 4
  %17 = load i32*, i32** @script_cmd_args, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 31
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = load i32, i32* @ACTOR_MAX_Y, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @actor_move_dest, i32 0, i32 1), align 4
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i64, i64* @script_cmd_args_len, align 8
  %25 = add nsw i64 1, %24
  %26 = load i32, i32* @script_ptr, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @script_ptr, align 4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* @script_action_complete, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
