; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_process_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_process_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"'%s' is beyond a symbolic link\00", align 1
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@ignore_skip_worktree_entries = common dso_local global i32 0, align 4
@allow_remove = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: cannot remove from the index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*, i32)* @process_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_path(i8* %0, %struct.stat* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @has_symlink_leading_path(i8* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cache_name_pos(i8* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %28, i64 %30
  %32 = load %struct.cache_entry*, %struct.cache_entry** %31, align 8
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi %struct.cache_entry* [ null, %26 ], [ %32, %27 ]
  store %struct.cache_entry* %34, %struct.cache_entry** %10, align 8
  %35 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %36 = icmp ne %struct.cache_entry* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %39 = call i64 @ce_skip_worktree(%struct.cache_entry* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* @ignore_skip_worktree_entries, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @allow_remove, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @remove_file_from_cache(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 %53, i32* %4, align 4
  br label %79

54:                                               ; preds = %47, %44, %41
  store i32 0, i32* %4, align 4
  br label %79

55:                                               ; preds = %37, %33
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @process_lstat_error(i8* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %79

62:                                               ; preds = %55
  %63 = load %struct.stat*, %struct.stat** %6, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.stat*, %struct.stat** %6, align 8
  %72 = call i32 @process_directory(i8* %69, i32 %70, %struct.stat* %71)
  store i32 %72, i32* %4, align 4
  br label %79

73:                                               ; preds = %62
  %74 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.stat*, %struct.stat** %6, align 8
  %78 = call i32 @add_one_path(%struct.cache_entry* %74, i8* %75, i32 %76, %struct.stat* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %68, %58, %54, %51, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @has_symlink_leading_path(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @remove_file_from_cache(i8*) #1

declare dso_local i32 @process_lstat_error(i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @process_directory(i8*, i32, %struct.stat*) #1

declare dso_local i32 @add_one_path(%struct.cache_entry*, i8*, i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
