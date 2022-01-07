; ModuleID = '/home/carl/AnghaBench/git/extr_alloc.c_init_commit_node.c'
source_filename = "/home/carl/AnghaBench/git/extr_alloc.c_init_commit_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OBJ_COMMIT = common dso_local global i32 0, align 4
@COMMIT_NOT_FROM_GRAPH = common dso_local global i32 0, align 4
@GENERATION_NUMBER_INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_commit_node(%struct.repository* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %5 = load i32, i32* @OBJ_COMMIT, align 4
  %6 = load %struct.commit*, %struct.commit** %4, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.repository*, %struct.repository** %3, align 8
  %10 = call i32 @alloc_commit_index(%struct.repository* %9)
  %11 = load %struct.commit*, %struct.commit** %4, align 8
  %12 = getelementptr inbounds %struct.commit, %struct.commit* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @COMMIT_NOT_FROM_GRAPH, align 4
  %14 = load %struct.commit*, %struct.commit** %4, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @GENERATION_NUMBER_INFINITY, align 4
  %17 = load %struct.commit*, %struct.commit** %4, align 8
  %18 = getelementptr inbounds %struct.commit, %struct.commit* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @alloc_commit_index(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
