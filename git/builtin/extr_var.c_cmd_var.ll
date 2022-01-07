; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_var.c_cmd_var.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_var.c_cmd_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@var_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@show_config = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_var(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @var_usage, align 4
  %13 = call i32 @usage(i32 %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @show_config, align 4
  %22 = call i32 @git_config(i32 %21, i32* null)
  %23 = call i32 (...) @list_vars()
  store i32 0, i32* %4, align 4
  br label %39

24:                                               ; preds = %14
  %25 = load i32, i32* @git_default_config, align 4
  %26 = call i32 @git_config(i32 %25, i32* null)
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @read_var(i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @var_usage, align 4
  %35 = call i32 @usage(i32 %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @usage(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @list_vars(...) #1

declare dso_local i8* @read_var(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
