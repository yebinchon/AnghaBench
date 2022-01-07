; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_StackPush_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_StackPush_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_ptr = common dso_local global i32 0, align 4
@script_stack = common dso_local global i32* null, align 8
@script_stack_ptr = common dso_local global i64 0, align 8
@script_start_ptr = common dso_local global i32 0, align 4
@script_start_stack = common dso_local global i32* null, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_StackPush_b() #0 {
  %1 = load i32, i32* @script_ptr, align 4
  %2 = load i32*, i32** @script_stack, align 8
  %3 = load i64, i64* @script_stack_ptr, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @script_start_ptr, align 4
  %6 = load i32*, i32** @script_start_stack, align 8
  %7 = load i64, i64* @script_stack_ptr, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %5, i32* %8, align 4
  %9 = load i64, i64* @script_cmd_args_len, align 8
  %10 = add nsw i64 1, %9
  %11 = load i32*, i32** @script_stack, align 8
  %12 = load i64, i64* @script_stack_ptr, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %10
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* @script_stack_ptr, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @script_stack_ptr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
