; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_generation_numbers_enabled.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_generation_numbers_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.commit_graph* }
%struct.commit_graph = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generation_numbers_enabled(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit_graph*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  %6 = load %struct.repository*, %struct.repository** %3, align 8
  %7 = call i32 @prepare_commit_graph(%struct.repository* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.repository*, %struct.repository** %3, align 8
  %12 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.commit_graph*, %struct.commit_graph** %14, align 8
  store %struct.commit_graph* %15, %struct.commit_graph** %5, align 8
  %16 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %17 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %37

21:                                               ; preds = %10
  %22 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %23 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %26 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = add nsw i64 %28, 8
  %30 = call i32 @get_be32(i64 %29)
  %31 = ashr i32 %30, 2
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %21, %20, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @prepare_commit_graph(%struct.repository*) #1

declare dso_local i32 @get_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
