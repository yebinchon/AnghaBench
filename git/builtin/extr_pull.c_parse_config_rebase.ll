; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pull.c_parse_config_rebase.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pull.c_parse_config_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REBASE_FALSE = common dso_local global i32 0, align 4
@REBASE_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@REBASE_PRESERVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"merges\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@REBASE_MERGES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@REBASE_INTERACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Invalid value for %s: %s\00", align 1
@REBASE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @parse_config_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config_rebase(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @git_parse_maybe_bool(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @REBASE_FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %69

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @REBASE_TRUE, align 4
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @REBASE_PRESERVE, align 4
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @REBASE_MERGES, align 4
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @REBASE_INTERACTIVE, align 4
  store i32 %49, i32* %4, align 4
  br label %69

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @die(i32 %58, i8* %59, i8* %60)
  br label %67

62:                                               ; preds = %54
  %63 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @error(i32 %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @REBASE_INVALID, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %48, %38, %28, %18, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @die(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
