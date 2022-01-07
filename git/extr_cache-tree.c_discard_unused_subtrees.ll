; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_discard_unused_subtrees.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_discard_unused_subtrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32, %struct.cache_tree_sub** }
%struct.cache_tree_sub = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_tree*)* @discard_unused_subtrees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_unused_subtrees(%struct.cache_tree* %0) #0 {
  %2 = alloca %struct.cache_tree*, align 8
  %3 = alloca %struct.cache_tree_sub**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_tree_sub*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %2, align 8
  %8 = load %struct.cache_tree*, %struct.cache_tree** %2, align 8
  %9 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %8, i32 0, i32 1
  %10 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %9, align 8
  store %struct.cache_tree_sub** %10, %struct.cache_tree_sub*** %3, align 8
  %11 = load %struct.cache_tree*, %struct.cache_tree** %2, align 8
  %12 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %46, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %19, i64 %21
  %23 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %22, align 8
  store %struct.cache_tree_sub* %23, %struct.cache_tree_sub** %7, align 8
  %24 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %7, align 8
  %25 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %7, align 8
  %30 = load %struct.cache_tree_sub**, %struct.cache_tree_sub*** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.cache_tree_sub*, %struct.cache_tree_sub** %30, i64 %33
  store %struct.cache_tree_sub* %29, %struct.cache_tree_sub** %34, align 8
  br label %45

35:                                               ; preds = %18
  %36 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %7, align 8
  %37 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %36, i32 0, i32 0
  %38 = call i32 @cache_tree_free(i32* %37)
  %39 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %7, align 8
  %40 = call i32 @free(%struct.cache_tree_sub* %39)
  %41 = load %struct.cache_tree*, %struct.cache_tree** %2, align 8
  %42 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %35, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %14

49:                                               ; preds = %14
  ret void
}

declare dso_local i32 @cache_tree_free(i32*) #1

declare dso_local i32 @free(%struct.cache_tree_sub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
