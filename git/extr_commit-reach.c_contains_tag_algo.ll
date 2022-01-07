; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_contains_tag_algo.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_contains_tag_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i64 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.contains_cache = type { i32 }
%struct.contains_stack = type { i32, %struct.contains_stack_entry*, i32*, i32, i32 }
%struct.contains_stack_entry = type { %struct.commit_list*, %struct.commit* }

@GENERATION_NUMBER_INFINITY = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit_list*, %struct.contains_cache*)* @contains_tag_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_tag_algo(%struct.commit* %0, %struct.commit_list* %1, %struct.contains_cache* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.contains_cache*, align 8
  %8 = alloca %struct.contains_stack, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.contains_stack_entry*, align 8
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %5, align 8
  store %struct.commit_list* %1, %struct.commit_list** %6, align 8
  store %struct.contains_cache* %2, %struct.contains_cache** %7, align 8
  %16 = bitcast %struct.contains_stack* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i64, i64* @GENERATION_NUMBER_INFINITY, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %18, %struct.commit_list** %11, align 8
  br label %19

19:                                               ; preds = %39, %3
  %20 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %21 = icmp ne %struct.commit_list* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 0
  %25 = load %struct.commit*, %struct.commit** %24, align 8
  store %struct.commit* %25, %struct.commit** %12, align 8
  %26 = load i32, i32* @the_repository, align 4
  %27 = load %struct.commit*, %struct.commit** %12, align 8
  %28 = call i32 @load_commit_graph_info(i32 %26, %struct.commit* %27)
  %29 = load %struct.commit*, %struct.commit** %12, align 8
  %30 = getelementptr inbounds %struct.commit, %struct.commit* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.commit*, %struct.commit** %12, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %34, %22
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %41 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %40, i32 0, i32 1
  %42 = load %struct.commit_list*, %struct.commit_list** %41, align 8
  store %struct.commit_list* %42, %struct.commit_list** %11, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.commit*, %struct.commit** %5, align 8
  %45 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %46 = load %struct.contains_cache*, %struct.contains_cache** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @contains_test(%struct.commit* %44, %struct.commit_list* %45, %struct.contains_cache* %46, i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 129
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %120

53:                                               ; preds = %43
  %54 = load %struct.commit*, %struct.commit** %5, align 8
  %55 = call i32 @push_to_contains_stack(%struct.commit* %54, %struct.contains_stack* %8)
  br label %56

56:                                               ; preds = %110, %53
  %57 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %111

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 1
  %62 = load %struct.contains_stack_entry*, %struct.contains_stack_entry** %61, align 8
  %63 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.contains_stack_entry, %struct.contains_stack_entry* %62, i64 %66
  store %struct.contains_stack_entry* %67, %struct.contains_stack_entry** %13, align 8
  %68 = load %struct.contains_stack_entry*, %struct.contains_stack_entry** %13, align 8
  %69 = getelementptr inbounds %struct.contains_stack_entry, %struct.contains_stack_entry* %68, i32 0, i32 1
  %70 = load %struct.commit*, %struct.commit** %69, align 8
  store %struct.commit* %70, %struct.commit** %14, align 8
  %71 = load %struct.contains_stack_entry*, %struct.contains_stack_entry** %13, align 8
  %72 = getelementptr inbounds %struct.contains_stack_entry, %struct.contains_stack_entry* %71, i32 0, i32 0
  %73 = load %struct.commit_list*, %struct.commit_list** %72, align 8
  store %struct.commit_list* %73, %struct.commit_list** %15, align 8
  %74 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %75 = icmp ne %struct.commit_list* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %60
  %77 = load %struct.contains_cache*, %struct.contains_cache** %7, align 8
  %78 = load %struct.commit*, %struct.commit** %14, align 8
  %79 = call i32* @contains_cache_at(%struct.contains_cache* %77, %struct.commit* %78)
  store i32 130, i32* %79, align 4
  %80 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 8
  br label %110

83:                                               ; preds = %60
  %84 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %85 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %84, i32 0, i32 0
  %86 = load %struct.commit*, %struct.commit** %85, align 8
  %87 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %88 = load %struct.contains_cache*, %struct.contains_cache** %7, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @contains_test(%struct.commit* %86, %struct.commit_list* %87, %struct.contains_cache* %88, i64 %89)
  switch i32 %90, label %109 [
    i32 128, label %91
    i32 130, label %98
    i32 129, label %104
  ]

91:                                               ; preds = %83
  %92 = load %struct.contains_cache*, %struct.contains_cache** %7, align 8
  %93 = load %struct.commit*, %struct.commit** %14, align 8
  %94 = call i32* @contains_cache_at(%struct.contains_cache* %92, %struct.commit* %93)
  store i32 128, i32* %94, align 4
  %95 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  br label %109

98:                                               ; preds = %83
  %99 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %100 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %99, i32 0, i32 1
  %101 = load %struct.commit_list*, %struct.commit_list** %100, align 8
  %102 = load %struct.contains_stack_entry*, %struct.contains_stack_entry** %13, align 8
  %103 = getelementptr inbounds %struct.contains_stack_entry, %struct.contains_stack_entry* %102, i32 0, i32 0
  store %struct.commit_list* %101, %struct.commit_list** %103, align 8
  br label %109

104:                                              ; preds = %83
  %105 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %106 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %105, i32 0, i32 0
  %107 = load %struct.commit*, %struct.commit** %106, align 8
  %108 = call i32 @push_to_contains_stack(%struct.commit* %107, %struct.contains_stack* %8)
  br label %109

109:                                              ; preds = %83, %104, %98, %91
  br label %110

110:                                              ; preds = %109, %76
  br label %56

111:                                              ; preds = %56
  %112 = getelementptr inbounds %struct.contains_stack, %struct.contains_stack* %8, i32 0, i32 1
  %113 = load %struct.contains_stack_entry*, %struct.contains_stack_entry** %112, align 8
  %114 = call i32 @free(%struct.contains_stack_entry* %113)
  %115 = load %struct.commit*, %struct.commit** %5, align 8
  %116 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %117 = load %struct.contains_cache*, %struct.contains_cache** %7, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @contains_test(%struct.commit* %115, %struct.commit_list* %116, %struct.contains_cache* %117, i64 %118)
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %111, %51
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @load_commit_graph_info(i32, %struct.commit*) #2

declare dso_local i32 @contains_test(%struct.commit*, %struct.commit_list*, %struct.contains_cache*, i64) #2

declare dso_local i32 @push_to_contains_stack(%struct.commit*, %struct.contains_stack*) #2

declare dso_local i32* @contains_cache_at(%struct.contains_cache*, %struct.commit*) #2

declare dso_local i32 @free(%struct.contains_stack_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
