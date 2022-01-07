; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_close_commit_graph_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_close_commit_graph_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { %struct.commit_graph* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_graph*)* @close_commit_graph_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_commit_graph_one(%struct.commit_graph* %0) #0 {
  %2 = alloca %struct.commit_graph*, align 8
  store %struct.commit_graph* %0, %struct.commit_graph** %2, align 8
  %3 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %4 = icmp ne %struct.commit_graph* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %8 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %7, i32 0, i32 0
  %9 = load %struct.commit_graph*, %struct.commit_graph** %8, align 8
  call void @close_commit_graph_one(%struct.commit_graph* %9)
  %10 = load %struct.commit_graph*, %struct.commit_graph** %2, align 8
  %11 = call i32 @free_commit_graph(%struct.commit_graph* %10)
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free_commit_graph(%struct.commit_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
