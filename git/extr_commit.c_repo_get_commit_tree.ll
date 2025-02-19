; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_repo_get_commit_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_repo_get_commit_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { i64, %struct.tree*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMMIT_NOT_FROM_GRAPH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @repo_get_commit_tree(%struct.repository* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %6 = load %struct.commit*, %struct.commit** %5, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 1
  %8 = load %struct.tree*, %struct.tree** %7, align 8
  %9 = icmp ne %struct.tree* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.commit*, %struct.commit** %5, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.commit*, %struct.commit** %5, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 1
  %19 = load %struct.tree*, %struct.tree** %18, align 8
  store %struct.tree* %19, %struct.tree** %3, align 8
  br label %31

20:                                               ; preds = %10
  %21 = load %struct.commit*, %struct.commit** %5, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @COMMIT_NOT_FROM_GRAPH, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.repository*, %struct.repository** %4, align 8
  %28 = load %struct.commit*, %struct.commit** %5, align 8
  %29 = call %struct.tree* @get_commit_tree_in_graph(%struct.repository* %27, %struct.commit* %28)
  store %struct.tree* %29, %struct.tree** %3, align 8
  br label %31

30:                                               ; preds = %20
  store %struct.tree* null, %struct.tree** %3, align 8
  br label %31

31:                                               ; preds = %30, %26, %16
  %32 = load %struct.tree*, %struct.tree** %3, align 8
  ret %struct.tree* %32
}

declare dso_local %struct.tree* @get_commit_tree_in_graph(%struct.repository*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
