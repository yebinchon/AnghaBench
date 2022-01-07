; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_write_index_as_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_write_index_as_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.object_id = type { i32 }
%struct.index_state = type { i64 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@WRITE_TREE_UNREADABLE_INDEX = common dso_local global i32 0, align 4
@WRITE_TREE_IGNORE_CACHE_TREE = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_index_as_tree(%struct.object_id* %0, %struct.index_state* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lock_file, align 4
  %14 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.index_state* %1, %struct.index_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = bitcast %struct.lock_file* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %18 = call i32 @hold_lock_file_for_update(%struct.lock_file* %13, i8* %16, i32 %17)
  %19 = load %struct.index_state*, %struct.index_state** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (...) @get_git_dir()
  %22 = call i32 @read_index_from(%struct.index_state* %19, i8* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @WRITE_TREE_UNREADABLE_INDEX, align 4
  store i32 %26, i32* %14, align 4
  br label %62

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @WRITE_TREE_IGNORE_CACHE_TREE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load %struct.index_state*, %struct.index_state** %7, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.index_state*, %struct.index_state** %7, align 8
  %39 = getelementptr inbounds %struct.index_state, %struct.index_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @cache_tree_fully_valid(i64 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %32, %27
  %44 = phi i1 [ false, %32 ], [ false, %27 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load %struct.object_id*, %struct.object_id** %6, align 8
  %47 = load %struct.index_state*, %struct.index_state** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @write_index_as_tree_internal(%struct.object_id* %46, %struct.index_state* %47, i32 %48, i32 %49, i8* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.index_state*, %struct.index_state** %7, align 8
  %59 = load i32, i32* @COMMIT_LOCK, align 4
  %60 = call i32 @write_locked_index(%struct.index_state* %58, %struct.lock_file* %13, i32 %59)
  br label %61

61:                                               ; preds = %57, %54, %43
  br label %62

62:                                               ; preds = %61, %25
  %63 = call i32 @rollback_lock_file(%struct.lock_file* %13)
  %64 = load i32, i32* %14, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32 @read_index_from(%struct.index_state*, i8*, i32) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i64 @cache_tree_fully_valid(i64) #2

declare dso_local i32 @write_index_as_tree_internal(%struct.object_id*, %struct.index_state*, i32, i32, i8*) #2

declare dso_local i32 @write_locked_index(%struct.index_state*, %struct.lock_file*, i32) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
