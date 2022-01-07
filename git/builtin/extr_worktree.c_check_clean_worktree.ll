; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_check_clean_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_check_clean_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.worktree = type { i32 }
%struct.child_process = type { i32, i32, i32, i32, i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s=%s/.git\00", align 1
@GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--porcelain\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"--ignore-submodules=none\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to run 'git status' on '%s'\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"'%s' contains modified or untracked files, use --force to delete it\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"failed to run 'git status' on '%s', code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worktree*, i8*)* @check_clean_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_clean_worktree(%struct.worktree* %0, i8* %1) #0 {
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.argv_array, align 4
  %6 = alloca %struct.child_process, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.worktree* %0, %struct.worktree** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.argv_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.worktree*, %struct.worktree** %3, align 8
  %11 = call i32 @validate_no_submodules(%struct.worktree* %10)
  %12 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %13 = load %struct.worktree*, %struct.worktree** %3, align 8
  %14 = getelementptr inbounds %struct.worktree, %struct.worktree* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @argv_array_pushf(%struct.argv_array* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %18 = load %struct.worktree*, %struct.worktree** %3, align 8
  %19 = getelementptr inbounds %struct.worktree, %struct.worktree* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @argv_array_pushf(%struct.argv_array* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20)
  %22 = call i32 @memset(%struct.child_process* %6, i32 0, i32 20)
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 4
  %24 = call i32 @argv_array_pushl(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %25 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.worktree*, %struct.worktree** %3, align 8
  %30 = getelementptr inbounds %struct.worktree, %struct.worktree* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = call i32 @start_command(%struct.child_process* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, ...) @die_errno(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %2
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %45 = call i32 @xread(i32 %43, i8* %44, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = call i32 @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @die(i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %41
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close(i32 %54)
  %56 = call i32 @finish_command(%struct.child_process* %6)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @die_errno(i32 %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @validate_no_submodules(%struct.worktree*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32, i32) #2

declare dso_local i32 @memset(%struct.child_process*, i32, i32) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @die_errno(i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @xread(i32, i8*, i32) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
