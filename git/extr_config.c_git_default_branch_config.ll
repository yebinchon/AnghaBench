; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_git_default_branch_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_git_default_branch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"branch.autosetupmerge\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@BRANCH_TRACK_ALWAYS = common dso_local global i32 0, align 4
@git_branch_track = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"branch.autosetuprebase\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@AUTOREBASE_NEVER = common dso_local global i32 0, align 4
@autorebase = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@AUTOREBASE_LOCAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@AUTOREBASE_REMOTE = common dso_local global i32 0, align 4
@AUTOREBASE_ALWAYS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"malformed value for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @git_default_branch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_default_branch_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @BRANCH_TRACK_ALWAYS, align 4
  store i32 %17, i32* @git_branch_track, align 4
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %12, %9
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @git_config_bool(i8* %19, i8* %20)
  store i32 %21, i32* @git_branch_track, align 4
  store i32 0, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @config_error_nonbool(i8* %30)
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @AUTOREBASE_NEVER, align 4
  store i32 %37, i32* @autorebase, align 4
  br label %63

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @AUTOREBASE_LOCAL, align 4
  store i32 %43, i32* @autorebase, align 4
  br label %62

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @AUTOREBASE_REMOTE, align 4
  store i32 %49, i32* @autorebase, align 4
  br label %61

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @AUTOREBASE_ALWAYS, align 4
  store i32 %55, i32* @autorebase, align 4
  br label %60

56:                                               ; preds = %50
  %57 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @error(i32 %57, i8* %58)
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %36
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %56, %29, %18, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
