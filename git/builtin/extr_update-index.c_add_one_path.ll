; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_add_one_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_add_one_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@the_index = common dso_local global i32 0, align 4
@info_only = common dso_local global i64 0, align 8
@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@allow_add = common dso_local global i64 0, align 8
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@allow_replace = common dso_local global i64 0, align 8
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: cannot add to the index - missing --add option?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, i8*, i32, %struct.stat*)* @add_one_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_one_path(%struct.cache_entry* %0, i8* %1, i32 %2, %struct.stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.stat* %3, %struct.stat** %9, align 8
  %12 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %13 = icmp ne %struct.cache_entry* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %16 = call i32 @ce_stage(%struct.cache_entry* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %20 = load %struct.stat*, %struct.stat** %9, align 8
  %21 = call i32 @ce_match_stat(%struct.cache_entry* %19, %struct.stat* %20, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %92

24:                                               ; preds = %18, %14, %4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.cache_entry* @make_empty_cache_entry(i32* @the_index, i32 %25)
  store %struct.cache_entry* %26, %struct.cache_entry** %11, align 8
  %27 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @memcpy(i32 %29, i8* %30, i32 %31)
  %33 = call i32 @create_ce_flags(i32 0)
  %34 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %35 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %40 = load %struct.stat*, %struct.stat** %9, align 8
  %41 = call i32 @fill_stat_cache_info(i32* @the_index, %struct.cache_entry* %39, %struct.stat* %40)
  %42 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %43 = load %struct.stat*, %struct.stat** %9, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ce_mode_from_stat(%struct.cache_entry* %42, i32 %45)
  %47 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %50 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %49, i32 0, i32 1
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.stat*, %struct.stat** %9, align 8
  %53 = load i64, i64* @info_only, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %58

56:                                               ; preds = %24
  %57 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 0, %55 ], [ %57, %56 ]
  %60 = call i64 @index_path(i32* @the_index, i32* %50, i8* %51, %struct.stat* %52, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %64 = call i32 @discard_cache_entry(%struct.cache_entry* %63)
  store i32 -1, i32* %5, align 4
  br label %92

65:                                               ; preds = %58
  %66 = load i64, i64* @allow_add, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  store i32 %72, i32* %10, align 4
  %73 = load i64, i64* @allow_replace, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  br label %78

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @add_cache_entry(%struct.cache_entry* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %88 = call i32 @discard_cache_entry(%struct.cache_entry* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %86, %62, %23
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ce_match_stat(%struct.cache_entry*, %struct.stat*, i32) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @fill_stat_cache_info(i32*, %struct.cache_entry*, %struct.stat*) #1

declare dso_local i32 @ce_mode_from_stat(%struct.cache_entry*, i32) #1

declare dso_local i64 @index_path(i32*, i32*, i8*, %struct.stat*, i32) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i64 @add_cache_entry(%struct.cache_entry*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
