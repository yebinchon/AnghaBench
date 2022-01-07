; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfInput_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfInput_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args = common dso_local global i32* null, align 8
@joy = common dso_local global i32 0, align 4
@script_start_ptr = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_IfInput_b() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** @script_cmd_args, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @joy, align 4
  %6 = load i32, i32* %1, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %0
  %10 = load i64, i64* @script_start_ptr, align 8
  %11 = load i32*, i32** @script_cmd_args, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 256
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %10, %15
  %17 = load i32*, i32** @script_cmd_args, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  store i64 %21, i64* @script_ptr, align 8
  br label %27

22:                                               ; preds = %0
  %23 = load i64, i64* @script_cmd_args_len, align 8
  %24 = add nsw i64 1, %23
  %25 = load i64, i64* @script_ptr, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* @script_ptr, align 8
  br label %27

27:                                               ; preds = %22, %9
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
