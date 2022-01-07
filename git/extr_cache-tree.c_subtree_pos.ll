; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_subtree_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_subtree_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32, %struct.cache_tree_sub** }
%struct.cache_tree_sub = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_tree*, i8*, i32)* @subtree_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subtree_pos(%struct.cache_tree* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_tree_sub**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_tree_sub*, align 8
  %13 = alloca i32, align 4
  store %struct.cache_tree* %0, %struct.cache_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %15 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %14, i32 0, i32 1
  %16 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %15, align 8
  store %struct.cache_tree_sub** %16, %struct.cache_tree_sub*** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %18 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %57, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %25, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %31, i64 %33
  %35 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %34, align 8
  store %struct.cache_tree_sub* %35, %struct.cache_tree_sub** %12, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %39 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %12, align 8
  %42 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @subtree_name_cmp(i8* %36, i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %24
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %24
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %52
  br label %20

58:                                               ; preds = %20
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 0, %59
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %47
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @subtree_name_cmp(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
