; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_init.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_cb = type { i8*, i32 }
%struct.module_list = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@INIT_CB_INIT = common dso_local global %struct.init_cb zeroinitializer, align 8
@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"Suppress output for initializing a submodule\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"git submodule--helper init [<options>] [<path>]\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"submodule.active\00", align 1
@OPT_QUIET = common dso_local global i32 0, align 4
@init_submodule_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_init(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.init_cb, align 8
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.option], align 4
  %13 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.init_cb* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.init_cb* @INIT_CB_INIT to i8*), i64 16, i1 false)
  %15 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %12, i64 0, i64 0
  %17 = call i8* @N_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OPT__QUIET(i32* %11, i8* %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %24 = call i8* @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* null, i8** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %12, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %31 = call i32 @parse_options(i32 %26, i8** %27, i8* %28, %struct.option* %29, i8** %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @module_list_compute(i32 %32, i8** %33, i8* %34, %struct.pathspec* %9, %struct.module_list* %10)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %59

38:                                               ; preds = %3
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = call i64 @git_config_get_value_multi(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @module_list_active(%struct.module_list* %10)
  br label %46

46:                                               ; preds = %44, %41, %38
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds %struct.init_cb, %struct.init_cb* %8, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @OPT_QUIET, align 4
  %53 = getelementptr inbounds %struct.init_cb, %struct.init_cb* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @init_submodule_cb, align 4
  %58 = call i32 @for_each_listed_submodule(%struct.module_list* %10, i32 %57, %struct.init_cb* %8)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i64 @git_config_get_value_multi(i8*) #2

declare dso_local i32 @module_list_active(%struct.module_list*) #2

declare dso_local i32 @for_each_listed_submodule(%struct.module_list*, i32, %struct.init_cb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
