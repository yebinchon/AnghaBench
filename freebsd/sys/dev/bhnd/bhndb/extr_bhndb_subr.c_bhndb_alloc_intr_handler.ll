; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_alloc_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_intr_handler = type { i32, i32*, %struct.bhndb_intr_isrc*, %struct.resource*, i32 }
%struct.resource = type { i32 }
%struct.bhndb_intr_isrc = type { i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_intr_handler* @bhndb_alloc_intr_handler(i32 %0, %struct.resource* %1, %struct.bhndb_intr_isrc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.bhndb_intr_isrc*, align 8
  %7 = alloca %struct.bhndb_intr_handler*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.resource* %1, %struct.resource** %5, align 8
  store %struct.bhndb_intr_isrc* %2, %struct.bhndb_intr_isrc** %6, align 8
  %8 = load i32, i32* @M_BHND, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.bhndb_intr_handler* @malloc(i32 40, i32 %8, i32 %11)
  store %struct.bhndb_intr_handler* %12, %struct.bhndb_intr_handler** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %7, align 8
  %15 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %7, align 8
  %18 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %17, i32 0, i32 3
  store %struct.resource* %16, %struct.resource** %18, align 8
  %19 = load %struct.bhndb_intr_isrc*, %struct.bhndb_intr_isrc** %6, align 8
  %20 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %7, align 8
  %21 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %20, i32 0, i32 2
  store %struct.bhndb_intr_isrc* %19, %struct.bhndb_intr_isrc** %21, align 8
  %22 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %7, align 8
  %23 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %7, align 8
  %25 = getelementptr inbounds %struct.bhndb_intr_handler, %struct.bhndb_intr_handler* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.bhndb_intr_handler*, %struct.bhndb_intr_handler** %7, align 8
  ret %struct.bhndb_intr_handler* %26
}

declare dso_local %struct.bhndb_intr_handler* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
