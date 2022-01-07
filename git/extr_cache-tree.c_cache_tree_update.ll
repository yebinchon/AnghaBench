; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_update.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_cache_tree_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry**, %struct.cache_tree* }
%struct.cache_entry = type { i32 }
%struct.cache_tree = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cache_tree_update\00", align 1
@CACHE_TREE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_tree_update(%struct.index_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_tree*, align 8
  %7 = alloca %struct.cache_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.index_state*, %struct.index_state** %4, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 3
  %13 = load %struct.cache_tree*, %struct.cache_tree** %12, align 8
  store %struct.cache_tree* %13, %struct.cache_tree** %6, align 8
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 2
  %16 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  store %struct.cache_entry** %16, %struct.cache_entry*** %7, align 8
  %17 = load %struct.index_state*, %struct.index_state** %4, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @verify_cache(%struct.cache_entry** %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = call i32 (...) @trace_performance_enter()
  %30 = load %struct.cache_tree*, %struct.cache_tree** %6, align 8
  %31 = load %struct.cache_entry**, %struct.cache_entry*** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @update_one(%struct.cache_tree* %30, %struct.cache_entry** %31, i32 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32* %9, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @CACHE_TREE_CHANGED, align 4
  %42 = load %struct.index_state*, %struct.index_state** %4, align 8
  %43 = getelementptr inbounds %struct.index_state, %struct.index_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %38, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @verify_cache(%struct.cache_entry**, i32, i32) #1

declare dso_local i32 @trace_performance_enter(...) #1

declare dso_local i32 @update_one(%struct.cache_tree*, %struct.cache_entry**, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @trace_performance_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
