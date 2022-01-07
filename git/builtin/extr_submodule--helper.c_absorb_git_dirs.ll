; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_absorb_git_dirs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_absorb_git_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_list = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 8
@ABSORB_GITDIR_RECURSE_SUBMODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"path into the working tree\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"--recursive\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"recurse into submodules\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"git submodule--helper absorb-git-dirs [<options>] [<path>...]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @absorb_git_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @absorb_git_dirs(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.option], align 4
  %13 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 16, i1 false)
  %15 = load i32, i32* @ABSORB_GITDIR_RECURSE_SUBMODULES, align 4
  store i32 %15, i32* %11, align 4
  %16 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %17 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i8* @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, i8* %17, i8* %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %22 = call i8* @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* @ABSORB_GITDIR_RECURSE_SUBMODULES, align 4
  %24 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %11, i8* %22, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %27 = call i32 (...) @OPT_END()
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %30 = call i8* @N_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i64 0, i64 0
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %37 = call i32 @parse_options(i32 %32, i8** %33, i8* %34, %struct.option* %35, i8** %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @module_list_compute(i32 %38, i8** %39, i8* %40, %struct.pathspec* %9, %struct.module_list* %10)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %65

44:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %8, align 4
  %47 = getelementptr inbounds %struct.module_list, %struct.module_list* %10, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.module_list, %struct.module_list* %10, i32 0, i32 1
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @absorb_git_dir_into_superproject(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %45

64:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i8*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_BIT(i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i32 @absorb_git_dir_into_superproject(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
