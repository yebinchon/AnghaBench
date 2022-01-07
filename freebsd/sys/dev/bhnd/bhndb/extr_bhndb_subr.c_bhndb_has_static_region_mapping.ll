; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_has_static_region_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_has_static_region_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_resources = type { i32 }
%struct.bhndb_region = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_has_static_region_mapping(%struct.bhndb_resources* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhndb_resources*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bhndb_region*, align 8
  %9 = alloca i64, align 8
  store %struct.bhndb_resources* %0, %struct.bhndb_resources** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %9, align 8
  br label %11

11:                                               ; preds = %34, %3
  %12 = load %struct.bhndb_resources*, %struct.bhndb_resources** %5, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call %struct.bhndb_region* @bhndb_find_resource_region(%struct.bhndb_resources* %12, i64 %13, i32 1)
  store %struct.bhndb_region* %14, %struct.bhndb_region** %8, align 8
  %15 = icmp ne %struct.bhndb_region* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.bhndb_region*, %struct.bhndb_region** %8, align 8
  %18 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load %struct.bhndb_region*, %struct.bhndb_region** %8, align 8
  %24 = getelementptr inbounds %struct.bhndb_region, %struct.bhndb_region* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %36

34:                                               ; preds = %22
  br label %11

35:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.bhndb_region* @bhndb_find_resource_region(%struct.bhndb_resources*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
