; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_git_fetch_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_git_fetch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"fetch.prune\00", align 1
@fetch_prune_config = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fetch.prunetags\00", align 1
@fetch_prune_tags_config = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"fetch.showforcedupdates\00", align 1
@fetch_show_forced_updates = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"submodule.recurse\00", align 1
@RECURSE_SUBMODULES_ON = common dso_local global i32 0, align 4
@RECURSE_SUBMODULES_OFF = common dso_local global i32 0, align 4
@recurse_submodules = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"submodule.fetchjobs\00", align 1
@submodule_fetch_jobs_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"fetch.recursesubmodules\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"fetch.parallel\00", align 1
@fetch_parallel_config = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"fetch.parallel cannot be negative\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_fetch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_fetch_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @git_config_bool(i8* %13, i8* %14)
  store i8* %15, i8** @fetch_prune_config, align 8
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @git_config_bool(i8* %21, i8* %22)
  store i8* %23, i8** @fetch_prune_tags_config, align 8
  store i32 0, i32* %4, align 4
  br label %84

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @git_config_bool(i8* %29, i8* %30)
  store i8* %31, i8** @fetch_show_forced_updates, align 8
  store i32 0, i32* %4, align 4
  br label %84

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @git_config_bool(i8* %37, i8* %38)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @RECURSE_SUBMODULES_ON, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @RECURSE_SUBMODULES_OFF, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* @recurse_submodules, align 4
  br label %48

48:                                               ; preds = %45, %32
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @parse_submodule_fetchjobs(i8* %53, i8* %54)
  store i32 %55, i32* @submodule_fetch_jobs_config, align 4
  store i32 0, i32* %4, align 4
  br label %84

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @parse_fetch_recurse_submodules_arg(i8* %61, i8* %62)
  store i32 %63, i32* @recurse_submodules, align 4
  store i32 0, i32* %4, align 4
  br label %84

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @git_config_int(i8* %70, i8* %71)
  store i64 %72, i64* @fetch_parallel_config, align 8
  %73 = load i64, i64* @fetch_parallel_config, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %77 = call i32 @die(i32 %76)
  br label %78

78:                                               ; preds = %75, %69
  store i32 0, i32* %4, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @git_default_config(i8* %80, i8* %81, i8* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %78, %60, %52, %28, %20, %12
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @parse_submodule_fetchjobs(i8*, i8*) #1

declare dso_local i32 @parse_fetch_recurse_submodules_arg(i8*, i8*) #1

declare dso_local i64 @git_config_int(i8*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
