; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_TextMulti_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_TextMulti_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args = common dso_local global i32* null, align 8
@text_out_speed = common dso_local global i64 0, align 8
@tmp_text_out_speed = common dso_local global i64 0, align 8
@text_in_speed = common dso_local global i64 0, align 8
@tmp_text_in_speed = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_TextMulti_b() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @script_cmd_args, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @text_out_speed, align 8
  store i64 %8, i64* @tmp_text_out_speed, align 8
  store i64 0, i64* @text_out_speed, align 8
  br label %28

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i64, i64* @text_in_speed, align 8
  store i64 %13, i64* @tmp_text_in_speed, align 8
  store i64 0, i64* @text_in_speed, align 8
  br label %27

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i64, i64* @tmp_text_out_speed, align 8
  store i64 %18, i64* @text_out_speed, align 8
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @tmp_text_in_speed, align 8
  store i64 %23, i64* @text_in_speed, align 8
  %24 = load i64, i64* @tmp_text_out_speed, align 8
  store i64 %24, i64* @text_out_speed, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %26, %12
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i64, i64* @script_cmd_args_len, align 8
  %30 = add nsw i64 1, %29
  %31 = load i32, i32* @script_ptr, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @script_ptr, align 4
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
