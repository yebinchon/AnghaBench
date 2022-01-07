; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_reset_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_reset_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.object_id = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }

@MAX_UNPACK_TREES = common dso_local global i32 0, align 4
@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@oneway_merge = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to write new index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i32)* @reset_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_tree(%struct.object_id* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.unpack_trees_options, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tree*, align 8
  %13 = alloca %struct.lock_file, align 4
  %14 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %15 = load i32, i32* @MAX_UNPACK_TREES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.tree_desc, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = bitcast %struct.lock_file* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %20 = call i32 @read_cache_preload(i32* null)
  %21 = load i32, i32* @REFRESH_QUIET, align 4
  %22 = call i64 @refresh_cache(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %27 = call i32 @hold_locked_index(%struct.lock_file* %13, i32 %26)
  %28 = call i32 @memset(%struct.unpack_trees_options* %9, i32 0, i32 40)
  %29 = load %struct.object_id*, %struct.object_id** %5, align 8
  %30 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %29)
  store %struct.tree* %30, %struct.tree** %12, align 8
  %31 = load %struct.tree*, %struct.tree** %12, align 8
  %32 = call i64 @parse_tree(%struct.tree* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

35:                                               ; preds = %25
  %36 = load %struct.tree*, %struct.tree** %12, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tree*, %struct.tree** %12, align 8
  %40 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @init_tree_desc(%struct.tree_desc* %18, i32 %38, i32 %41)
  %43 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 6
  store i32* @the_index, i32** %44, align 8
  %45 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 5
  store i32* @the_index, i32** %45, align 8
  %46 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @oneway_merge, align 4
  %52 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 4
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @unpack_trees(i32 %53, %struct.tree_desc* %18, %struct.unpack_trees_options* %9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

57:                                               ; preds = %35
  %58 = load i32, i32* @COMMIT_LOCK, align 4
  %59 = call i64 @write_locked_index(i32* @the_index, %struct.lock_file* %13, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @error(i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %61, %56, %34, %24
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_cache_preload(i32*) #3

declare dso_local i64 @refresh_cache(i32) #3

declare dso_local i32 @hold_locked_index(%struct.lock_file*, i32) #3

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #3

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #3

declare dso_local i64 @parse_tree(%struct.tree*) #3

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #3

declare dso_local i64 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #3

declare dso_local i64 @write_locked_index(i32*, %struct.lock_file*, i32) #3

declare dso_local i32 @error(i32) #3

declare dso_local i32 @_(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
