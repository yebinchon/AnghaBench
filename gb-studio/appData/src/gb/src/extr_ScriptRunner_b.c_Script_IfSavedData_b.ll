; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfSavedData_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfSavedData_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENABLE_RAM = common dso_local global i32 0, align 4
@RAM_START_PTR = common dso_local global i64 0, align 8
@RAMPtr = common dso_local global i64* null, align 8
@TRUE = common dso_local global i64 0, align 8
@DISABLE_RAM = common dso_local global i32 0, align 4
@script_start_ptr = common dso_local global i64 0, align 8
@script_cmd_args = common dso_local global i32* null, align 8
@script_ptr = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_IfSavedData_b() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ENABLE_RAM, align 4
  %3 = load i64, i64* @RAM_START_PTR, align 8
  %4 = inttoptr i64 %3 to i32*
  %5 = bitcast i32* %4 to i64*
  store i64* %5, i64** @RAMPtr, align 8
  store i32 0, i32* %1, align 4
  %6 = load i64*, i64** @RAMPtr, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @DISABLE_RAM, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %0
  %15 = load i64, i64* @script_start_ptr, align 8
  %16 = load i32*, i32** @script_cmd_args, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 256
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %15, %20
  %22 = load i32*, i32** @script_cmd_args, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  store i64 %26, i64* @script_ptr, align 8
  br label %32

27:                                               ; preds = %0
  %28 = load i64, i64* @script_cmd_args_len, align 8
  %29 = add nsw i64 1, %28
  %30 = load i64, i64* @script_ptr, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* @script_ptr, align 8
  br label %32

32:                                               ; preds = %27, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
