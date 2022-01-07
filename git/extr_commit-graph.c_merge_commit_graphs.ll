; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_merge_commit_graphs.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_merge_commit_graphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.write_commit_graph_context = type { i64, i64, %struct.commit_graph*, i32, i64, i32, i64, %struct.TYPE_4__* }
%struct.commit_graph = type { i32, i64, i64, %struct.commit_graph* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.commit_graph* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"Merging commit-graph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @merge_commit_graphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_commit_graphs(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca %struct.commit_graph*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  %6 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %7 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %6, i32 0, i32 7
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.commit_graph*, %struct.commit_graph** %11, align 8
  store %struct.commit_graph* %12, %struct.commit_graph** %3, align 8
  %13 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %14 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  br label %17

17:                                               ; preds = %43, %1
  %18 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %19 = icmp ne %struct.commit_graph* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %23 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %4, align 8
  %31 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %32 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %5, i32 %36)
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @start_delayed_progress(i32 %39, i32 0)
  %41 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %42 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %45 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %46 = call i32 @merge_commit_graph(%struct.write_commit_graph_context* %44, %struct.commit_graph* %45)
  %47 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %48 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %47, i32 0, i32 5
  %49 = call i32 @stop_progress(i32* %48)
  %50 = call i32 @strbuf_release(%struct.strbuf* %5)
  %51 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %52 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %51, i32 0, i32 3
  %53 = load %struct.commit_graph*, %struct.commit_graph** %52, align 8
  store %struct.commit_graph* %53, %struct.commit_graph** %3, align 8
  br label %17

54:                                               ; preds = %26
  %55 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %56 = icmp ne %struct.commit_graph* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %59 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %60 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %59, i32 0, i32 2
  store %struct.commit_graph* %58, %struct.commit_graph** %60, align 8
  %61 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %62 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %65 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %69 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %57, %54
  %71 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %72 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %71, i32 0, i32 2
  %73 = load %struct.commit_graph*, %struct.commit_graph** %72, align 8
  %74 = icmp ne %struct.commit_graph* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %77 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %76, i32 0, i32 2
  %78 = load %struct.commit_graph*, %struct.commit_graph** %77, align 8
  %79 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @xstrdup(i32 %80)
  %82 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %83 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %75, %70
  %85 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %86 = call i32 @sort_and_scan_merged_commits(%struct.write_commit_graph_context* %85)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @start_delayed_progress(i32, i32) #2

declare dso_local i32 @merge_commit_graph(%struct.write_commit_graph_context*, %struct.commit_graph*) #2

declare dso_local i32 @stop_progress(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @xstrdup(i32) #2

declare dso_local i32 @sort_and_scan_merged_commits(%struct.write_commit_graph_context*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
