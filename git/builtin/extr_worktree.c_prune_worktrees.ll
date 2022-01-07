; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_prune_worktrees.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_prune_worktrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.dirent = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"worktrees\00", align 1
@show_only = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prune_worktrees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_worktrees() #0 {
  %1 = alloca %struct.strbuf, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %5 = call i32 @git_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = call i32* @opendir(i32 %5)
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %58

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %44, %43, %29, %21, %10
  %12 = load i32*, i32** %2, align 8
  %13 = call %struct.dirent* @readdir(i32* %12)
  store %struct.dirent* %13, %struct.dirent** %3, align 8
  %14 = icmp ne %struct.dirent* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load %struct.dirent*, %struct.dirent** %3, align 8
  %17 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @is_dot_or_dotdot(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %11

22:                                               ; preds = %15
  %23 = call i32 @strbuf_reset(%struct.strbuf* %1)
  %24 = load %struct.dirent*, %struct.dirent** %3, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @prune_worktree(i32 %26, %struct.strbuf* %1)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %11

30:                                               ; preds = %22
  %31 = load i64, i64* @show_only, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @verbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i64, i64* @show_only, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %11

44:                                               ; preds = %40
  %45 = load %struct.dirent*, %struct.dirent** %3, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @delete_git_dir(i32 %47)
  br label %11

49:                                               ; preds = %11
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @closedir(i32* %50)
  %52 = load i64, i64* @show_only, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 (...) @delete_worktrees_dir_if_empty()
  br label %56

56:                                               ; preds = %54, %49
  %57 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %58

58:                                               ; preds = %56, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @git_path(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @prune_worktree(i32, %struct.strbuf*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @delete_git_dir(i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @delete_worktrees_dir_if_empty(...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
