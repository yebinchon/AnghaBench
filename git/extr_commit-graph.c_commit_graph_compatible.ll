; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_commit_graph_compatible.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_commit_graph_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@read_replace_refs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @commit_graph_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_graph_compatible(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  %4 = load %struct.repository*, %struct.repository** %3, align 8
  %5 = getelementptr inbounds %struct.repository, %struct.repository* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

9:                                                ; preds = %1
  %10 = load i64, i64* @read_replace_refs, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.repository*, %struct.repository** %3, align 8
  %14 = call i32 @prepare_replace_object(%struct.repository* %13)
  %15 = load %struct.repository*, %struct.repository** %3, align 8
  %16 = getelementptr inbounds %struct.repository, %struct.repository* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @hashmap_get_size(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %46

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %9
  %26 = load %struct.repository*, %struct.repository** %3, align 8
  %27 = call i32 @prepare_commit_graft(%struct.repository* %26)
  %28 = load %struct.repository*, %struct.repository** %3, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.repository*, %struct.repository** %3, align 8
  %34 = getelementptr inbounds %struct.repository, %struct.repository* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %32, %25
  %41 = load %struct.repository*, %struct.repository** %3, align 8
  %42 = call i64 @is_repository_shallow(%struct.repository* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %39, %23, %8
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @prepare_replace_object(%struct.repository*) #1

declare dso_local i64 @hashmap_get_size(i32*) #1

declare dso_local i32 @prepare_commit_graft(%struct.repository*) #1

declare dso_local i64 @is_repository_shallow(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
