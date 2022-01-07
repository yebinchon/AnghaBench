; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorSetPos_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorSetPos_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@actors = common dso_local global %struct.TYPE_4__* null, align 8
@script_actor = common dso_local global i64 0, align 8
@script_cmd_args = common dso_local global i32* null, align 8
@ACTOR_MAX_Y = common dso_local global i32 0, align 4
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ActorSetPos_b() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %2 = load i64, i64* @script_actor, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i64 %2
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** @script_cmd_args, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 3
  %10 = add nsw i32 %9, 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %12 = load i64, i64* @script_actor, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %10, i32* %15, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %17 = load i64, i64* @script_actor, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** @script_cmd_args, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 3
  %25 = add nsw i32 %24, 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %27 = load i64, i64* @script_actor, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 4
  %31 = load i32*, i32** @script_cmd_args, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 31
  br i1 %34, label %35, label %42

35:                                               ; preds = %0
  %36 = load i32, i32* @ACTOR_MAX_Y, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %38 = load i64, i64* @script_actor, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %0
  %43 = load i64, i64* @script_cmd_args_len, align 8
  %44 = add nsw i64 1, %43
  %45 = load i32, i32* @script_ptr, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @script_ptr, align 4
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
