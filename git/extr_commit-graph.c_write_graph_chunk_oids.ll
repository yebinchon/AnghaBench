; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_oids.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_oids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.write_commit_graph_context = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.commit** }
%struct.commit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, i32, %struct.write_commit_graph_context*)* @write_graph_chunk_oids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_graph_chunk_oids(%struct.hashfile* %0, i32 %1, %struct.write_commit_graph_context* %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.write_commit_graph_context*, align 8
  %7 = alloca %struct.commit**, align 8
  %8 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.write_commit_graph_context* %2, %struct.write_commit_graph_context** %6, align 8
  %9 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %10 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.commit**, %struct.commit*** %11, align 8
  store %struct.commit** %12, %struct.commit*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %16 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %13
  %21 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %22 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %25 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = call i32 @display_progress(i32 %23, i32 %27)
  %29 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %30 = load %struct.commit**, %struct.commit*** %7, align 8
  %31 = load %struct.commit*, %struct.commit** %30, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @hashwrite(%struct.hashfile* %29, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load %struct.commit**, %struct.commit*** %7, align 8
  %42 = getelementptr inbounds %struct.commit*, %struct.commit** %41, i32 1
  store %struct.commit** %42, %struct.commit*** %7, align 8
  br label %13

43:                                               ; preds = %13
  ret void
}

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
