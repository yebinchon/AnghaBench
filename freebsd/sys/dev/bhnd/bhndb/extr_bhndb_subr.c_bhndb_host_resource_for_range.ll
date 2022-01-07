; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_host_resource_for_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_host_resource_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.bhndb_host_resources = type { %struct.TYPE_2__*, %struct.resource** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @bhndb_host_resource_for_range(%struct.bhndb_host_resources* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.bhndb_host_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.resource*, align 8
  store %struct.bhndb_host_resources* %0, %struct.bhndb_host_resources** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %55, %4
  %13 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %6, align 8
  %14 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %58

21:                                               ; preds = %12
  %22 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %6, align 8
  %23 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %22, i32 0, i32 1
  %24 = load %struct.resource**, %struct.resource*** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.resource*, %struct.resource** %24, i64 %25
  %27 = load %struct.resource*, %struct.resource** %26, align 8
  store %struct.resource* %27, %struct.resource** %11, align 8
  %28 = load %struct.bhndb_host_resources*, %struct.bhndb_host_resources** %6, align 8
  %29 = getelementptr inbounds %struct.bhndb_host_resources, %struct.bhndb_host_resources* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %55

38:                                               ; preds = %21
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  %40 = call i32 @rman_get_start(%struct.resource* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %55

44:                                               ; preds = %38
  %45 = load %struct.resource*, %struct.resource** %11, align 8
  %46 = call i32 @rman_get_end(%struct.resource* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %44
  %54 = load %struct.resource*, %struct.resource** %11, align 8
  store %struct.resource* %54, %struct.resource** %5, align 8
  br label %59

55:                                               ; preds = %52, %43, %37
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %12

58:                                               ; preds = %12
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %60
}

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
