; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_unlock_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_unlock_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.worktree = type { i32 }

@worktree_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"'%s' is not a working tree\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"The main working tree cannot be locked or unlocked\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"'%s' is not locked\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"worktrees/%s/locked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @unlock_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_worktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.option], align 4
  %8 = alloca %struct.worktree**, align 8
  %9 = alloca %struct.worktree*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %7, i64 0, i64 0
  %12 = call i32 (...) @OPT_END()
  %13 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %7, i64 0, i64 0
  %18 = load i32, i32* @worktree_usage, align 4
  %19 = call i32 @parse_options(i32 %14, i8** %15, i8* %16, %struct.option* %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @worktree_usage, align 4
  %24 = getelementptr inbounds [1 x %struct.option], [1 x %struct.option]* %7, i64 0, i64 0
  %25 = call i32 @usage_with_options(i32 %23, %struct.option* %24)
  br label %26

26:                                               ; preds = %22, %3
  %27 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %27, %struct.worktree*** %8, align 8
  %28 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.worktree* @find_worktree(%struct.worktree** %28, i8* %29, i8* %32)
  store %struct.worktree* %33, %struct.worktree** %9, align 8
  %34 = load %struct.worktree*, %struct.worktree** %9, align 8
  %35 = icmp ne %struct.worktree* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, ...) @die(i32 %37, i8* %40)
  br label %42

42:                                               ; preds = %36, %26
  %43 = load %struct.worktree*, %struct.worktree** %9, align 8
  %44 = call i64 @is_main_worktree(%struct.worktree* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (i32, ...) @die(i32 %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.worktree*, %struct.worktree** %9, align 8
  %51 = call i32 @worktree_lock_reason(%struct.worktree* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, ...) @die(i32 %54, i8* %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.worktree*, %struct.worktree** %9, align 8
  %61 = getelementptr inbounds %struct.worktree, %struct.worktree* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @git_common_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = call i32 @unlink_or_warn(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %66 = call i32 @free_worktrees(%struct.worktree** %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local %struct.worktree* @find_worktree(%struct.worktree**, i8*, i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @is_main_worktree(%struct.worktree*) #1

declare dso_local i32 @worktree_lock_reason(%struct.worktree*) #1

declare dso_local i32 @unlink_or_warn(i32) #1

declare dso_local i32 @git_common_path(i8*, i32) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
