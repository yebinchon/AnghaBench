; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_check_term_format.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_check_term_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"refs/bisect/%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"'%s' is not a valid term\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"replay\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"terms\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"can't use the builtin command '%s' as a term\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"can't change the meaning of the term '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_term_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_term_format(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @xstrfmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @check_refname_format(i8* %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @free(i8* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @error(i32 %17, i8* %18)
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 (i8*, i8*, i8*, i8*, ...) @one_of(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @error(i32 %25, i8* %26)
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 (i8*, i8*, i8*, i8*, ...) @one_of(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 (i8*, i8*, i8*, i8*, ...) @one_of(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* null)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %32
  %45 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @error(i32 %45, i8* %46)
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %40, %36
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %44, %24, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i32 @check_refname_format(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @one_of(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
