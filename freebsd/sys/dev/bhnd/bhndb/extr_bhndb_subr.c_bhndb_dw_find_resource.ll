; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_find_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_dw_find_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_dw_alloc = type { i32 }
%struct.bhndb_resources = type { i64, %struct.bhndb_dw_alloc* }
%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhndb_dw_alloc* @bhndb_dw_find_resource(%struct.bhndb_resources* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.bhndb_dw_alloc*, align 8
  %4 = alloca %struct.bhndb_resources*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.bhndb_dw_alloc*, align 8
  %7 = alloca i64, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %11 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %16 = getelementptr inbounds %struct.bhndb_resources, %struct.bhndb_resources* %15, i32 0, i32 1
  %17 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.bhndb_dw_alloc, %struct.bhndb_dw_alloc* %17, i64 %18
  store %struct.bhndb_dw_alloc* %19, %struct.bhndb_dw_alloc** %6, align 8
  %20 = load %struct.bhndb_resources*, %struct.bhndb_resources** %4, align 8
  %21 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %22 = call i64 @bhndb_dw_is_free(%struct.bhndb_resources* %20, %struct.bhndb_dw_alloc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %33

25:                                               ; preds = %14
  %26 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = call i32* @bhndb_dw_find_resource_entry(%struct.bhndb_dw_alloc* %26, %struct.resource* %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %6, align 8
  store %struct.bhndb_dw_alloc* %31, %struct.bhndb_dw_alloc** %3, align 8
  br label %37

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %8

36:                                               ; preds = %8
  store %struct.bhndb_dw_alloc* null, %struct.bhndb_dw_alloc** %3, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.bhndb_dw_alloc*, %struct.bhndb_dw_alloc** %3, align 8
  ret %struct.bhndb_dw_alloc* %38
}

declare dso_local i64 @bhndb_dw_is_free(%struct.bhndb_resources*, %struct.bhndb_dw_alloc*) #1

declare dso_local i32* @bhndb_dw_find_resource_entry(%struct.bhndb_dw_alloc*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
