; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_find_cache_tree_from_traversal.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_find_cache_tree_from_traversal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32 }
%struct.traverse_info = type { i32, %struct.traverse_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_tree* (%struct.cache_tree*, %struct.traverse_info*)* @find_cache_tree_from_traversal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_tree* @find_cache_tree_from_traversal(%struct.cache_tree* %0, %struct.traverse_info* %1) #0 {
  %3 = alloca %struct.cache_tree*, align 8
  %4 = alloca %struct.cache_tree*, align 8
  %5 = alloca %struct.traverse_info*, align 8
  %6 = alloca %struct.cache_tree*, align 8
  store %struct.cache_tree* %0, %struct.cache_tree** %4, align 8
  store %struct.traverse_info* %1, %struct.traverse_info** %5, align 8
  %7 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %8 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %7, i32 0, i32 1
  %9 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %10 = icmp ne %struct.traverse_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  store %struct.cache_tree* %12, %struct.cache_tree** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %15 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %16 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %15, i32 0, i32 1
  %17 = load %struct.traverse_info*, %struct.traverse_info** %16, align 8
  %18 = call %struct.cache_tree* @find_cache_tree_from_traversal(%struct.cache_tree* %14, %struct.traverse_info* %17)
  store %struct.cache_tree* %18, %struct.cache_tree** %6, align 8
  %19 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %20 = load %struct.traverse_info*, %struct.traverse_info** %5, align 8
  %21 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.cache_tree* @cache_tree_find(%struct.cache_tree* %19, i32 %22)
  store %struct.cache_tree* %23, %struct.cache_tree** %3, align 8
  br label %24

24:                                               ; preds = %13, %11
  %25 = load %struct.cache_tree*, %struct.cache_tree** %3, align 8
  ret %struct.cache_tree* %25
}

declare dso_local %struct.cache_tree* @cache_tree_find(%struct.cache_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
