; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_list = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i8*, i32 }
%struct.pathspec = type { i32 }
%struct.option = type { i32 }

@MODULE_LIST_INIT = common dso_local global %struct.module_list zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"alternative anchor for relative paths\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"git submodule--helper list [--prefix=<path>] [<path>...]\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%06o %s U\09\00", align 1
@null_oid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%06o %s %d\09\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_list(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pathspec, align 4
  %10 = alloca %struct.module_list, align 8
  %11 = alloca [2 x %struct.option], align 4
  %12 = alloca [2 x i8*], align 16
  %13 = alloca %struct.cache_entry*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.module_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.module_list* @MODULE_LIST_INIT to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %11, i64 0, i64 0
  %16 = call i8* @N_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i8* @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7, i8* %16, i8* %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %24 = call i8* @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* null, i8** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
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
  br label %80

38:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %76, %38
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.module_list, %struct.module_list* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.module_list, %struct.module_list* %10, i32 0, i32 1
  %46 = load %struct.cache_entry**, %struct.cache_entry*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %46, i64 %48
  %50 = load %struct.cache_entry*, %struct.cache_entry** %49, align 8
  store %struct.cache_entry* %50, %struct.cache_entry** %13, align 8
  %51 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %52 = call i32 @ce_stage(%struct.cache_entry* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @oid_to_hex(i32* @null_oid)
  %59 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %57, i8* %58)
  br label %70

60:                                               ; preds = %44
  %61 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 2
  %66 = call i8* @oid_to_hex(i32* %65)
  %67 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %68 = call i32 @ce_stage(%struct.cache_entry* %67)
  %69 = call i32 (i8*, i32, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %63, i8* %66, i32 %68)
  br label %70

70:                                               ; preds = %60, %54
  %71 = load i32, i32* @stdout, align 4
  %72 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %73 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %39

79:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i8*, i8*) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i64 @module_list_compute(i32, i8**, i8*, %struct.pathspec*, %struct.module_list*) #2

declare dso_local i32 @ce_stage(%struct.cache_entry*) #2

declare dso_local i32 @printf(i8*, i32, i8*, ...) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
