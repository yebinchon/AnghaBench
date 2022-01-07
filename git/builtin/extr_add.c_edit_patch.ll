; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_add.c_edit_patch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_add.c_edit_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i8** }
%struct.rev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ADD_EDIT.patch\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--recount\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@git_diff_basic_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not read the index\00", align 1
@the_repository = common dso_local global i32 0, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Could not open '%s' for writing.\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Could not write patch\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"editing patch failed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Could not stat '%s'\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Empty patch. Aborted.\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Could not apply '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @edit_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_patch(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [5 x i8*], align 16
  %9 = alloca %struct.child_process, align 8
  %10 = alloca %struct.rev_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = call i8* @git_pathdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false)
  %15 = bitcast i8* %14 to [5 x i8*]*
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 16
  %19 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 3
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @git_diff_basic_config, align 4
  %23 = call i32 @git_config(i32 %22, i32* null)
  %24 = call i64 (...) @read_cache()
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 (i32, ...) @die(i32 %27)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* @the_repository, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @repo_init_revisions(i32 %30, %struct.rev_info* %10, i8* %31)
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 7, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @setup_revisions(i32 %35, i8** %36, %struct.rev_info* %10, i32* null)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %39 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @O_CREAT, align 4
  %48 = load i32, i32* @O_WRONLY, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @O_TRUNC, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @open(i8* %46, i32 %51, i32 438)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %29
  %56 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32, ...) @die(i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %29
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @xfdopen(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = call i64 @run_diff_files(%struct.rev_info* %10, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %70 = call i32 (i32, ...) @die(i32 %69)
  br label %71

71:                                               ; preds = %68, %59
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @launch_editor(i8* %72, i32* null, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %77 = call i32 (i32, ...) @die(i32 %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @stat(i8* %79, %struct.stat* %12)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @die_errno(i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %92 = call i32 (i32, ...) @die(i32 %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 0
  %96 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i8** %95, i8*** %96, align 8
  %97 = call i64 @run_command(%struct.child_process* %9)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 (i32, ...) @die(i32 %100, i8* %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @unlink(i8* %104)
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @free(i8* %106)
  ret i32 0
}

declare dso_local i8* @git_pathdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, i32*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @xfdopen(i32, i8*) #1

declare dso_local i64 @run_diff_files(%struct.rev_info*, i32) #1

declare dso_local i64 @launch_editor(i8*, i32*, i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i64 @run_command(%struct.child_process*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
