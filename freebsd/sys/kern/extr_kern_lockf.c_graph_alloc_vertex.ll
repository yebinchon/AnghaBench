; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_graph_alloc_vertex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_graph_alloc_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owner_vertex = type { i64, %struct.lock_owner*, i32, i32, i32 }
%struct.owner_graph = type { i64, i64, %struct.owner_vertex**, i32, i8* }
%struct.lock_owner = type { i32 }

@lf_owner_graph_lock = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@M_LOCKF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.owner_vertex* (%struct.owner_graph*, %struct.lock_owner*)* @graph_alloc_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.owner_vertex* @graph_alloc_vertex(%struct.owner_graph* %0, %struct.lock_owner* %1) #0 {
  %3 = alloca %struct.owner_graph*, align 8
  %4 = alloca %struct.lock_owner*, align 8
  %5 = alloca %struct.owner_vertex*, align 8
  store %struct.owner_graph* %0, %struct.owner_graph** %3, align 8
  store %struct.lock_owner* %1, %struct.lock_owner** %4, align 8
  %6 = load i32, i32* @SX_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* @lf_owner_graph_lock, i32 %6)
  %8 = load i32, i32* @M_LOCKF, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call i8* @malloc(i32 32, i32 %8, i32 %9)
  %11 = bitcast i8* %10 to %struct.owner_vertex*
  store %struct.owner_vertex* %11, %struct.owner_vertex** %5, align 8
  %12 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %13 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %16 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %21 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %20, i32 0, i32 2
  %22 = load %struct.owner_vertex**, %struct.owner_vertex*** %21, align 8
  %23 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %24 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 2, %25
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_LOCKF, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.owner_vertex** @realloc(%struct.owner_vertex** %22, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %33 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %32, i32 0, i32 2
  store %struct.owner_vertex** %31, %struct.owner_vertex*** %33, align 8
  %34 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %35 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @M_LOCKF, align 4
  %38 = call i32 @free(i8* %36, i32 %37)
  %39 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %40 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 2, %41
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @M_LOCKF, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = call i8* @malloc(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %49 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %51 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = mul i64 2, %52
  %54 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %55 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %19, %2
  %57 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %58 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %61 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %63 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %66 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %68 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %69 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %68, i32 0, i32 2
  %70 = load %struct.owner_vertex**, %struct.owner_vertex*** %69, align 8
  %71 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %72 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.owner_vertex*, %struct.owner_vertex** %70, i64 %73
  store %struct.owner_vertex* %67, %struct.owner_vertex** %74, align 8
  %75 = load %struct.owner_graph*, %struct.owner_graph** %3, align 8
  %76 = getelementptr inbounds %struct.owner_graph, %struct.owner_graph* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %80 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %79, i32 0, i32 3
  %81 = call i32 @LIST_INIT(i32* %80)
  %82 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %83 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %82, i32 0, i32 2
  %84 = call i32 @LIST_INIT(i32* %83)
  %85 = load %struct.lock_owner*, %struct.lock_owner** %4, align 8
  %86 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  %87 = getelementptr inbounds %struct.owner_vertex, %struct.owner_vertex* %86, i32 0, i32 1
  store %struct.lock_owner* %85, %struct.lock_owner** %87, align 8
  %88 = load %struct.owner_vertex*, %struct.owner_vertex** %5, align 8
  ret %struct.owner_vertex* %88
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local %struct.owner_vertex** @realloc(%struct.owner_vertex**, i32, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
