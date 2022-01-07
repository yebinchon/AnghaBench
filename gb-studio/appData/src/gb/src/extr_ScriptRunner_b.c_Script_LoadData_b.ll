; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_LoadData_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_LoadData_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENABLE_RAM = common dso_local global i32 0, align 4
@RAM_START_PTR = common dso_local global i64 0, align 8
@RAMPtr = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@scene_next_index = common dso_local global i32 0, align 4
@scene_index = common dso_local global i32 0, align 4
@map_next_pos = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@map_next_dir = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@map_next_sprite = common dso_local global i32 0, align 4
@RAM_START_VARS_PTR = common dso_local global i64 0, align 8
@NUM_VARIABLES = common dso_local global i64 0, align 8
@script_variables = common dso_local global i32* null, align 8
@SCENE = common dso_local global i32 0, align 4
@stage_next_type = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@scene_loaded = common dso_local global i8* null, align 8
@script_action_complete = common dso_local global i8* null, align 8
@DISABLE_RAM = common dso_local global i32 0, align 4
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_LoadData_b() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @ENABLE_RAM, align 4
  %3 = load i64, i64* @RAM_START_PTR, align 8
  %4 = inttoptr i64 %3 to i32*
  store i32* %4, i32** @RAMPtr, align 8
  %5 = load i32*, i32** @RAMPtr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TRUE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %77

9:                                                ; preds = %0
  %10 = load i32*, i32** @RAMPtr, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** @RAMPtr, align 8
  %12 = load i32*, i32** @RAMPtr, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @scene_next_index, align 4
  %14 = load i32, i32* @scene_next_index, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @scene_index, align 4
  %16 = load i32*, i32** @RAMPtr, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** @RAMPtr, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 0), align 4
  %18 = load i32*, i32** @RAMPtr, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 0), align 4
  %20 = load i32*, i32** @RAMPtr, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** @RAMPtr, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 1), align 4
  %22 = load i32*, i32** @RAMPtr, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @map_next_pos, i32 0, i32 1), align 4
  %24 = load i32*, i32** @RAMPtr, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** @RAMPtr, align 8
  %26 = load i32*, i32** @RAMPtr, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  br label %36

30:                                               ; preds = %9
  %31 = load i32*, i32** @RAMPtr, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ -1, %29 ], [ %35, %30 ]
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @map_next_dir, i32 0, i32 0), align 4
  %38 = load i32*, i32** @RAMPtr, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %48

42:                                               ; preds = %36
  %43 = load i32*, i32** @RAMPtr, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi i32 [ -1, %41 ], [ %47, %42 ]
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @map_next_dir, i32 0, i32 1), align 4
  %50 = load i32*, i32** @RAMPtr, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** @RAMPtr, align 8
  %52 = load i32*, i32** @RAMPtr, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @map_next_sprite, align 4
  %54 = load i64, i64* @RAM_START_VARS_PTR, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** @RAMPtr, align 8
  store i64 0, i64* %1, align 8
  br label %56

56:                                               ; preds = %68, %48
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* @NUM_VARIABLES, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32*, i32** @RAMPtr, align 8
  %62 = load i64, i64* %1, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @script_variables, align 8
  %66 = load i64, i64* %1, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %1, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %1, align 8
  br label %56

71:                                               ; preds = %56
  %72 = load i32, i32* @SCENE, align 4
  store i32 %72, i32* @stage_next_type, align 4
  %73 = load i8*, i8** @FALSE, align 8
  store i8* %73, i8** @scene_loaded, align 8
  %74 = call i32 @FadeSetSpeed(i32 2)
  %75 = call i32 (...) @FadeOut()
  %76 = load i8*, i8** @FALSE, align 8
  store i8* %76, i8** @script_action_complete, align 8
  br label %77

77:                                               ; preds = %71, %0
  %78 = load i32, i32* @DISABLE_RAM, align 4
  %79 = load i64, i64* @script_cmd_args_len, align 8
  %80 = add nsw i64 1, %79
  %81 = load i32, i32* @script_ptr, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* @script_ptr, align 4
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
