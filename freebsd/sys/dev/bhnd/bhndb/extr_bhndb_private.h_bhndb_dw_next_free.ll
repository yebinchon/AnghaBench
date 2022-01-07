; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_private.h_bhndb_dw_next_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_private.h_bhndb_dw_next_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { i32 }
%struct.bhndb_resources = type { %struct.bhndb_dw_alloc*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"free list out of sync with refs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bhndb_dw_alloc* (%struct.bhndb_resources*)* @bhndb_dw_next_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bhndb_dw_alloc* @bhndb_dw_next_free(%struct.bhndb_resources* %0) #0 {
  %2 = alloca %struct.bhndb_dw_alloc*, align 8
  %3 = alloca %struct.bhndb_resources*, align 8
  %4 = alloca %struct.bhndb_dw_alloc*, align 8
  %5 = alloca i32, align 4
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %3, align 8
  %6 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %7 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %10 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bit_ffc(i32 %8, i32 %11, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %2, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.bhndb_resources*, %struct.bhndb_resources** %3, align 8
  %18 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %17, i32 0, i32 0
  %19 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %19, i64 %21
  store %struct.bhndb_dw_alloc* %22, %struct.bhndb_dw_alloc** %4, align 8
  %23 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %4, align 8
  %24 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %23, i32 0, i32 0
  %25 = call i32 @LIST_EMPTY(i32* %24)
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %4, align 8
  store %struct.bhndb_dw_alloc* %27, %struct.bhndb_dw_alloc** %2, align 8
  br label %28

28:                                               ; preds = %16, %15
  %29 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %2, align 8
  ret %struct.bhndb_dw_alloc* %29
}

declare dso_local i32 @bit_ffc(i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
