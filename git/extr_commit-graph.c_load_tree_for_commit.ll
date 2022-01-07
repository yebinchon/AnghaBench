; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_load_tree_for_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_load_tree_for_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.repository = type { i32 }
%struct.commit_graph = type { i64, i8*, %struct.commit_graph* }
%struct.commit = type { i64, %struct.tree* }
%struct.object_id = type { i32 }

@GRAPH_DATA_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree* (%struct.repository*, %struct.commit_graph*, %struct.commit*)* @load_tree_for_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree* @load_tree_for_commit(%struct.repository* %0, %struct.commit_graph* %1, %struct.commit* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit_graph*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit_graph* %1, %struct.commit_graph** %5, align 8
  store %struct.commit* %2, %struct.commit** %6, align 8
  br label %9

9:                                                ; preds = %17, %3
  %10 = load %struct.commit*, %struct.commit** %6, align 8
  %11 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %14 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %19 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %18, i32 0, i32 2
  %20 = load %struct.commit_graph*, %struct.commit_graph** %19, align 8
  store %struct.commit_graph* %20, %struct.commit_graph** %5, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %23 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @GRAPH_DATA_WIDTH, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.commit*, %struct.commit** %6, align 8
  %28 = getelementptr inbounds %struct.commit, %struct.commit* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %31 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = mul nsw i64 %26, %33
  %35 = getelementptr inbounds i8, i8* %24, i64 %34
  store i8* %35, i8** %8, align 8
  %36 = getelementptr inbounds %struct.object_id, %struct.object_id* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @hashcpy(i32 %37, i8* %38)
  %40 = load %struct.commit*, %struct.commit** %6, align 8
  %41 = load %struct.repository*, %struct.repository** %4, align 8
  %42 = call i32 @lookup_tree(%struct.repository* %41, %struct.object_id* %7)
  %43 = call i32 @set_commit_tree(%struct.commit* %40, i32 %42)
  %44 = load %struct.commit*, %struct.commit** %6, align 8
  %45 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 1
  %46 = load %struct.tree*, %struct.tree** %45, align 8
  ret %struct.tree* %46
}

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i32 @set_commit_tree(%struct.commit*, i32) #1

declare dso_local i32 @lookup_tree(%struct.repository*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
