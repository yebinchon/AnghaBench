; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_print_preparing_worktree_line.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_print_preparing_worktree_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Preparing worktree (new branch '%s')\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Preparing worktree (resetting branch '%s'; was at %s)\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Preparing worktree (checking out '%s')\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid reference: %s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Preparing worktree (detached HEAD %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32)* @print_preparing_worktree_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_preparing_worktree_line(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.commit*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.commit* @lookup_commit_reference_by_name(i8* %15)
  store %struct.commit* %16, %struct.commit** %9, align 8
  %17 = load %struct.commit*, %struct.commit** %9, align 8
  %18 = icmp ne %struct.commit* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (i32, i8*, ...) @printf_ln(i32 %20, i8* %21)
  br label %32

23:                                               ; preds = %14
  %24 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.commit*, %struct.commit** %9, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @DEFAULT_ABBREV, align 4
  %30 = call i8* @find_unique_abbrev(i32* %28, i32 %29)
  %31 = call i32 (i32, i8*, ...) @printf_ln(i32 %24, i8* %25, i8* %30)
  br label %32

32:                                               ; preds = %23, %19
  br label %77

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (i32, i8*, ...) @printf_ln(i32 %37, i8* %38)
  br label %76

40:                                               ; preds = %33
  %41 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strbuf_check_branch_ref(%struct.strbuf* %10, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ref_exists(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i32, i8*, ...) @printf_ln(i32 %54, i8* %55)
  br label %74

57:                                               ; preds = %48, %44, %40
  %58 = load i8*, i8** %6, align 8
  %59 = call %struct.commit* @lookup_commit_reference_by_name(i8* %58)
  store %struct.commit* %59, %struct.commit** %11, align 8
  %60 = load %struct.commit*, %struct.commit** %11, align 8
  %61 = icmp ne %struct.commit* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @die(i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.commit*, %struct.commit** %11, align 8
  %69 = getelementptr inbounds %struct.commit, %struct.commit* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* @DEFAULT_ABBREV, align 4
  %72 = call i8* @find_unique_abbrev(i32* %70, i32 %71)
  %73 = call i32 (i32, i8*, ...) @printf_ln(i32 %67, i8* %72)
  br label %74

74:                                               ; preds = %66, %53
  %75 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %76

76:                                               ; preds = %74, %36
  br label %77

77:                                               ; preds = %76, %32
  ret void
}

declare dso_local %struct.commit* @lookup_commit_reference_by_name(i8*) #1

declare dso_local i32 @printf_ln(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @find_unique_abbrev(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_check_branch_ref(%struct.strbuf*, i8*) #1

declare dso_local i64 @ref_exists(i32) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
