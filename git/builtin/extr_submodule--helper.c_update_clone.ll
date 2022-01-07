; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_clone.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_update_clone = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pathspec = type { i64 }
%struct.option = type { i32 }

@SUBMODULE_UPDATE_CLONE_INIT = common dso_local global %struct.submodule_update_clone zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"path into the working tree\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"recursive-prefix\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"path into the working tree, across nested submodule boundaries\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"rebase, merge, checkout or none\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"repo\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"reference repository\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"dissociate\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"use --reference only while cloning\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"<depth>\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"Create a shallow clone truncated to the specified number of revisions\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"jobs\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"parallel jobs\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"recommend-shallow\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"whether the initial clone should follow the shallow recommendation\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"don't print cloning progress\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"force cloning progress\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"git submodule--helper update-clone [--prefix=<path>] [<path>...]\00", align 1
@git_update_clone_config = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"bad value for update parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @update_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_clone(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pathspec, align 8
  %10 = alloca %struct.submodule_update_clone, align 8
  %11 = alloca [11 x %struct.option], align 16
  %12 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = bitcast %struct.submodule_update_clone* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.submodule_update_clone* @SUBMODULE_UPDATE_CLONE_INIT to i8*), i64 64, i1 false)
  %14 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %11, i64 0, i64 0
  %15 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i8* @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, i8* %15, i8* %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %20 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 0
  %21 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i8* @N_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %23 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %20, i8* %21, i8* %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %26 = call i8* @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i8* @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %8, i8* %26, i8* %27)
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %31 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 11
  %32 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %33 = call i8* @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %34 = call i32 @OPT_STRING_LIST(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %31, i8* %32, i8* %33)
  %35 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %37 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 10
  %38 = call i8* @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %39 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %37, i8* %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %42 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 1
  %43 = call i8* @N_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i64 0, i64 0))
  %44 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %47 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 6
  %48 = call i8* @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %49 = call i32 @OPT_INTEGER(i8 signext 106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32* %47, i8* %48)
  %50 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.option, %struct.option* %46, i64 1
  %52 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 9
  %53 = call i8* @N_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0))
  %54 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32* %52, i8* %53)
  %55 = getelementptr inbounds %struct.option, %struct.option* %51, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.option, %struct.option* %51, i64 1
  %57 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 8
  %58 = call i8* @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %59 = call i32 @OPT__QUIET(i32* %57, i8* %58)
  %60 = getelementptr inbounds %struct.option, %struct.option* %56, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.option, %struct.option* %56, i64 1
  %62 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 7
  %63 = call i8* @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %64 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32* %62, i8* %63)
  %65 = getelementptr inbounds %struct.option, %struct.option* %61, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.option, %struct.option* %61, i64 1
  %67 = call i32 (...) @OPT_END()
  %68 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %70 = call i8* @N_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0))
  store i8* %70, i8** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* null, i8** %71, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 6
  %75 = call i32 @update_clone_config_from_gitmodules(i32* %74)
  %76 = load i32, i32* @git_update_clone_config, align 4
  %77 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 6
  %78 = call i32 @git_config(i32 %76, i32* %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i8**, i8*** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %11, i64 0, i64 0
  %83 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %84 = call i32 @parse_options(i32 %79, i8** %80, i8* %81, %struct.option* %82, i8** %83, i32 0)
  store i32 %84, i32* %5, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %3
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 5
  %90 = call i64 @parse_submodule_update_strategy(i8* %88, i32* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  %94 = call i32 @die(i32 %93)
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %3
  %97 = load i32, i32* %5, align 4
  %98 = load i8**, i8*** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 4
  %101 = call i64 @module_list_compute(i32 %97, i8** %98, i8* %99, %struct.pathspec* %9, i32* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %4, align 4
  br label %112

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %9, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %10, i32 0, i32 3
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = call i32 @update_submodules(%struct.submodule_update_clone* %10)
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %103
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i8*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_STRING_LIST(i32, i8*, i32*, i8*, i8*) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_INTEGER(i8 signext, i8*, i32*, i8*) #2

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @update_clone_config_from_gitmodules(i32*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @parse_submodule_update_strategy(i8*, i32*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, i32*) #2

declare dso_local i32 @update_submodules(%struct.submodule_update_clone*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
