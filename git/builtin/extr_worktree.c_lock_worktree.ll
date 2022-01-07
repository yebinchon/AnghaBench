; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_lock_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_lock_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.worktree = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"reason for locking\00", align 1
@worktree_usage = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"'%s' is not a working tree\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"The main working tree cannot be locked or unlocked\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"'%s' is already locked, reason: %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"'%s' is already locked\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"worktrees/%s/locked\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @lock_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_worktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %struct.option], align 4
  %10 = alloca %struct.worktree**, align 8
  %11 = alloca %struct.worktree*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %13 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %7, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %18 = call i32 (...) @OPT_END()
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %24 = load i32, i32* @worktree_usage, align 4
  %25 = call i32 @parse_options(i32 %20, i8** %21, i8* %22, %struct.option* %23, i32 %24, i32 0)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @worktree_usage, align 4
  %30 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %31 = call i32 @usage_with_options(i32 %29, %struct.option* %30)
  br label %32

32:                                               ; preds = %28, %3
  %33 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %33, %struct.worktree*** %10, align 8
  %34 = load %struct.worktree**, %struct.worktree*** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call %struct.worktree* @find_worktree(%struct.worktree** %34, i8* %35, i8* %38)
  store %struct.worktree* %39, %struct.worktree** %11, align 8
  %40 = load %struct.worktree*, %struct.worktree** %11, align 8
  %41 = icmp ne %struct.worktree* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, ...) @die(i32 %43, i8* %46)
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.worktree*, %struct.worktree** %11, align 8
  %50 = call i64 @is_main_worktree(%struct.worktree* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 (i32, ...) @die(i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.worktree*, %struct.worktree** %11, align 8
  %57 = call i8* @worktree_lock_reason(%struct.worktree* %56)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i32, ...) @die(i32 %65, i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %64, %60
  %72 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, ...) @die(i32 %72, i8* %75)
  br label %77

77:                                               ; preds = %71, %55
  %78 = load %struct.worktree*, %struct.worktree** %11, align 8
  %79 = getelementptr inbounds %struct.worktree, %struct.worktree* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @git_common_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @write_file(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %82)
  %84 = load %struct.worktree**, %struct.worktree*** %10, align 8
  %85 = call i32 @free_worktrees(%struct.worktree** %84)
  ret i32 0
}

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local %struct.worktree* @find_worktree(%struct.worktree**, i8*, i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @is_main_worktree(%struct.worktree*) #1

declare dso_local i8* @worktree_lock_reason(%struct.worktree*) #1

declare dso_local i32 @write_file(i32, i8*, i8*) #1

declare dso_local i32 @git_common_path(i8*, i32) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
