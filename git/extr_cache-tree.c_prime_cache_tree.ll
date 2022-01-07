; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_prime_cache_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_prime_cache_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.index_state = type { i32, i32 }
%struct.tree = type { i32 }

@CACHE_TREE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prime_cache_tree(%struct.repository* %0, %struct.index_state* %1, %struct.tree* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.tree*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  store %struct.tree* %2, %struct.tree** %6, align 8
  %7 = load %struct.index_state*, %struct.index_state** %5, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 1
  %9 = call i32 @cache_tree_free(i32* %8)
  %10 = call i32 (...) @cache_tree()
  %11 = load %struct.index_state*, %struct.index_state** %5, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.repository*, %struct.repository** %4, align 8
  %14 = load %struct.index_state*, %struct.index_state** %5, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tree*, %struct.tree** %6, align 8
  %18 = call i32 @prime_cache_tree_rec(%struct.repository* %13, i32 %16, %struct.tree* %17)
  %19 = load i32, i32* @CACHE_TREE_CHANGED, align 4
  %20 = load %struct.index_state*, %struct.index_state** %5, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @cache_tree_free(i32*) #1

declare dso_local i32 @cache_tree(...) #1

declare dso_local i32 @prime_cache_tree_rec(%struct.repository*, i32, %struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
