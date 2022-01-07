; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_graph_free_vertex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_graph_free_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owner_graph = type { i32, %struct.owner_vertex** }
%struct.owner_vertex = type { i32, i32, i32 }

@lf_owner_graph_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Freeing vertex with edges\00", align 1
@M_LOCKF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.owner_graph*, %struct.owner_vertex*)* @graph_free_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_free_vertex(%struct.owner_graph* %0, %struct.owner_vertex* %1) #0 {
  %3 = alloca %struct.owner_graph*, align 8
  %4 = alloca %struct.owner_vertex*, align 8
  %5 = alloca %struct.owner_vertex*, align 8
  %6 = alloca i32, align 4
  store %struct.owner_graph* %0, %struct.owner_graph** %3, align 8
  store %struct.owner_vertex* %1, %struct.owner_vertex** %4, align 8
  %7 = load i32, i32* @SX_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* @lf_owner_graph_lock, i32 %7)
  %9 = load %struct.owner_vertex*, %struct.owner_vertex** %4, align 8
  %10 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %9, i32 0, i32 2
  %11 = call i32 @LIST_EMPTY(i32* %10)
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.owner_vertex*, %struct.owner_vertex** %4, align 8
  %14 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %13, i32 0, i32 1
  %15 = call i32 @LIST_EMPTY(i32* %14)
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.owner_vertex*, %struct.owner_vertex** %4, align 8
  %18 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %47, %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %24 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %29 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %28, i32 0, i32 1
  %30 = load %struct.owner_vertex**, %struct.owner_vertex*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.owner_vertex*, %struct.owner_vertex** %30, i64 %32
  %34 = load %struct.owner_vertex*, %struct.owner_vertex** %33, align 8
  store %struct.owner_vertex* %34, %struct.owner_vertex** %5, align 8
  %35 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %36 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %40 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %41 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %40, i32 0, i32 1
  %42 = load %struct.owner_vertex**, %struct.owner_vertex*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.owner_vertex*, %struct.owner_vertex** %42, i64 %45
  store %struct.owner_vertex* %39, %struct.owner_vertex** %46, align 8
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %52 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.owner_vertex*, %struct.owner_vertex** %4, align 8
  %56 = load i32, i32* @M_LOCKF, align 4
  %57 = call i32 @free(%struct.owner_vertex* %55, i32 %56)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @free(%struct.owner_vertex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
