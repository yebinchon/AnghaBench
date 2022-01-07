; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_parse_branch_merge_options.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_parse_branch_merge_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Bad branch.%s.mergeoptions string: %s\00", align 1
@branch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"branch.*.mergeoptions\00", align 1
@builtin_merge_options = common dso_local global i32 0, align 4
@builtin_merge_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_branch_merge_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_branch_merge_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @split_cmdline(i8* %9, i8*** %3)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @branch, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @split_cmdline_strerror(i32 %16)
  %18 = call i32 @_(i8* %17)
  %19 = call i32 @die(i32 %14, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %13, %8
  %21 = load i8**, i8*** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i32 @REALLOC_ARRAY(i8** %21, i32 %23)
  %25 = load i8**, i8*** %3, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8**, i8*** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @MOVE_ARRAY(i8** %26, i8** %27, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load i8**, i8*** %3, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %3, align 8
  %37 = load i32, i32* @builtin_merge_options, align 4
  %38 = load i32, i32* @builtin_merge_usage, align 4
  %39 = call i32 @parse_options(i32 %35, i8** %36, i32* null, i32 %37, i32 %38, i32 0)
  %40 = load i8**, i8*** %3, align 8
  %41 = call i32 @free(i8** %40)
  br label %42

42:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @split_cmdline(i8*, i8***) #1

declare dso_local i32 @die(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @split_cmdline_strerror(i32) #1

declare dso_local i32 @REALLOC_ARRAY(i8**, i32) #1

declare dso_local i32 @MOVE_ARRAY(i8**, i8**, i32) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, i32, i32, i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
