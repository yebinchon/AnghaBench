; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_get_cached_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_ib_get_cached_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ib_gid_table** }
%struct.ib_gid_table = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_cached_gid(%struct.ib_device* %0, i64 %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %struct.ib_gid_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ib_gid_table**, align 8
  %15 = alloca %struct.ib_gid_table*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %11, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %17 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %18, align 8
  store %struct.ib_gid_table** %19, %struct.ib_gid_table*** %14, align 8
  %20 = load %struct.ib_gid_table**, %struct.ib_gid_table*** %14, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %23 = call i64 @rdma_start_port(%struct.ib_device* %22)
  %24 = sub i64 %21, %23
  %25 = getelementptr inbounds %struct.ib_gid_table*, %struct.ib_gid_table** %20, i64 %24
  %26 = load %struct.ib_gid_table*, %struct.ib_gid_table** %25, align 8
  store %struct.ib_gid_table* %26, %struct.ib_gid_table** %15, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %29 = call i64 @rdma_start_port(%struct.ib_device* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %5
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %34 = call i64 @rdma_end_port(%struct.ib_device* %33)
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %31
  %40 = load %struct.ib_gid_table*, %struct.ib_gid_table** %15, align 8
  %41 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %40, i32 0, i32 0
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @read_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %48 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %49 = call i32 @__ib_cache_gid_get(%struct.ib_device* %44, i64 %45, i32 %46, %union.ib_gid* %47, %struct.ib_gid_attr* %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.ib_gid_table*, %struct.ib_gid_table** %15, align 8
  %51 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %50, i32 0, i32 0
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @read_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %39, %36
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__ib_cache_gid_get(%struct.ib_device*, i64, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
