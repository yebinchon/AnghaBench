; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.write_commit_graph_context = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"failed to write correct number of base graph ids\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashfile*, %struct.write_commit_graph_context*)* @write_graph_chunk_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_graph_chunk_base(%struct.hashfile* %0, %struct.write_commit_graph_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca %struct.write_commit_graph_context*, align 8
  %6 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store %struct.write_commit_graph_context* %1, %struct.write_commit_graph_context** %5, align 8
  %7 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %8 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %5, align 8
  %9 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @write_graph_chunk_base_1(%struct.hashfile* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %5, align 8
  %14 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp ne i32 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @error(i32 %19)
  store i32 -1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @write_graph_chunk_base_1(%struct.hashfile*, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
