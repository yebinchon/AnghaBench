; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_remove_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_remove_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owner_graph = type { i32 }
%struct.lockf_edge = type { %struct.lockf_entry*, %struct.lockf_entry* }
%struct.lockf_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@lf_owner_graph = common dso_local global %struct.owner_graph zeroinitializer, align 4
@le_outlink = common dso_local global i32 0, align 4
@le_inlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockf_edge*)* @lf_remove_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf_remove_edge(%struct.lockf_edge* %0) #0 {
  %2 = alloca %struct.lockf_edge*, align 8
  %3 = alloca %struct.owner_graph*, align 8
  %4 = alloca %struct.lockf_entry*, align 8
  %5 = alloca %struct.lockf_entry*, align 8
  store %struct.lockf_edge* %0, %struct.lockf_edge** %2, align 8
  store %struct.owner_graph* @lf_owner_graph, %struct.owner_graph** %3, align 8
  %6 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %7 = getelementptr inbounds %struct.lockf_edge, %struct.lockf_edge* %6, i32 0, i32 1
  %8 = load %struct.lockf_entry*, %struct.lockf_entry** %7, align 8
  store %struct.lockf_entry* %8, %struct.lockf_entry** %4, align 8
  %9 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %10 = getelementptr inbounds %struct.lockf_edge, %struct.lockf_edge* %9, i32 0, i32 0
  %11 = load %struct.lockf_entry*, %struct.lockf_entry** %10, align 8
  store %struct.lockf_entry* %11, %struct.lockf_entry** %5, align 8
  %12 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %13 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %14 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %19 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @graph_remove_edge(%struct.owner_graph* %12, i32 %17, i32 %22)
  %24 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %25 = load i32, i32* @le_outlink, align 4
  %26 = call i32 @LIST_REMOVE(%struct.lockf_edge* %24, i32 %25)
  %27 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %28 = load i32, i32* @le_inlink, align 4
  %29 = call i32 @LIST_REMOVE(%struct.lockf_edge* %27, i32 %28)
  %30 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %31 = getelementptr inbounds %struct.lockf_edge, %struct.lockf_edge* %30, i32 0, i32 1
  store %struct.lockf_entry* null, %struct.lockf_entry** %31, align 8
  %32 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %33 = getelementptr inbounds %struct.lockf_edge, %struct.lockf_edge* %32, i32 0, i32 0
  store %struct.lockf_entry* null, %struct.lockf_entry** %33, align 8
  %34 = load %struct.lockf_edge*, %struct.lockf_edge** %2, align 8
  %35 = call i32 @lf_free_edge(%struct.lockf_edge* %34)
  ret void
}

declare dso_local i32 @graph_remove_edge(%struct.owner_graph*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.lockf_edge*, i32) #1

declare dso_local i32 @lf_free_edge(%struct.lockf_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
