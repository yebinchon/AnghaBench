; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_list_compute.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_list_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.pathspec = type { i64 }
%struct.module_list = type { i64, %struct.cache_entry**, i32 }

@PATHSPEC_PREFER_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, %struct.pathspec*, %struct.module_list*)* @module_list_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_list_compute(i32 %0, i8** %1, i8* %2, %struct.pathspec* %3, %struct.module_list* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pathspec*, align 8
  %10 = alloca %struct.module_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cache_entry*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.pathspec* %3, %struct.pathspec** %9, align 8
  store %struct.module_list* %4, %struct.module_list** %10, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %15 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %16 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8**, i8*** %7, align 8
  %19 = call i32 @parse_pathspec(%struct.pathspec* %15, i32 0, i32 %16, i8* %17, i8** %18)
  %20 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %21 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %26 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @xcalloc(i64 %27, i32 1)
  store i8* %28, i8** %13, align 8
  br label %29

29:                                               ; preds = %24, %5
  %30 = call i64 (...) @read_cache()
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @die(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %109, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @active_nr, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %112

40:                                               ; preds = %36
  %41 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %41, i64 %43
  %45 = load %struct.cache_entry*, %struct.cache_entry** %44, align 8
  store %struct.cache_entry* %45, %struct.cache_entry** %14, align 8
  %46 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %47 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %51 = call i32 @ce_namelen(%struct.cache_entry* %50)
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @match_pathspec(i32* @the_index, %struct.pathspec* %46, i32 %49, i32 %51, i32 0, i8* %52, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @S_ISGITLINK(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55, %40
  br label %109

62:                                               ; preds = %55
  %63 = load %struct.module_list*, %struct.module_list** %10, align 8
  %64 = getelementptr inbounds %struct.module_list, %struct.module_list* %63, i32 0, i32 1
  %65 = load %struct.cache_entry**, %struct.cache_entry*** %64, align 8
  %66 = load %struct.module_list*, %struct.module_list** %10, align 8
  %67 = getelementptr inbounds %struct.module_list, %struct.module_list* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.module_list*, %struct.module_list** %10, align 8
  %71 = getelementptr inbounds %struct.module_list, %struct.module_list* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ALLOC_GROW(%struct.cache_entry** %65, i64 %69, i32 %72)
  %74 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %75 = load %struct.module_list*, %struct.module_list** %10, align 8
  %76 = getelementptr inbounds %struct.module_list, %struct.module_list* %75, i32 0, i32 1
  %77 = load %struct.cache_entry**, %struct.cache_entry*** %76, align 8
  %78 = load %struct.module_list*, %struct.module_list** %10, align 8
  %79 = getelementptr inbounds %struct.module_list, %struct.module_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %77, i64 %80
  store %struct.cache_entry* %74, %struct.cache_entry** %82, align 8
  br label %83

83:                                               ; preds = %105, %62
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* @active_nr, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %90 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %92, i64 %95
  %97 = load %struct.cache_entry*, %struct.cache_entry** %96, align 8
  %98 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strcmp(i32 %91, i32 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %88, %83
  %104 = phi i1 [ false, %83 ], [ %102, %88 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %83

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %61
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %36

112:                                              ; preds = %36
  %113 = load i8*, i8** %13, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.pathspec*, %struct.pathspec** %9, align 8
  %118 = call i64 @report_path_error(i8* %116, %struct.pathspec* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 -1, i32* %12, align 4
  br label %121

121:                                              ; preds = %120, %115, %112
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* %12, align 4
  ret i32 %124
}

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #1

declare dso_local i8* @xcalloc(i64, i32) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @match_pathspec(i32*, %struct.pathspec*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.cache_entry**, i64, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @report_path_error(i8*, %struct.pathspec*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
