; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_LoadScene_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_LoadScene_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@script_cmd_args = common dso_local global i32* null, align 8
@scene_next_index = common dso_local global i32 0, align 4
@scene_index = common dso_local global i32 0, align 4
@map_next_pos = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@map_next_dir = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SCENE = common dso_local global i32 0, align 4
@stage_next_type = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@scene_loaded = common dso_local global i8* null, align 8
@script_action_complete = common dso_local global i8* null, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_LoadScene_b() #0 {
  %1 = load i32*, i32** @script_cmd_args, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 %3, 256
  %5 = load i32*, i32** @script_cmd_args, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %4, %7
  store i32 %8, i32* @scene_next_index, align 4
  %9 = load i32, i32* @scene_next_index, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @scene_index, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 0), align 4
  %11 = load i32*, i32** @script_cmd_args, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 3
  %15 = add nsw i32 %14, 8
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 1), align 4
  %16 = load i32*, i32** @script_cmd_args, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 3
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 1), align 4
  %21 = load i32*, i32** @script_cmd_args, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %33

26:                                               ; preds = %0
  %27 = load i32*, i32** @script_cmd_args, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 4
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  br label %33

33:                                               ; preds = %26, %25
  %34 = phi i32 [ -1, %25 ], [ %32, %26 ]
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @map_next_dir, i32 0, i32 0), align 4
  %35 = load i32*, i32** @script_cmd_args, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %47

40:                                               ; preds = %33
  %41 = load i32*, i32** @script_cmd_args, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  br label %47

47:                                               ; preds = %40, %39
  %48 = phi i32 [ -1, %39 ], [ %46, %40 ]
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @map_next_dir, i32 0, i32 1), align 4
  %49 = load i32, i32* @SCENE, align 4
  store i32 %49, i32* @stage_next_type, align 4
  %50 = load i8*, i8** @FALSE, align 8
  store i8* %50, i8** @scene_loaded, align 8
  %51 = load i8*, i8** @FALSE, align 8
  store i8* %51, i8** @script_action_complete, align 8
  %52 = load i32*, i32** @script_cmd_args, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FadeSetSpeed(i32 %54)
  %56 = call i32 (...) @FadeOut()
  %57 = load i64, i64* @script_cmd_args_len, align 8
  %58 = add nsw i64 1, %57
  %59 = load i32, i32* @script_ptr, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @script_ptr, align 4
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
