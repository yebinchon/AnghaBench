; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_finish.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.commit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.commit_list = type { i32 }
%struct.diff_options = type { i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"GIT_REFLOG_ACTION\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@squash = common dso_local global i64 0, align 8
@merge_msg = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"No merge message -- not updating HEAD\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--auto\00", align 1
@__const.finish.argv_gc_auto = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@the_repository = common dso_local global %struct.TYPE_6__* null, align 8
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@show_diffstat = common dso_local global i64 0, align 8
@DIFF_FORMAT_SUMMARY = common dso_local global i32 0, align 4
@DIFF_FORMAT_DIFFSTAT = common dso_local global i32 0, align 4
@DIFF_DETECT_RENAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"post-merge\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit_list*, %struct.object_id*, i8*)* @finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish(%struct.commit* %0, %struct.commit_list* %1, %struct.object_id* %2, i8* %3) #0 {
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca %struct.diff_options, align 4
  store %struct.commit* %0, %struct.commit** %5, align 8
  store %struct.commit_list* %1, %struct.commit_list** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load %struct.commit*, %struct.commit** %5, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.object_id* %16, %struct.object_id** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = call i32 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @strbuf_addstr(%struct.strbuf* %9, i32 %20)
  br label %32

22:                                               ; preds = %4
  %23 = load i64, i64* @verbosity, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i32 @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i64, i64* @squash, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.commit*, %struct.commit** %5, align 8
  %37 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %38 = call i32 @squash_message(%struct.commit* %36, %struct.commit_list* %37)
  br label %64

39:                                               ; preds = %32
  %40 = load i64, i64* @verbosity, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @merge_msg, i32 0, i32 0), align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  br label %63

48:                                               ; preds = %42, %39
  %49 = bitcast [3 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([3 x i8*]* @__const.finish.argv_gc_auto to i8*), i64 24, i1 false)
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.object_id*, %struct.object_id** %7, align 8
  %53 = load %struct.object_id*, %struct.object_id** %10, align 8
  %54 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %55 = call i32 @update_ref(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.object_id* %52, %struct.object_id* %53, i32 0, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close_object_store(i32 %58)
  %60 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %61 = load i32, i32* @RUN_GIT_CMD, align 4
  %62 = call i32 @run_command_v_opt(i8** %60, i32 %61)
  br label %63

63:                                               ; preds = %48, %45
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.object_id*, %struct.object_id** %7, align 8
  %66 = icmp ne %struct.object_id* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load i64, i64* @show_diffstat, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %72 = call i32 @repo_diff_setup(%struct.TYPE_6__* %71, %struct.diff_options* %12)
  %73 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %12, i32 0, i32 0
  store i32 -1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %12, i32 0, i32 1
  store i32 -1, i32* %74, align 4
  %75 = load i32, i32* @DIFF_FORMAT_SUMMARY, align 4
  %76 = load i32, i32* @DIFF_FORMAT_DIFFSTAT, align 4
  %77 = or i32 %75, %76
  %78 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %12, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @DIFF_DETECT_RENAME, align 4
  %82 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %12, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = call i32 @diff_setup_done(%struct.diff_options* %12)
  %84 = load %struct.object_id*, %struct.object_id** %10, align 8
  %85 = load %struct.object_id*, %struct.object_id** %7, align 8
  %86 = call i32 @diff_tree_oid(%struct.object_id* %84, %struct.object_id* %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %struct.diff_options* %12)
  %87 = call i32 @diffcore_std(%struct.diff_options* %12)
  %88 = call i32 @diff_flush(%struct.diff_options* %12)
  br label %89

89:                                               ; preds = %70, %67, %64
  %90 = load i64, i64* @squash, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %94 = call i32 @run_hook_le(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %93, i32* null)
  %95 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @getenv(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i32 @squash_message(%struct.commit*, %struct.commit_list*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @update_ref(i32, i8*, %struct.object_id*, %struct.object_id*, i32, i32) #2

declare dso_local i32 @close_object_store(i32) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

declare dso_local i32 @repo_diff_setup(%struct.TYPE_6__*, %struct.diff_options*) #2

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #2

declare dso_local i32 @diff_tree_oid(%struct.object_id*, %struct.object_id*, i8*, %struct.diff_options*) #2

declare dso_local i32 @diffcore_std(%struct.diff_options*) #2

declare dso_local i32 @diff_flush(%struct.diff_options*) #2

declare dso_local i32 @run_hook_le(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
