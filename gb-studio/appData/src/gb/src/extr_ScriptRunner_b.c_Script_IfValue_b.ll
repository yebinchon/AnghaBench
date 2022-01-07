; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfValue_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_IfValue_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args = common dso_local global i32* null, align 8
@script_variables = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@script_start_ptr = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_IfValue_b() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @script_cmd_args, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %6, 256
  %8 = load i32*, i32** @script_cmd_args, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %7, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load i32*, i32** @script_variables, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %1, align 4
  %17 = load i32*, i32** @script_cmd_args, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %62 [
    i32 133, label %20
    i32 130, label %27
    i32 129, label %34
    i32 132, label %41
    i32 131, label %48
    i32 128, label %55
  ]

20:                                               ; preds = %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32*, i32** @script_cmd_args, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %0
  %28 = load i32, i32* %1, align 4
  %29 = load i32*, i32** @script_cmd_args, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %64

34:                                               ; preds = %0
  %35 = load i32, i32* %1, align 4
  %36 = load i32*, i32** @script_cmd_args, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %64

41:                                               ; preds = %0
  %42 = load i32, i32* %1, align 4
  %43 = load i32*, i32** @script_cmd_args, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %64

48:                                               ; preds = %0
  %49 = load i32, i32* %1, align 4
  %50 = load i32*, i32** @script_cmd_args, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %49, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %0
  %56 = load i32, i32* %1, align 4
  %57 = load i32*, i32** @script_cmd_args, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %0
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %55, %48, %41, %34, %27, %20
  %65 = load i32, i32* %2, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i64, i64* @script_start_ptr, align 8
  %69 = load i32*, i32** @script_cmd_args, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 256
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %68, %73
  %75 = load i32*, i32** @script_cmd_args, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  store i64 %79, i64* @script_ptr, align 8
  br label %85

80:                                               ; preds = %64
  %81 = load i64, i64* @script_cmd_args_len, align 8
  %82 = add nsw i64 1, %81
  %83 = load i64, i64* @script_ptr, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* @script_ptr, align 8
  br label %85

85:                                               ; preds = %80, %67
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
