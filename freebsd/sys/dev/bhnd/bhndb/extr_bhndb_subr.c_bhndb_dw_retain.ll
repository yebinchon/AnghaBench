; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_retain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_retain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_dw_alloc = type { i32, i32 }
%struct.resource = type { i32 }
%struct.bhndb_dw_rentry = type { %struct.resource* }

@.str = private unnamed_addr constant [50 x i8] c"double-retain of dynamic window for same resource\00", align 1
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_dw_retain(%struct.bhndb_resources* %0, %struct.bhndb_dw_alloc* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhndb_resources*, align 8
  %6 = alloca %struct.bhndb_dw_alloc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.bhndb_dw_rentry*, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %5, align 8
  store %struct.bhndb_dw_alloc* %1, %struct.bhndb_dw_alloc** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %9 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %10 = load %struct.resource*, %struct.resource** %7, align 8
  %11 = call i32* @bhndb_dw_find_resource_entry(%struct.bhndb_dw_alloc* %9, %struct.resource* %10)
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @M_BHND, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = call %struct.bhndb_dw_rentry* @malloc(i32 8, i32 %15, i32 %16)
  store %struct.bhndb_dw_rentry* %17, %struct.bhndb_dw_rentry** %8, align 8
  %18 = load %struct.bhndb_dw_rentry*, %struct.bhndb_dw_rentry** %8, align 8
  %19 = icmp eq %struct.bhndb_dw_rentry* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = load %struct.bhndb_dw_rentry*, %struct.bhndb_dw_rentry** %8, align 8
  %25 = getelementptr inbounds %struct.bhndb_dw_rentry, %struct.bhndb_dw_rentry* %24, i32 0, i32 0
  store %struct.resource* %23, %struct.resource** %25, align 8
  %26 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %27 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %26, i32 0, i32 1
  %28 = load %struct.bhndb_dw_rentry*, %struct.bhndb_dw_rentry** %8, align 8
  %29 = load i32, i32* @dw_link, align 4
  %30 = call i32 @LIST_INSERT_HEAD(i32* %27, %struct.bhndb_dw_rentry* %28, i32 %29)
  %31 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %32 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %35 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bit_set(i32 %33, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %22, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @bhndb_dw_find_resource_entry(%struct.bhndb_dw_alloc*, %struct.resource*) #1

declare dso_local %struct.bhndb_dw_rentry* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bhndb_dw_rentry*, i32) #1

declare dso_local i32 @bit_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
