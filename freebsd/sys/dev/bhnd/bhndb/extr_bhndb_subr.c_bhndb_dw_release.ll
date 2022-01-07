; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_dw_alloc = type { i32, i32 }
%struct.resource = type { i32 }
%struct.bhndb_dw_rentry = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"over release of resource entry\00", align 1
@dw_link = common dso_local global i32 0, align 4
@M_BHND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhndb_dw_release(%struct.bhndb_resources* %0, %struct.bhndb_dw_alloc* %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.bhndb_resources*, align 8
  %5 = alloca %struct.bhndb_dw_alloc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.bhndb_dw_rentry*, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %4, align 8
  store %struct.bhndb_dw_alloc* %1, %struct.bhndb_dw_alloc** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %8 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %5, align 8
  %9 = load %struct.resource*, %struct.resource** %6, align 8
  %10 = call %struct.bhndb_dw_rentry* @bhndb_dw_find_resource_entry(%struct.bhndb_dw_alloc* %8, %struct.resource* %9)
  store %struct.bhndb_dw_rentry* %10, %struct.bhndb_dw_rentry** %7, align 8
  %11 = load %struct.bhndb_dw_rentry*, %struct.bhndb_dw_rentry** %7, align 8
  %12 = icmp ne %struct.bhndb_dw_rentry* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.bhndb_dw_rentry*, %struct.bhndb_dw_rentry** %7, align 8
  %16 = load i32, i32* @dw_link, align 4
  %17 = call i32 @LIST_REMOVE(%struct.bhndb_dw_rentry* %15, i32 %16)
  %18 = load %struct.bhndb_dw_rentry*, %struct.bhndb_dw_rentry** %7, align 8
  %19 = load i32, i32* @M_BHND, align 4
  %20 = call i32 @free(%struct.bhndb_dw_rentry* %18, i32 %19)
  %21 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %5, align 8
  %22 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %21, i32 0, i32 1
  %23 = call i64 @LIST_EMPTY(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %27 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %5, align 8
  %30 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bit_clear(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %25, %3
  ret void
}

declare dso_local %struct.bhndb_dw_rentry* @bhndb_dw_find_resource_entry(%struct.bhndb_dw_alloc*, %struct.resource*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bhndb_dw_rentry*, i32) #1

declare dso_local i32 @free(%struct.bhndb_dw_rentry*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @bit_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
