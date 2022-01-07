; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_fanout.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_fanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.write_commit_graph_context = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.commit** }
%struct.commit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, %struct.write_commit_graph_context*)* @write_graph_chunk_fanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_graph_chunk_fanout(%struct.hashfile* %0, %struct.write_commit_graph_context* %1) #0 {
  %3 = alloca %struct.hashfile*, align 8
  %4 = alloca %struct.write_commit_graph_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit**, align 8
  store %struct.hashfile* %0, %struct.hashfile** %3, align 8
  store %struct.write_commit_graph_context* %1, %struct.write_commit_graph_context** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %9 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.commit**, %struct.commit*** %10, align 8
  store %struct.commit** %11, %struct.commit*** %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %19 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %16
  %24 = load %struct.commit**, %struct.commit*** %7, align 8
  %25 = load %struct.commit*, %struct.commit** %24, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %48

35:                                               ; preds = %23
  %36 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %37 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %4, align 8
  %40 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = call i32 @display_progress(i32 %38, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load %struct.commit**, %struct.commit*** %7, align 8
  %47 = getelementptr inbounds %struct.commit*, %struct.commit** %46, i32 1
  store %struct.commit** %47, %struct.commit*** %7, align 8
  br label %16

48:                                               ; preds = %34, %16
  %49 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hashwrite_be32(%struct.hashfile* %49, i32 %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %12

55:                                               ; preds = %12
  ret void
}

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @hashwrite_be32(%struct.hashfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
