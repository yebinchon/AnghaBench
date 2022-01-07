; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_find_subtree.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_find_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree_sub = type { i32, i32* }
%struct.cache_tree = type { i32, %struct.cache_tree_sub**, i32 }

@name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_tree_sub* (%struct.cache_tree*, i8*, i32, i32)* @find_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_tree_sub* @find_subtree(%struct.cache_tree* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cache_tree_sub*, align 8
  %6 = alloca %struct.cache_tree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_tree_sub*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_tree* %0, %struct.cache_tree** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @subtree_pos(%struct.cache_tree* %12, i8* %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sle i32 0, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %20 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %19, i32 0, i32 1
  %21 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %21, i64 %23
  %25 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %24, align 8
  store %struct.cache_tree_sub* %25, %struct.cache_tree_sub** %5, align 8
  br label %94

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.cache_tree_sub* null, %struct.cache_tree_sub** %5, align 8
  br label %94

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 0, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %35 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %34, i32 0, i32 1
  %36 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %35, align 8
  %37 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %38 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %42 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ALLOC_GROW(%struct.cache_tree_sub** %36, i32 %40, i32 %43)
  %45 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %46 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %50 = load i32, i32* @name, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @FLEX_ALLOC_MEM(%struct.cache_tree_sub* %49, i32 %50, i8* %51, i32 %52)
  %54 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %55 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %58 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %61 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %30
  %65 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %66 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %65, i32 0, i32 1
  %67 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %67, i64 %69
  %71 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %70, i64 1
  %72 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %73 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %72, i32 0, i32 1
  %74 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %74, i64 %76
  %78 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %79 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @MOVE_ARRAY(%struct.cache_tree_sub** %71, %struct.cache_tree_sub** %77, i32 %83)
  br label %85

85:                                               ; preds = %64, %30
  %86 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %87 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %88 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %87, i32 0, i32 1
  %89 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %89, i64 %91
  store %struct.cache_tree_sub* %86, %struct.cache_tree_sub** %92, align 8
  %93 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  store %struct.cache_tree_sub* %93, %struct.cache_tree_sub** %5, align 8
  br label %94

94:                                               ; preds = %85, %29, %18
  %95 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %5, align 8
  ret %struct.cache_tree_sub* %95
}

declare dso_local i32 @subtree_pos(%struct.cache_tree*, i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.cache_tree_sub**, i32, i32) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.cache_tree_sub*, i32, i8*, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.cache_tree_sub**, %struct.cache_tree_sub**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
