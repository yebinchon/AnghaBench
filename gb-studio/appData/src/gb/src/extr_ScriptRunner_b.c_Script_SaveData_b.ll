; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_SaveData_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_SaveData_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@ENABLE_RAM = common dso_local global i32 0, align 4
@RAM_START_PTR = common dso_local global i64 0, align 8
@RAMPtr = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@scene_index = common dso_local global i32 0, align 4
@actors = common dso_local global %struct.TYPE_6__* null, align 8
@map_next_sprite = common dso_local global i32 0, align 4
@RAM_START_VARS_PTR = common dso_local global i64 0, align 8
@NUM_VARIABLES = common dso_local global i64 0, align 8
@script_variables = common dso_local global i32* null, align 8
@DISABLE_RAM = common dso_local global i32 0, align 4
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@script_continue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_SaveData_b() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @ENABLE_RAM, align 4
  %3 = load i64, i64* @RAM_START_PTR, align 8
  %4 = inttoptr i64 %3 to i32*
  store i32* %4, i32** @RAMPtr, align 8
  %5 = load i8*, i8** @TRUE, align 8
  %6 = ptrtoint i8* %5 to i32
  %7 = load i32*, i32** @RAMPtr, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @scene_index, align 4
  %10 = load i32*, i32** @RAMPtr, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** @RAMPtr, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @RAMPtr, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %0
  %33 = load i32*, i32** @RAMPtr, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 2, i32* %34, align 4
  br label %60

35:                                               ; preds = %0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** @RAMPtr, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 4, i32* %44, align 4
  br label %59

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32*, i32** @RAMPtr, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 8, i32* %54, align 4
  br label %58

55:                                               ; preds = %45
  %56 = load i32*, i32** @RAMPtr, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32, i32* @map_next_sprite, align 4
  %62 = load i32*, i32** @RAMPtr, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* @RAM_START_VARS_PTR, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** @RAMPtr, align 8
  store i64 0, i64* %1, align 8
  br label %66

66:                                               ; preds = %78, %60
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @NUM_VARIABLES, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i32*, i32** @script_variables, align 8
  %72 = load i64, i64* %1, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @RAMPtr, align 8
  %76 = load i64, i64* %1, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i64, i64* %1, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %1, align 8
  br label %66

81:                                               ; preds = %66
  %82 = load i32, i32* @DISABLE_RAM, align 4
  %83 = load i64, i64* @script_cmd_args_len, align 8
  %84 = add nsw i64 1, %83
  %85 = load i32, i32* @script_ptr, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @script_ptr, align 4
  %89 = load i8*, i8** @TRUE, align 8
  store i8* %89, i8** @script_continue, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
