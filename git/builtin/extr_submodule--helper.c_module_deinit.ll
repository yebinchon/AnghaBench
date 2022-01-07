; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_deinit.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deinit_cb = type { i8*, i32 }
%struct.module_list = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@DEINIT_CB_INIT = common dso_local global %struct.deinit_cb zeroinitializer, align 8
@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Suppress submodule status output\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Remove submodule working trees even if they contain local changes\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unregister all submodules\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"git submodule deinit [--quiet] [-f | --force] [--all | [--] [<path>...]]\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"pathspec and --all are incompatible\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Use '--all' if you really want to deinitialize all submodules\00", align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@OPT_FORCE = common dso_local global i32 0, align 4
@deinit_submodule_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_deinit(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.deinit_cb, align 8
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x %struct.option], align 16
  %15 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = bitcast %struct.deinit_cb* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.deinit_cb* @DEINIT_CB_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %14, i64 0, i64 0
  %19 = call i8* @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @OPT__QUIET(i32* %11, i8* %19)
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %23 = call i8* @N_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @OPT__FORCE(i32* %12, i8* %23, i32 0)
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %27 = call i8* @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %13, i8* %27)
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %31 = call i32 (...) @OPT_END()
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %34 = call i8* @N_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* null, i8** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %14, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %41 = call i32 @parse_options(i32 %36, i8** %37, i8* %38, %struct.option* %39, i8** %40, i32 0)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 0
  %50 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %14, i64 0, i64 0
  %51 = call i32 @usage_with_options(i8** %49, %struct.option* %50)
  br label %52

52:                                               ; preds = %47, %44, %3
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @die(i32 %59)
  br label %61

61:                                               ; preds = %58, %55, %52
  %62 = load i32, i32* %5, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @module_list_compute(i32 %62, i8** %63, i8* %64, %struct.pathspec* %9, %struct.module_list* %10)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %89

68:                                               ; preds = %61
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds %struct.deinit_cb, %struct.deinit_cb* %8, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @OPT_QUIET, align 4
  %75 = getelementptr inbounds %struct.deinit_cb, %struct.deinit_cb* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* @OPT_FORCE, align 4
  %83 = getelementptr inbounds %struct.deinit_cb, %struct.deinit_cb* %8, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* @deinit_submodule_cb, align 4
  %88 = call i32 @for_each_listed_submodule(%struct.module_list* %10, i32 %87, %struct.deinit_cb* %8)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %67
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT__FORCE(i32*, i8*, i32) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i32 @for_each_listed_submodule(%struct.module_list*, i32, %struct.deinit_cb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
