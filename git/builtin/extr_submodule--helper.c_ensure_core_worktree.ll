; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_ensure_core_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_ensure_core_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule = type { i32 }
%struct.repository = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"submodule--helper ensure-core-worktree <path>\00", align 1
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"We could get the submodule handle before?\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"could not get a repository handle for submodule '%s'\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @ensure_core_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_core_worktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.submodule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.repository, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* @the_repository, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.submodule* @submodule_from_path(i32 %23, i32* @null_oid, i8* %24)
  store %struct.submodule* %25, %struct.submodule** %7, align 8
  %26 = load %struct.submodule*, %struct.submodule** %7, align 8
  %27 = icmp ne %struct.submodule* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i32, i32* @the_repository, align 4
  %32 = load %struct.submodule*, %struct.submodule** %7, align 8
  %33 = call i64 @repo_submodule_init(%struct.repository* %10, i32 %31, %struct.submodule* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @die(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = call i32 @repo_config_get_string(%struct.repository* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %44 = call i8* @repo_git_path(%struct.repository* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @absolute_pathdup(i8* %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @relative_path(i8* %47, i32 %49, %struct.strbuf* %14)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @git_config_set_in_file(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @free(i8* %56)
  %58 = call i32 @strbuf_release(%struct.strbuf* %14)
  br label %59

59:                                               ; preds = %42, %39
  ret i32 0
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #1

declare dso_local i64 @repo_submodule_init(%struct.repository*, i32, %struct.submodule*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @repo_config_get_string(%struct.repository*, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @repo_git_path(%struct.repository*, i8*) #1

declare dso_local i8* @absolute_pathdup(i8*) #1

declare dso_local i8* @relative_path(i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @git_config_set_in_file(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
