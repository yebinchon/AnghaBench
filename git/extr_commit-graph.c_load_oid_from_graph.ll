; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_load_oid_from_graph.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_load_oid_from_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graph = type { i64, i64, i64, i64, %struct.commit_graph* }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"NULL commit-graph\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"invalid commit position. commit-graph is likely corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_graph*, i64, %struct.object_id*)* @load_oid_from_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_oid_from_graph(%struct.commit_graph* %0, i64 %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.commit_graph*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i64, align 8
  store %struct.commit_graph* %0, %struct.commit_graph** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  br label %8

8:                                                ; preds = %19, %3
  %9 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %10 = icmp ne %struct.commit_graph* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %14 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %21 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %20, i32 0, i32 4
  %22 = load %struct.commit_graph*, %struct.commit_graph** %21, align 8
  store %struct.commit_graph* %22, %struct.commit_graph** %4, align 8
  br label %8

23:                                               ; preds = %17
  %24 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %25 = icmp ne %struct.commit_graph* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @BUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %31 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %34 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp sge i64 %29, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @die(i32 %39)
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %44 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  store i64 %46, i64* %7, align 8
  %47 = load %struct.object_id*, %struct.object_id** %6, align 8
  %48 = getelementptr inbounds %struct.object_id, %struct.object_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %51 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.commit_graph*, %struct.commit_graph** %4, align 8
  %54 = getelementptr inbounds %struct.commit_graph, %struct.commit_graph* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = mul nsw i64 %55, %56
  %58 = add nsw i64 %52, %57
  %59 = call i32 @hashcpy(i32 %49, i64 %58)
  ret void
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @hashcpy(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
