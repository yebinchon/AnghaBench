; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ClearFlag_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ClearFlag_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@script_variables = common dso_local global i32* null, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ClearFlag_b() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** @script_cmd_args, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = mul nsw i32 %4, 256
  %6 = load i32*, i32** @script_cmd_args, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %5, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %1, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32*, i32** @script_variables, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i64, i64* @script_cmd_args_len, align 8
  %16 = add nsw i64 1, %15
  %17 = load i32, i32* @script_ptr, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @script_ptr, align 4
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
