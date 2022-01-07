; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_mark_commit_graphs.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_mark_commit_graphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_commit_graph_context = type { i64, i64, i32* }
%struct.stat = type { i32 }
%struct.utimbuf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.write_commit_graph_context*)* @mark_commit_graphs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_commit_graphs(%struct.write_commit_graph_context* %0) #0 {
  %2 = alloca %struct.write_commit_graph_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.utimbuf, align 4
  store %struct.write_commit_graph_context* %0, %struct.write_commit_graph_context** %2, align 8
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %9 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %10, 1
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %15 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %20 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stat(i32 %24, %struct.stat* %5)
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %2, align 8
  %32 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @utime(i32 %36, %struct.utimbuf* %6)
  br label %38

38:                                               ; preds = %18
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %12

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @utime(i32, %struct.utimbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
