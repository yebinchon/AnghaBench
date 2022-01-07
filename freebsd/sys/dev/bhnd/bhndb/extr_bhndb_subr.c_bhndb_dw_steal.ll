; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_steal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_steal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { i32 }
%struct.bhndb_resources = type { i64, %struct.bhndb_dw_alloc*, i32 }

@.str = private unnamed_addr constant [63 x i8] c"attempting to steal an in-use window while free windows remain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_dw_alloc* @bhndb_dw_steal(%struct.bhndb_resources* %0, i32* %1) #0 {
  %3 = alloca %struct.bhndb_dw_alloc*, align 8
  %4 = alloca %struct.bhndb_resources*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bhndb_dw_alloc*, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %8 = call i32* @bhndb_dw_next_free(%struct.bhndb_resources* %7)
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %13 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %19 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %18, i32 0, i32 2
  %20 = call i32 @mtx_lock_spin(i32* %19)
  %21 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %22 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %21, i32 0, i32 1
  %23 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %22, align 8
  %24 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %23, i64 0
  store %struct.bhndb_dw_alloc* %24, %struct.bhndb_dw_alloc** %6, align 8
  %25 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %26 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  store %struct.bhndb_dw_alloc* %29, %struct.bhndb_dw_alloc** %3, align 8
  br label %30

30:                                               ; preds = %17, %16
  %31 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %3, align 8
  ret %struct.bhndb_dw_alloc* %31
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @bhndb_dw_next_free(%struct.bhndb_resources*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
