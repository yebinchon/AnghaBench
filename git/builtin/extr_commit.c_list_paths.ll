; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_list_paths.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_list_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.string_list = type { i32 }
%struct.pathspec = type { i32 }
%struct.string_list_item = type { %struct.string_list_item* }

@the_index = common dso_local global i32 0, align 4
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@CE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i8*, %struct.pathspec*)* @list_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_paths(%struct.string_list* %0, i8* %1, %struct.pathspec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pathspec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cache_entry*, align 8
  %13 = alloca %struct.string_list_item*, align 8
  store %struct.string_list* %0, %struct.string_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pathspec* %2, %struct.pathspec** %7, align 8
  %14 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %15 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %21 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @xcalloc(i32 1, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %28 = call i8* @common_prefix(%struct.pathspec* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @overlay_tree_on_index(i32* @the_index, i8* %29, i8* %30)
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @free(i8* %32)
  br label %34

34:                                               ; preds = %26, %19
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @active_nr, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %40, i64 %42
  %44 = load %struct.cache_entry*, %struct.cache_entry** %43, align 8
  store %struct.cache_entry* %44, %struct.cache_entry** %12, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CE_UPDATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %73

52:                                               ; preds = %39
  %53 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %54 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @ce_path_match(i32* @the_index, %struct.cache_entry* %53, %struct.pathspec* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %73

59:                                               ; preds = %52
  %60 = load %struct.string_list*, %struct.string_list** %5, align 8
  %61 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %60, i32 %63)
  store %struct.string_list_item* %64, %struct.string_list_item** %13, align 8
  %65 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %66 = call i64 @ce_skip_worktree(%struct.cache_entry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.string_list_item*, %struct.string_list_item** %13, align 8
  %70 = load %struct.string_list_item*, %struct.string_list_item** %13, align 8
  %71 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %70, i32 0, i32 0
  store %struct.string_list_item* %69, %struct.string_list_item** %71, align 8
  br label %72

72:                                               ; preds = %68, %59
  br label %73

73:                                               ; preds = %72, %58, %51
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %35

76:                                               ; preds = %35
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.pathspec*, %struct.pathspec** %7, align 8
  %79 = call i32 @report_path_error(i8* %77, %struct.pathspec* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i8* @common_prefix(%struct.pathspec*) #1

declare dso_local i32 @overlay_tree_on_index(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ce_path_match(i32*, %struct.cache_entry*, %struct.pathspec*, i8*) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i32 @report_path_error(i8*, %struct.pathspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
