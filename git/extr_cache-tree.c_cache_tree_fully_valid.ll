; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_fully_valid.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_fully_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i64, i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { %struct.cache_tree* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_tree_fully_valid(%struct.cache_tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_tree*, align 8
  %4 = alloca i32, align 4
  store %struct.cache_tree* %0, %struct.cache_tree** %3, align 8
  %5 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %6 = icmp ne %struct.cache_tree* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %10 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %15 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %14, i32 0, i32 3
  %16 = call i32 @has_object_file(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %8
  store i32 0, i32* %2, align 4
  br label %44

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %23 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  %28 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.cache_tree*, %struct.cache_tree** %34, align 8
  %36 = call i32 @cache_tree_fully_valid(%struct.cache_tree* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %44

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %20

43:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38, %18, %7
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @has_object_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
