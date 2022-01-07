; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_merge_commit_graph.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_merge_commit_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.commit**, i32 }
%struct.commit = type { i32 }
%struct.commit_graph = type { i64, i64 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*, %struct.commit_graph*)* @merge_commit_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_commit_graph(%struct.write_commit_graph_context* %0, %struct.commit_graph* %1) #0 {
  %3 = alloca %struct.write_commit_graph_context*, align 8
  %4 = alloca %struct.commit_graph*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.commit*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %3, align 8
  store %struct.commit_graph* %1, %struct.commit_graph** %4, align 8
  %9 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %10 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %13 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.commit**, %struct.commit*** %14, align 8
  %16 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %17 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %21 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %25 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ALLOC_GROW(%struct.commit** %15, i64 %23, i32 %27)
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %70, %2
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %32 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %29
  %36 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %37 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @display_progress(i32 %38, i64 %40)
  %42 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @load_oid_from_graph(%struct.commit_graph* %42, i64 %45, %struct.object_id* %7)
  %47 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %48 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.commit* @lookup_commit_reference_gently(i32 %49, %struct.object_id* %7, i32 1)
  store %struct.commit* %50, %struct.commit** %8, align 8
  %51 = load %struct.commit*, %struct.commit** %8, align 8
  %52 = icmp ne %struct.commit* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %35
  %54 = load %struct.commit*, %struct.commit** %8, align 8
  %55 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %56 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.commit**, %struct.commit*** %57, align 8
  %59 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %60 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.commit*, %struct.commit** %58, i64 %62
  store %struct.commit* %54, %struct.commit** %63, align 8
  %64 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %3, align 8
  %65 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %53, %35
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %5, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %29

73:                                               ; preds = %29
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.commit**, i64, i32) #1

declare dso_local i32 @display_progress(i32, i64) #1

declare dso_local i32 @load_oid_from_graph(%struct.commit_graph*, i64, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
