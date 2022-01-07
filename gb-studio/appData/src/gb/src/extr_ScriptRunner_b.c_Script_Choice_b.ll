; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_Choice_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_Choice_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@script_cmd_args = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@script_action_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_Choice_b() #0 {
  %1 = load i64, i64* @script_cmd_args_len, align 8
  %2 = add nsw i64 1, %1
  %3 = load i32, i32* @script_ptr, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %2
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* @script_ptr, align 4
  %7 = load i32*, i32** @script_cmd_args, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 256
  %11 = load i32*, i32** @script_cmd_args, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = load i32*, i32** @script_cmd_args, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 256
  %19 = load i32*, i32** @script_cmd_args, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = call i32 @UIShowChoice(i32 %14, i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* @script_action_complete, align 4
  ret void
}

declare dso_local i32 @UIShowChoice(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
