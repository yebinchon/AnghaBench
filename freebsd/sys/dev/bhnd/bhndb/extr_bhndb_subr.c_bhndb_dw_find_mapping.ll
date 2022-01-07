; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_find_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_find_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { i64, %struct.bhndb_regwin* }
%struct.bhndb_regwin = type { i64 }
%struct.bhndb_resources = type { i64, %struct.bhndb_dw_alloc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_dw_alloc* @bhndb_dw_find_mapping(%struct.bhndb_resources* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bhndb_dw_alloc*, align 8
  %5 = alloca %struct.bhndb_resources*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhndb_dw_alloc*, align 8
  %9 = alloca %struct.bhndb_regwin*, align 8
  %10 = alloca i64, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %14 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %11
  %18 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %19 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %18, i32 0, i32 1
  %20 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %20, i64 %21
  store %struct.bhndb_dw_alloc* %22, %struct.bhndb_dw_alloc** %8, align 8
  %23 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %8, align 8
  %24 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %23, i32 0, i32 1
  %25 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %24, align 8
  store %struct.bhndb_regwin* %25, %struct.bhndb_regwin** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %8, align 8
  %28 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %47

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %8, align 8
  %37 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bhndb_regwin*, %struct.bhndb_regwin** %9, align 8
  %40 = getelementptr inbounds %struct.bhndb_regwin, %struct.bhndb_regwin* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = icmp sgt i64 %35, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %47

45:                                               ; preds = %32
  %46 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %8, align 8
  store %struct.bhndb_dw_alloc* %46, %struct.bhndb_dw_alloc** %4, align 8
  br label %51

47:                                               ; preds = %44, %31
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %11

50:                                               ; preds = %11
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %4, align 8
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %4, align 8
  ret %struct.bhndb_dw_alloc* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
