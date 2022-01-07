; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_git_commit_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_git_commit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"commit.template\00", align 1
@template_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"commit.status\00", align 1
@include_status = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"commit.cleanup\00", align 1
@cleanup_arg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"commit.gpgsign\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sign_commit = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"commit.verbose\00", align 1
@config_commit_verbose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_commit_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_commit_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wt_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.wt_status*
  store %struct.wt_status* %12, %struct.wt_status** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_config_pathname(i32* @template_file, i8* %17, i8* %18)
  store i32 %19, i32* %4, align 4
  br label %68

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @git_config_bool(i8* %25, i8* %26)
  store i64 %27, i64* @include_status, align 8
  store i32 0, i32* %4, align 4
  br label %68

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @git_config_string(i32* @cleanup_arg, i8* %33, i8* %34)
  store i32 %35, i32* %4, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @git_config_bool(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* null
  store i8* %46, i8** @sign_commit, align 8
  store i32 0, i32* %4, align 4
  br label %68

47:                                               ; preds = %36
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @git_config_bool_or_int(i8* %52, i8* %53, i32* %10)
  store i32 %54, i32* @config_commit_verbose, align 4
  store i32 0, i32* %4, align 4
  br label %68

55:                                               ; preds = %47
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @git_gpg_config(i8* %56, i8* %57, i32* null)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %55
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %67 = call i32 @git_status_config(i8* %64, i8* %65, %struct.wt_status* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %61, %51, %40, %32, %24, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_pathname(i32*, i8*, i8*) #1

declare dso_local i64 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_bool_or_int(i8*, i8*, i32*) #1

declare dso_local i32 @git_gpg_config(i8*, i8*, i32*) #1

declare dso_local i32 @git_status_config(i8*, i8*, %struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
