; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_load_commit_graph_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_load_commit_graph_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.commit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_commit_graph_info(%struct.repository* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.repository*, %struct.repository** %3, align 8
  %7 = call i32 @prepare_commit_graph(%struct.repository* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.commit*, %struct.commit** %4, align 8
  %12 = load %struct.repository*, %struct.repository** %3, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @find_commit_in_graph(%struct.commit* %11, i32 %16, i32* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.commit*, %struct.commit** %4, align 8
  %21 = load %struct.repository*, %struct.repository** %3, align 8
  %22 = getelementptr inbounds %struct.repository, %struct.repository* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fill_commit_graph_info(%struct.commit* %20, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %9, %19, %10
  ret void
}

declare dso_local i32 @prepare_commit_graph(%struct.repository*) #1

declare dso_local i64 @find_commit_in_graph(%struct.commit*, i32, i32*) #1

declare dso_local i32 @fill_commit_graph_info(%struct.commit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
