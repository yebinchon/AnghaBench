; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorSetPosToVal_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorSetPosToVal_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@actors = common dso_local global %struct.TYPE_4__* null, align 8
@script_actor = common dso_local global i64 0, align 8
@script_variables = common dso_local global i32* null, align 8
@script_ptr_x = common dso_local global i64 0, align 8
@script_ptr_y = common dso_local global i64 0, align 8
@ACTOR_MAX_Y = common dso_local global i32 0, align 4
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ActorSetPosToVal_b() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %2 = load i64, i64* @script_actor, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i64 %2
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** @script_variables, align 8
  %7 = load i64, i64* @script_ptr_x, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 3
  %11 = add nsw i32 %10, 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %13 = load i64, i64* @script_actor, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %18 = load i64, i64* @script_actor, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** @script_variables, align 8
  %23 = load i64, i64* @script_ptr_y, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 3
  %27 = add nsw i32 %26, 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %29 = load i64, i64* @script_actor, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load i32*, i32** @script_variables, align 8
  %34 = load i64, i64* @script_ptr_y, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 31
  br i1 %37, label %38, label %45

38:                                               ; preds = %0
  %39 = load i32, i32* @ACTOR_MAX_Y, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %41 = load i64, i64* @script_actor, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %0
  %46 = load i64, i64* @script_cmd_args_len, align 8
  %47 = add nsw i64 1, %46
  %48 = load i32, i32* @script_ptr, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @script_ptr, align 4
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
