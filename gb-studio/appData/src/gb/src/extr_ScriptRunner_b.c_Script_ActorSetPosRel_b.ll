; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorSetPosRel_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorSetPosRel_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@script_cmd_args = common dso_local global i32* null, align 8
@actors = common dso_local global %struct.TYPE_4__* null, align 8
@script_actor = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ActorSetPosRel_b() #0 {
  %1 = load i32*, i32** @script_cmd_args, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %0
  %6 = load i32*, i32** @script_cmd_args, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %12 = load i64, i64* @script_actor, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32*, i32** @script_cmd_args, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %16, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %24 = load i64, i64* @script_actor, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 %22, i64* %27, align 8
  br label %46

28:                                               ; preds = %5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %30 = load i64, i64* @script_actor, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** @script_cmd_args, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %42 = load i64, i64* @script_actor, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 %40, i64* %45, align 8
  br label %46

46:                                               ; preds = %28, %10
  br label %47

47:                                               ; preds = %46, %0
  %48 = load i32*, i32** @script_cmd_args, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load i32*, i32** @script_cmd_args, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %59 = load i64, i64* @script_actor, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32*, i32** @script_cmd_args, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %63, %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %71 = load i64, i64* @script_actor, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %69, i64* %74, align 8
  br label %93

75:                                               ; preds = %52
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %77 = load i64, i64* @script_actor, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** @script_cmd_args, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %81, %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %89 = load i64, i64* @script_actor, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 %87, i64* %92, align 8
  br label %93

93:                                               ; preds = %75, %57
  br label %94

94:                                               ; preds = %93, %47
  %95 = load i64, i64* @script_cmd_args_len, align 8
  %96 = add nsw i64 1, %95
  %97 = load i32, i32* @script_ptr, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* @script_ptr, align 4
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
