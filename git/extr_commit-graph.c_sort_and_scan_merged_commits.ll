; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_sort_and_scan_merged_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_sort_and_scan_merged_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i32, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Scanning merged commits\00", align 1
@commit_compare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected duplicate commit id %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @sort_and_scan_merged_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_and_scan_merged_commits(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  %5 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %6 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %12 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @start_delayed_progress(i32 %10, i32 %14)
  %16 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %17 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %20 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %24 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @commit_compare, align 4
  %28 = call i32 @QSORT(%struct.TYPE_6__** %22, i32 %26, i32 %27)
  %29 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %30 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %108, %18
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %34 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %111

38:                                               ; preds = %31
  %39 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %40 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @display_progress(i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %38
  %47 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %48 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %59 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i64 @oideq(i32* %57, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %46
  %71 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %73 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @oid_to_hex(i32* %81)
  %83 = call i32 @die(i32 %71, i32 %82)
  br label %107

84:                                               ; preds = %46, %38
  %85 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %86 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @commit_list_count(i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ugt i32 %96, 2
  br i1 %97, label %98, label %106

98:                                               ; preds = %84
  %99 = load i32, i32* %4, align 4
  %100 = sub i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %103 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %98, %84
  br label %107

107:                                              ; preds = %106, %70
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %31

111:                                              ; preds = %31
  %112 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %113 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %112, i32 0, i32 0
  %114 = call i32 @stop_progress(i32* %113)
  ret void
}

declare dso_local i32 @start_delayed_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @QSORT(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @commit_list_count(i32) #1

declare dso_local i32 @stop_progress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
