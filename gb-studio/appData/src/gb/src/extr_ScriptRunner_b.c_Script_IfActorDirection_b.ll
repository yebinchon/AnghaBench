; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfActorDirection_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfActorDirection_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@actors = common dso_local global %struct.TYPE_4__* null, align 8
@script_actor = common dso_local global i64 0, align 8
@script_cmd_args = common dso_local global i32* null, align 8
@script_start_ptr = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_IfActorDirection_b() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %2 = load i64, i64* @script_actor, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i64 %2
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32*, i32** @script_cmd_args, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %52, label %13

13:                                               ; preds = %8, %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %15 = load i64, i64* @script_actor, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32*, i32** @script_cmd_args, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %52, label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %28 = load i64, i64* @script_actor, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32*, i32** @script_cmd_args, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %52, label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %41 = load i64, i64* @script_actor, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = load i32*, i32** @script_cmd_args, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %65

52:                                               ; preds = %47, %34, %21, %8
  %53 = load i64, i64* @script_start_ptr, align 8
  %54 = load i32*, i32** @script_cmd_args, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 256
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %53, %58
  %60 = load i32*, i32** @script_cmd_args, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %59, %63
  store i64 %64, i64* @script_ptr, align 8
  br label %70

65:                                               ; preds = %47, %39
  %66 = load i64, i64* @script_cmd_args_len, align 8
  %67 = add nsw i64 1, %66
  %68 = load i64, i64* @script_ptr, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* @script_ptr, align 8
  br label %70

70:                                               ; preds = %65, %52
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
