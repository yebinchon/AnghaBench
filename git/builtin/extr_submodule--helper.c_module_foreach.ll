; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_foreach.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_foreach = type { i32, i8**, i8*, i32, i32 }
%struct.module_list = type { i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@CB_FOREACH_INIT = common dso_local global %struct.cb_foreach zeroinitializer, align 8
@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 4
@.str = private unnamed_addr constant [51 x i8] c"Suppress output of entering each submodule command\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recurse into nested submodules\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"git submodule--helper foreach [--quiet] [--recursive] [--] <command>\00", align 1
@runcommand_in_submodule_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_foreach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_foreach(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cb_foreach, align 8
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 4
  %11 = alloca [3 x %struct.option], align 4
  %12 = alloca [2 x i8*], align 16
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = bitcast %struct.cb_foreach* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.cb_foreach* @CB_FOREACH_INIT to i8*), i64 32, i1 false)
  %14 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 4, i1 false)
  %15 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %11, i64 0, i64 0
  %16 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %8, i32 0, i32 4
  %17 = call i8* @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @OPT__QUIET(i32* %16, i8* %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %21 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %8, i32 0, i32 3
  %22 = call i8* @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %21, i8* %22)
  %24 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %20, i64 1
  %26 = call i32 (...) @OPT_END()
  %27 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %29 = call i8* @N_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* null, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %11, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %36 = call i32 @parse_options(i32 %31, i8** %32, i8* %33, %struct.option* %34, i8** %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @module_list_compute(i32 0, i32* null, i8* %37, %struct.pathspec* %9, %struct.module_list* %10)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %50

41:                                               ; preds = %3
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %8, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %8, i32 0, i32 1
  store i8** %44, i8*** %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds %struct.cb_foreach, %struct.cb_foreach* %8, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @runcommand_in_submodule_cb, align 4
  %49 = call i32 @for_each_listed_submodule(%struct.module_list* %10, i32 %48, %struct.cb_foreach* %8)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %40
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__QUIET(i32*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @module_list_compute(i32, i32*, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i32 @for_each_listed_submodule(%struct.module_list*, i32, %struct.cb_foreach*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
