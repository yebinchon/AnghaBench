; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_count_distinct_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_count_distinct_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.commit = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Counting distinct commits in commit graph\00", align 1
@oid_compare = common dso_local global i32 0, align 4
@COMMIT_NOT_FROM_GRAPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.write_commit_graph_context*)* @count_distinct_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_distinct_commits(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %7 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %13 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @start_delayed_progress(i32 %11, i32 %15)
  %17 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %18 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  %20 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %21 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @display_progress(i32 %22, i32 0)
  %24 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %25 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %29 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @oid_compare, align 4
  %33 = call i32 @QSORT(i32* %27, i32 %31, i32 %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %96, %19
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %37 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %34
  %42 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %43 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @display_progress(i32 %44, i32 %46)
  %48 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %49 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %57 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @oideq(i32* %55, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %41
  %66 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %67 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %72 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %75 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call %struct.commit* @lookup_commit(i32 %73, i32* %80)
  store %struct.commit* %81, %struct.commit** %5, align 8
  %82 = load %struct.commit*, %struct.commit** %5, align 8
  %83 = icmp ne %struct.commit* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load %struct.commit*, %struct.commit** %5, align 8
  %86 = getelementptr inbounds %struct.commit, %struct.commit* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @COMMIT_NOT_FROM_GRAPH, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84, %70
  br label %96

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %41
  br label %96

96:                                               ; preds = %95, %90
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %34

99:                                               ; preds = %34
  %100 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %101 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %100, i32 0, i32 0
  %102 = call i32 @stop_progress(i32* %101)
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @QSORT(i32*, i32, i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local %struct.commit* @lookup_commit(i32, i32*) #1

declare dso_local i32 @stop_progress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
