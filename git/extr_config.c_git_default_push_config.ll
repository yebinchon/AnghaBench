; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_default_push_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_default_push_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"push.default\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nothing\00", align 1
@PUSH_DEFAULT_NOTHING = common dso_local global i32 0, align 4
@push_default = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"matching\00", align 1
@PUSH_DEFAULT_MATCHING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@PUSH_DEFAULT_SIMPLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@PUSH_DEFAULT_UPSTREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"tracking\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@PUSH_DEFAULT_CURRENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"malformed value for %s: %s\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"must be one of nothing, matching, simple, upstream or current\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @git_default_push_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_default_push_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @config_error_nonbool(i8* %13)
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @PUSH_DEFAULT_NOTHING, align 4
  store i32 %20, i32* @push_default, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @PUSH_DEFAULT_MATCHING, align 4
  store i32 %26, i32* @push_default, align 4
  br label %62

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @PUSH_DEFAULT_SIMPLE, align 4
  store i32 %32, i32* @push_default, align 4
  br label %61

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @PUSH_DEFAULT_UPSTREAM, align 4
  store i32 %38, i32* @push_default, align 4
  br label %60

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @PUSH_DEFAULT_UPSTREAM, align 4
  store i32 %44, i32* @push_default, align 4
  br label %59

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @PUSH_DEFAULT_CURRENT, align 4
  store i32 %50, i32* @push_default, align 4
  br label %58

51:                                               ; preds = %45
  %52 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (i32, ...) @error(i32 %52, i8* %53, i8* %54)
  %56 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %57 = call i32 (i32, ...) @error(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %31
  br label %62

62:                                               ; preds = %61, %25
  br label %63

63:                                               ; preds = %62, %19
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %51, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
