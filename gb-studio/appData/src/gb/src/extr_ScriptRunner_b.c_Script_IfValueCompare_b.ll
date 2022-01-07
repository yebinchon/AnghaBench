; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfValueCompare_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfValueCompare_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_variables = common dso_local global i32* null, align 8
@script_ptr_x = common dso_local global i64 0, align 8
@script_ptr_y = common dso_local global i64 0, align 8
@script_cmd_args = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@script_start_ptr = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_IfValueCompare_b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @script_variables, align 8
  %5 = load i64, i64* @script_ptr_x, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32*, i32** @script_variables, align 8
  %9 = load i64, i64* @script_ptr_y, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** @script_cmd_args, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %45 [
    i32 133, label %15
    i32 130, label %20
    i32 129, label %25
    i32 132, label %30
    i32 131, label %35
    i32 128, label %40
  ]

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %47

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %1, align 4
  br label %47

25:                                               ; preds = %0
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %1, align 4
  br label %47

30:                                               ; preds = %0
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp sgt i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %1, align 4
  br label %47

35:                                               ; preds = %0
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp sge i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %1, align 4
  br label %47

40:                                               ; preds = %0
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %1, align 4
  br label %47

45:                                               ; preds = %0
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %1, align 4
  br label %47

47:                                               ; preds = %45, %40, %35, %30, %25, %20, %15
  %48 = load i32, i32* %1, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i64, i64* @script_start_ptr, align 8
  %52 = load i32*, i32** @script_cmd_args, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 256
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %51, %56
  %58 = load i32*, i32** @script_cmd_args, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  store i64 %62, i64* @script_ptr, align 8
  br label %68

63:                                               ; preds = %47
  %64 = load i64, i64* @script_cmd_args_len, align 8
  %65 = add nsw i64 1, %64
  %66 = load i64, i64* @script_ptr, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* @script_ptr, align 8
  br label %68

68:                                               ; preds = %63, %50
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
