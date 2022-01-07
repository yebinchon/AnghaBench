; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_status.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_cb = type { i8*, i32 }
%struct.module_list = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@STATUS_CB_INIT = common dso_local global %struct.status_cb zeroinitializer, align 8
@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"Suppress submodule status output\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Use commit stored in the index instead of the one stored in the submodule HEAD\00", align 1
@OPT_CACHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"recurse into nested submodules\00", align 1
@OPT_RECURSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"git submodule status [--quiet] [--cached] [--recursive] [<path>...]\00", align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@status_submodule_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_status(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.status_cb, align 8
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.option], align 16
  %13 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.status_cb* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.status_cb* @STATUS_CB_INIT to i8*), i64 16, i1 false)
  %15 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %17 = call i8* @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OPT__QUIET(i32* %11, i8* %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = getelementptr inbounds %struct.status_cb, %struct.status_cb* %8, i32 0, i32 1
  %22 = call i8* @N_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @OPT_CACHED, align 4
  %24 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %21, i8* %22, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %27 = getelementptr inbounds %struct.status_cb, %struct.status_cb* %8, i32 0, i32 1
  %28 = call i8* @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @OPT_RECURSIVE, align 4
  %30 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %33 = call i32 (...) @OPT_END()
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %36 = call i8* @N_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  store i8* %36, i8** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8* null, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %43 = call i32 @parse_options(i32 %38, i8** %39, i8* %40, %struct.option* %41, i8** %42, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @module_list_compute(i32 %44, i8** %45, i8* %46, %struct.pathspec* %9, %struct.module_list* %10)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %63

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds %struct.status_cb, %struct.status_cb* %8, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @OPT_QUIET, align 4
  %57 = getelementptr inbounds %struct.status_cb, %struct.status_cb* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @status_submodule_cb, align 4
  %62 = call i32 @for_each_listed_submodule(%struct.module_list* %10, i32 %61, %struct.status_cb* %8)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %49
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_BIT(i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i32 @for_each_listed_submodule(%struct.module_list*, i32, %struct.status_cb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
