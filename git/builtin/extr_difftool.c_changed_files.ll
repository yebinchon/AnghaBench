; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_difftool.c_changed_files.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_difftool.c_changed_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32, i32, i8*, i8**, i32, i64, i32 }
%struct.strbuf = type { i8* }
%struct.hashmap = type { i32 }
%struct.path_entry = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"GIT_INDEX_FILE=%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--work-tree\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"--really-refresh\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--unmerged\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"diff-files\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--name-only\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"could not obtain raw diff\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@path = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"diff-files did not exit properly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, i8*, i8*)* @changed_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @changed_files(%struct.hashmap* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.child_process, align 8
  %8 = alloca %struct.child_process, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i8*], align 16
  %13 = alloca i32*, align 8
  %14 = alloca %struct.path_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 64, i1 false)
  %16 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 64, i1 false)
  %17 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %19 = call i32 (...) @get_git_dir()
  %20 = call i8* @absolute_path(i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 9
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 4
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 5
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 6
  store i8** %39, i8*** %40, align 8
  %41 = call i32 @run_command(%struct.child_process* %7)
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 9
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @argv_array_pushl(i32* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* null)
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 4
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 7
  store i32 -1, i32* %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %54 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  store i8** %53, i8*** %54, align 8
  %55 = call i64 @start_command(%struct.child_process* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %3
  %58 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %3
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32* @xfdopen(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %68, %59
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @strbuf_getline_nul(%struct.strbuf* %10, i32* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.path_entry*, %struct.path_entry** %14, align 8
  %70 = load i32, i32* @path, align 4
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @FLEX_ALLOC_STR(%struct.path_entry* %69, i32 %70, i8* %72)
  %74 = load %struct.path_entry*, %struct.path_entry** %14, align 8
  %75 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strhash(i8* %77)
  %79 = call i32 @hashmap_entry_init(i32* %75, i32 %78)
  %80 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %81 = load %struct.path_entry*, %struct.path_entry** %14, align 8
  %82 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %81, i32 0, i32 0
  %83 = call i32 @hashmap_add(%struct.hashmap* %80, i32* %82)
  br label %63

84:                                               ; preds = %63
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @fclose(i32* %85)
  %87 = call i64 @finish_command(%struct.child_process* %8)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  %92 = call i32 @strbuf_release(%struct.strbuf* %9)
  %93 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @absolute_path(i32) #2

declare dso_local i32 @get_git_dir(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32* @xfdopen(i32, i8*) #2

declare dso_local i32 @strbuf_getline_nul(%struct.strbuf*, i32*) #2

declare dso_local i32 @FLEX_ALLOC_STR(%struct.path_entry*, i32, i8*) #2

declare dso_local i32 @hashmap_entry_init(i32*, i32) #2

declare dso_local i32 @strhash(i8*) #2

declare dso_local i32 @hashmap_add(%struct.hashmap*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
