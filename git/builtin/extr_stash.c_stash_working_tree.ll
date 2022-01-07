; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_stash_working_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_stash_working_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.strbuf = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.stash_info = type { i32, i32, i32 }
%struct.pathspec = type { i32 }
%struct.rev_info = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.strbuf*, i32, i32 }
%struct.index_state = type { i32* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stash_index_path = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@add_diff_to_buf = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"--ignore-skip-worktree-entries\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"--add\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--remove\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"GIT_INDEX_FILE=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stash_info*, %struct.pathspec*)* @stash_working_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stash_working_tree(%struct.stash_info* %0, %struct.pathspec* %1) #0 {
  %3 = alloca %struct.stash_info*, align 8
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info, align 8
  %7 = alloca %struct.child_process, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.index_state, align 8
  store %struct.stash_info* %0, %struct.stash_info** %3, align 8
  store %struct.pathspec* %1, %struct.pathspec** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.index_state* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = call i32 @init_revisions(%struct.rev_info* %6, i32* null)
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %15 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %16 = call i32 @copy_pathspec(i32* %14, %struct.pathspec* %15)
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stash_index_path, i32 0, i32 0), align 8
  %18 = call i32 @set_alternate_index_output(i32* %17)
  %19 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %20 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %19, i32 0, i32 2
  %21 = call i64 @reset_tree(i32* %20, i32 0, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %70

24:                                               ; preds = %2
  %25 = call i32 @set_alternate_index_output(i32* null)
  %26 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %27 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @add_diff_to_buf, align 4
  %30 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.strbuf* %8, %struct.strbuf** %33, align 8
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i64 @read_cache_preload(i32* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %70

39:                                               ; preds = %24
  %40 = load i32, i32* @the_repository, align 4
  %41 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %42 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %41, i32 0, i32 1
  %43 = call i32 @parse_object(i32 %40, i32* %42)
  %44 = call i32 @add_pending_object(%struct.rev_info* %6, i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %45 = call i64 @run_diff_index(%struct.rev_info* %6, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %70

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  %51 = call i32 @argv_array_pushl(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %52 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stash_index_path, i32 0, i32 0), align 8
  %54 = call i32 @argv_array_pushf(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %53)
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @pipe_command(%struct.child_process* %7, i32 %56, i32 %58, i32* null, i32 0, i32* null, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %70

62:                                               ; preds = %48
  %63 = load %struct.stash_info*, %struct.stash_info** %3, align 8
  %64 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %63, i32 0, i32 0
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stash_index_path, i32 0, i32 0), align 8
  %66 = call i64 @write_index_as_tree(i32* %64, %struct.index_state* %9, i32* %65, i32 0, i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %5, align 4
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %68, %61, %47, %38, %23
  %71 = call i32 @discard_index(%struct.index_state* %9)
  %72 = call i32 @UNLEAK(%struct.rev_info* byval(%struct.rev_info) align 8 %6)
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 1
  %74 = call i32 @object_array_clear(i32* %73)
  %75 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  %76 = call i32 @clear_pathspec(i32* %75)
  %77 = call i32 @strbuf_release(%struct.strbuf* %8)
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stash_index_path, i32 0, i32 0), align 8
  %79 = call i32 @remove_path(i32* %78)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_revisions(%struct.rev_info*, i32*) #2

declare dso_local i32 @copy_pathspec(i32*, %struct.pathspec*) #2

declare dso_local i32 @set_alternate_index_output(i32*) #2

declare dso_local i64 @reset_tree(i32*, i32, i32) #2

declare dso_local i64 @read_cache_preload(i32*) #2

declare dso_local i32 @add_pending_object(%struct.rev_info*, i32, i8*) #2

declare dso_local i32 @parse_object(i32, i32*) #2

declare dso_local i64 @run_diff_index(%struct.rev_info*, i32) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32*) #2

declare dso_local i64 @pipe_command(%struct.child_process*, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @write_index_as_tree(i32*, %struct.index_state*, i32*, i32, i32*) #2

declare dso_local i32 @discard_index(%struct.index_state*) #2

declare dso_local i32 @UNLEAK(%struct.rev_info* byval(%struct.rev_info) align 8) #2

declare dso_local i32 @object_array_clear(i32*) #2

declare dso_local i32 @clear_pathspec(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @remove_path(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
