; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_parse_decoration_style.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_parse_decoration_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECORATE_SHORT_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@DECORATE_FULL_REFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_decoration_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_decoration_style(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @git_parse_maybe_bool(i8* %4)
  switch i32 %5, label %9 [
    i32 1, label %6
    i32 0, label %8
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @DECORATE_SHORT_REFS, align 4
  store i32 %7, i32* %2, align 4
  br label %31

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @DECORATE_FULL_REFS, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @DECORATE_SHORT_REFS, align 4
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 (...) @auto_decoration_style()
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %26, %20, %14, %8, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @auto_decoration_style(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
