; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_free_commit_graph.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_free_commit_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { i64, %struct.commit_graph*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_commit_graph(%struct.commit_graph* %0) #0 {
  %2 = alloca %struct.commit_graph*, align 8
  store %struct.commit_graph* %0, %struct.commit_graph** %2, align 8
  %3 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %4 = icmp ne %struct.commit_graph* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %8 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %13 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %17 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @munmap(i8* %15, i32 %18)
  %20 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %21 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %23 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @close(i64 %24)
  br label %26

26:                                               ; preds = %11, %6
  %27 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %28 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %27, i32 0, i32 1
  %29 = load %struct.commit_graph*, %struct.commit_graph** %28, align 8
  %30 = call i32 @free(%struct.commit_graph* %29)
  %31 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %32 = call i32 @free(%struct.commit_graph* %31)
  br label %33

33:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(%struct.commit_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
