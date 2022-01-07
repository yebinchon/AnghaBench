; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_matches_traversal.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_matches_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i64, i32 }
%struct.name_entry = type { i32, i32 }
%struct.traverse_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_tree_matches_traversal(%struct.cache_tree* %0, %struct.name_entry* %1, %struct.traverse_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_tree*, align 8
  %6 = alloca %struct.name_entry*, align 8
  %7 = alloca %struct.traverse_info*, align 8
  %8 = alloca %struct.cache_tree*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %5, align 8
  store %struct.name_entry* %1, %struct.name_entry** %6, align 8
  store %struct.traverse_info* %2, %struct.traverse_info** %7, align 8
  %9 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %10 = load %struct.traverse_info*, %struct.traverse_info** %7, align 8
  %11 = call %struct.cache_tree* @find_cache_tree_from_traversal(%struct.cache_tree* %9, %struct.traverse_info* %10)
  store %struct.cache_tree* %11, %struct.cache_tree** %8, align 8
  %12 = load %struct.cache_tree*, %struct.cache_tree** %8, align 8
  %13 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %14 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cache_tree* @cache_tree_find(%struct.cache_tree* %12, i32 %15)
  store %struct.cache_tree* %16, %struct.cache_tree** %8, align 8
  %17 = load %struct.cache_tree*, %struct.cache_tree** %8, align 8
  %18 = icmp ne %struct.cache_tree* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.cache_tree*, %struct.cache_tree** %8, align 8
  %21 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.name_entry*, %struct.name_entry** %6, align 8
  %26 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %25, i32 0, i32 0
  %27 = load %struct.cache_tree*, %struct.cache_tree** %8, align 8
  %28 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %27, i32 0, i32 1
  %29 = call i64 @oideq(i32* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.cache_tree*, %struct.cache_tree** %8, align 8
  %33 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %24, %19, %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.cache_tree* @find_cache_tree_from_traversal(%struct.cache_tree*, %struct.traverse_info*) #1

declare dso_local %struct.cache_tree* @cache_tree_find(%struct.cache_tree*, i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
