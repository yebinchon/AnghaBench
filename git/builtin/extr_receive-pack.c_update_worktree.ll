; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_update_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@git_work_tree_cfg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"denyCurrentBranch = updateInstead needs a worktree\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"GIT_DIR=%s\00", align 1
@push_to_checkout_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @update_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @update_worktree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.argv_array, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** @git_work_tree_cfg, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** @git_work_tree_cfg, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %11 ]
  store i8* %13, i8** %5, align 8
  %14 = bitcast %struct.argv_array* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %15 = call i64 (...) @is_bare_repository()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %36

18:                                               ; preds = %12
  %19 = call i32 (...) @get_git_dir()
  %20 = call i32 @absolute_path(i32 %19)
  %21 = call i32 @argv_array_pushf(%struct.argv_array* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @push_to_checkout_hook, align 4
  %23 = call i32 @find_hook(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @push_to_deploy(i8* %26, %struct.argv_array* %6, i8* %27)
  store i8* %28, i8** %4, align 8
  br label %33

29:                                               ; preds = %18
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @push_to_checkout(i8* %30, %struct.argv_array* %6, i8* %31)
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = call i32 @argv_array_clear(%struct.argv_array* %6)
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %33, %17
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_bare_repository(...) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #2

declare dso_local i32 @absolute_path(i32) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @find_hook(i32) #2

declare dso_local i8* @push_to_deploy(i8*, %struct.argv_array*, i8*) #2

declare dso_local i8* @push_to_checkout(i8*, %struct.argv_array*, i8*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
