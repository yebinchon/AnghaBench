; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b9.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@DATA_PTRS_BANK = common dso_local global i32 0, align 4
@bank_ptr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@scene_bank_ptrs = common dso_local global i32* null, align 8
@scene_index = common dso_local global i64 0, align 8
@scene_load_col_ptr = common dso_local global i64 0, align 8
@events_ptr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@scene_num_actors = common dso_local global i64 0, align 8
@MAX_ACTORS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@actors = common dso_local global %struct.TYPE_8__* null, align 8
@CAMERA_LOCK_FLAG = common dso_local global i32 0, align 4
@camera_settings = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@check_triggers = common dso_local global i8* null, align 8
@time = common dso_local global i64 0, align 8
@last_joy = common dso_local global i64 0, align 8
@scene_loaded = common dso_local global i8* null, align 8
@timer_script_duration = common dso_local global i64 0, align 8
@SHOW_SPRITES = common dso_local global i32 0, align 4
@DISPLAY_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneInit_b9() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @DATA_PTRS_BANK, align 4
  %3 = load i32*, i32** @scene_bank_ptrs, align 8
  %4 = load i64, i64* @scene_index, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = call i32 @ReadBankedBankPtr(i32 %2, %struct.TYPE_7__* @bank_ptr, i32* %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bank_ptr, i32 0, i32 0), align 4
  %8 = load i64, i64* @scene_load_col_ptr, align 8
  %9 = call i32 @ReadBankedUBYTE(i32 %7, i64 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events_ptr, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bank_ptr, i32 0, i32 0), align 4
  %11 = load i64, i64* @scene_load_col_ptr, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i32 @ReadBankedUBYTE(i32 %10, i64 %12)
  %14 = mul nsw i32 %13, 256
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bank_ptr, i32 0, i32 0), align 4
  %16 = load i64, i64* @scene_load_col_ptr, align 8
  %17 = add nsw i64 %16, 2
  %18 = call i32 @ReadBankedUBYTE(i32 %15, i64 %17)
  %19 = add nsw i32 %14, %18
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @events_ptr, i32 0, i32 1), align 4
  %20 = call i32 @ScriptStart(%struct.TYPE_6__* @events_ptr)
  %21 = load i64, i64* @scene_num_actors, align 8
  store i64 %21, i64* %1, align 8
  br label %22

22:                                               ; preds = %35, %0
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @MAX_ACTORS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32, i32* @FALSE, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @actors, align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @MUL_2(i64 %32)
  %34 = call i32 @hide_sprite_pair(i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %1, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %22

38:                                               ; preds = %22
  %39 = load i32, i32* @CAMERA_LOCK_FLAG, align 4
  store i32 %39, i32* @camera_settings, align 4
  %40 = call i32 (...) @SceneUpdateCamera_b()
  %41 = load i8*, i8** @TRUE, align 8
  store i8* %41, i8** @check_triggers, align 8
  %42 = call i32 (...) @SceneHandleTriggers_b()
  %43 = call i32 (...) @FadeIn()
  store i64 0, i64* @time, align 8
  store i64 0, i64* @last_joy, align 8
  %44 = load i8*, i8** @TRUE, align 8
  store i8* %44, i8** @scene_loaded, align 8
  store i64 0, i64* @timer_script_duration, align 8
  %45 = load i32, i32* @SHOW_SPRITES, align 4
  %46 = load i32, i32* @DISPLAY_ON, align 4
  ret void
}

declare dso_local i32 @ReadBankedBankPtr(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ReadBankedUBYTE(i32, i64) #1

declare dso_local i32 @ScriptStart(%struct.TYPE_6__*) #1

declare dso_local i32 @hide_sprite_pair(i32) #1

declare dso_local i32 @MUL_2(i64) #1

declare dso_local i32 @SceneUpdateCamera_b(...) #1

declare dso_local i32 @SceneHandleTriggers_b(...) #1

declare dso_local i32 @FadeIn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
