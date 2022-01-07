; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_sync.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_cb = type { i8*, i32 }
%struct.module_list = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@SYNC_CB_INIT = common dso_local global %struct.sync_cb zeroinitializer, align 8
@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 4
@.str = private unnamed_addr constant [47 x i8] c"Suppress output of synchronizing submodule url\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recurse into nested submodules\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"git submodule--helper sync [--quiet] [--recursive] [<path>]\00", align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@OPT_RECURSIVE = common dso_local global i32 0, align 4
@sync_submodule_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_sync(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sync_cb, align 8
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x %struct.option], align 4
  %14 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = bitcast %struct.sync_cb* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.sync_cb* @SYNC_CB_INIT to i8*), i64 16, i1 false)
  %16 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %13, i64 0, i64 0
  %18 = call i8* @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @OPT__QUIET(i32* %11, i8* %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %22 = call i8* @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %12, i8* %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %26 = call i32 (...) @OPT_END()
  %27 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %29 = call i8* @N_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* null, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %13, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %36 = call i32 @parse_options(i32 %31, i8** %32, i8* %33, %struct.option* %34, i8** %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @module_list_compute(i32 %37, i8** %38, i8* %39, %struct.pathspec* %9, %struct.module_list* %10)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

43:                                               ; preds = %3
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.sync_cb, %struct.sync_cb* %8, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @OPT_QUIET, align 4
  %50 = getelementptr inbounds %struct.sync_cb, %struct.sync_cb* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @OPT_RECURSIVE, align 4
  %58 = getelementptr inbounds %struct.sync_cb, %struct.sync_cb* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* @sync_submodule_cb, align 4
  %63 = call i32 @for_each_listed_submodule(%struct.module_list* %10, i32 %62, %struct.sync_cb* %8)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %42
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i32 @for_each_listed_submodule(%struct.module_list*, i32, %struct.sync_cb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
