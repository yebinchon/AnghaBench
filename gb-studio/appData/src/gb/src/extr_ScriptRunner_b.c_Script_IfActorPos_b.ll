; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfActorPos_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfActorPos_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@script_cmd_args = common dso_local global i32* null, align 8
@actors = common dso_local global %struct.TYPE_4__* null, align 8
@script_actor = common dso_local global i64 0, align 8
@script_start_ptr = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_IfActorPos_b() #0 {
  %1 = load i32*, i32** @script_cmd_args, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 3
  %5 = add nsw i32 %4, 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %7 = load i64, i64* @script_actor, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %5, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %0
  %14 = load i32*, i32** @script_cmd_args, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 3
  %18 = add nsw i32 %17, 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %20 = load i64, i64* @script_actor, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %13
  %27 = load i64, i64* @script_start_ptr, align 8
  %28 = load i32*, i32** @script_cmd_args, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 256
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %27, %32
  %34 = load i32*, i32** @script_cmd_args, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  store i64 %38, i64* @script_ptr, align 8
  br label %44

39:                                               ; preds = %13, %0
  %40 = load i64, i64* @script_cmd_args_len, align 8
  %41 = add nsw i64 1, %40
  %42 = load i64, i64* @script_ptr, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* @script_ptr, align 8
  br label %44

44:                                               ; preds = %39, %26
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
