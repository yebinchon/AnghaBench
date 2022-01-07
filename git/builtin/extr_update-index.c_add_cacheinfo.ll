; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_add_cacheinfo.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_add_cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.cache_entry = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid path '%s'\00", align 1
@the_index = common dso_local global i32 0, align 4
@assume_unchanged = common dso_local global i64 0, align 8
@CE_VALID = common dso_local global i32 0, align 4
@allow_add = common dso_local global i64 0, align 8
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@allow_replace = common dso_local global i64 0, align 8
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: cannot add to the index - missing --add option?\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"add '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.object_id*, i8*, i32)* @add_cacheinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cacheinfo(i32 %0, %struct.object_id* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_entry*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @verify_path(i8* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %5, align 4
  br label %81

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.cache_entry* @make_empty_cache_entry(i32* @the_index, i32 %23)
  store %struct.cache_entry* %24, %struct.cache_entry** %12, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 4
  %27 = load %struct.object_id*, %struct.object_id** %7, align 8
  %28 = call i32 @oidcpy(i32* %26, %struct.object_id* %27)
  %29 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @memcpy(i32 %31, i8* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @create_ce_flags(i32 %35)
  %37 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @create_ce_mode(i32 %42)
  %44 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* @assume_unchanged, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %20
  %49 = load i32, i32* @CE_VALID, align 4
  %50 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %20
  %55 = load i64, i64* @allow_add, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  br label %60

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* @allow_replace, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  br label %67

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @add_cache_entry(%struct.cache_entry* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %67
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @report(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %75, %17
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @verify_path(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(i32*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i64 @add_cache_entry(%struct.cache_entry*, i32) #1

declare dso_local i32 @report(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
