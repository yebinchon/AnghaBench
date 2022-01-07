; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_write_index_as_tree_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_write_index_as_tree_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.index_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cache_tree = type { i32 }

@WRITE_TREE_IGNORE_CACHE_TREE = common dso_local global i32 0, align 4
@WRITE_TREE_UNMERGED_INDEX = common dso_local global i32 0, align 4
@WRITE_TREE_PREFIX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.index_state*, i32, i32, i8*)* @write_index_as_tree_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_index_as_tree_internal(%struct.object_id* %0, %struct.index_state* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cache_tree*, align 8
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store %struct.index_state* %1, %struct.index_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @WRITE_TREE_IGNORE_CACHE_TREE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.index_state*, %struct.index_state** %8, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 0
  %20 = call i32 @cache_tree_free(%struct.TYPE_4__** %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.index_state*, %struct.index_state** %8, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = call %struct.TYPE_4__* (...) @cache_tree()
  %28 = load %struct.index_state*, %struct.index_state** %8, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 0
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.index_state*, %struct.index_state** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @cache_tree_update(%struct.index_state* %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @WRITE_TREE_UNMERGED_INDEX, align 4
  store i32 %39, i32* %6, align 4
  br label %66

40:                                               ; preds = %33, %30
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.index_state*, %struct.index_state** %8, align 8
  %45 = getelementptr inbounds %struct.index_state, %struct.index_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call %struct.cache_tree* @cache_tree_find(%struct.TYPE_4__* %46, i8* %47)
  store %struct.cache_tree* %48, %struct.cache_tree** %12, align 8
  %49 = load %struct.cache_tree*, %struct.cache_tree** %12, align 8
  %50 = icmp ne %struct.cache_tree* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @WRITE_TREE_PREFIX_ERROR, align 4
  store i32 %52, i32* %6, align 4
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.object_id*, %struct.object_id** %7, align 8
  %55 = load %struct.cache_tree*, %struct.cache_tree** %12, align 8
  %56 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %55, i32 0, i32 0
  %57 = call i32 @oidcpy(%struct.object_id* %54, i32* %56)
  br label %65

58:                                               ; preds = %40
  %59 = load %struct.object_id*, %struct.object_id** %7, align 8
  %60 = load %struct.index_state*, %struct.index_state** %8, align 8
  %61 = getelementptr inbounds %struct.index_state, %struct.index_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @oidcpy(%struct.object_id* %59, i32* %63)
  br label %65

65:                                               ; preds = %58, %53
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %51, %38
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @cache_tree_free(%struct.TYPE_4__**) #1

declare dso_local %struct.TYPE_4__* @cache_tree(...) #1

declare dso_local i64 @cache_tree_update(%struct.index_state*, i32) #1

declare dso_local %struct.cache_tree* @cache_tree_find(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
