; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_verify_commit_graph_lite.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_verify_commit_graph_lite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"commit-graph is missing the OID Fanout chunk\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"commit-graph is missing the OID Lookup chunk\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"commit-graph is missing the Commit Data chunk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_graph*)* @verify_commit_graph_lite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_commit_graph_lite(%struct.commit_graph* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.commit_graph*, align 8
  store %struct.commit_graph* %0, %struct.commit_graph** %3, align 8
  %4 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %5 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %12 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %25

17:                                               ; preds = %10
  %18 = load %struct.commit_graph*, %struct.commit_graph** %3, align 8
  %19 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %22, %15, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
