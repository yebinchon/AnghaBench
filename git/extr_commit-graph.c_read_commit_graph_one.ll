; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_read_commit_graph_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_read_commit_graph_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { i32 }
%struct.repository = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_graph* @read_commit_graph_one(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.commit_graph*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.repository*, %struct.repository** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.commit_graph* @load_commit_graph_v1(%struct.repository* %6, i8* %7)
  store %struct.commit_graph* %8, %struct.commit_graph** %5, align 8
  %9 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  %10 = icmp ne %struct.commit_graph* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.repository*, %struct.repository** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.commit_graph* @load_commit_graph_chain(%struct.repository* %12, i8* %13)
  store %struct.commit_graph* %14, %struct.commit_graph** %5, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.commit_graph*, %struct.commit_graph** %5, align 8
  ret %struct.commit_graph* %16
}

declare dso_local %struct.commit_graph* @load_commit_graph_v1(%struct.repository*, i8*) #1

declare dso_local %struct.commit_graph* @load_commit_graph_chain(%struct.repository*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
