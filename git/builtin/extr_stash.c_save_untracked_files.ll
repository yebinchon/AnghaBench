; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_save_untracked_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_save_untracked_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.child_process = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stash_info = type { i32, i32 }
%struct.index_state = type { i32* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"--add\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--remove\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"GIT_INDEX_FILE=%s\00", align 1
@stash_index_path = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"untracked files on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stash_info*, %struct.strbuf*, i64)* @save_untracked_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_untracked_files(%struct.stash_info* %0, %struct.strbuf* %1, i64 %2) #0 {
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.stash_info*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.child_process, align 4
  %10 = alloca %struct.index_state, align 8
  %11 = bitcast %struct.strbuf* %4 to i64*
  store i64 %2, i64* %11, align 4
  store %struct.stash_info* %0, %struct.stash_info** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %13 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %14 = bitcast %struct.index_state* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 8, i1 false)
  %15 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 2
  %17 = call i32 @argv_array_pushl(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %20 = call i32 @argv_array_pushf(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %19)
  %21 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pipe_command(%struct.child_process* %9, i32 %26, i32 %28, i32* null, i32 0, i32* null, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %52

32:                                               ; preds = %3
  %33 = load %struct.stash_info*, %struct.stash_info** %5, align 8
  %34 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %33, i32 0, i32 1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %36 = call i64 @write_index_as_tree(i32* %34, %struct.index_state* %10, i32 %35, i32 0, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %7, align 4
  br label %52

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stash_info*, %struct.stash_info** %5, align 8
  %45 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %44, i32 0, i32 1
  %46 = load %struct.stash_info*, %struct.stash_info** %5, align 8
  %47 = getelementptr inbounds %struct.stash_info, %struct.stash_info* %46, i32 0, i32 0
  %48 = call i64 @commit_tree(i32 %41, i32 %43, i32* %45, i32* null, i32* %47, i32* null, i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %50, %38, %31
  %53 = call i32 @discard_index(%struct.index_state* %10)
  %54 = call i32 @strbuf_release(%struct.strbuf* %8)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stash_index_path, i32 0, i32 0), align 4
  %56 = call i32 @remove_path(i32 %55)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @pipe_command(%struct.child_process*, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @write_index_as_tree(i32*, %struct.index_state*, i32, i32, i32*) #2

declare dso_local i64 @commit_tree(i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @discard_index(%struct.index_state*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @remove_path(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
