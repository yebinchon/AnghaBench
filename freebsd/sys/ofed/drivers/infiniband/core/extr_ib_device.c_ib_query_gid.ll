; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_query_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 (%struct.ib_device*, i32, i32, %union.ib_gid*)* }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.ib_gid_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %struct.ib_gid_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store %struct.ib_gid_attr* %4, %struct.ib_gid_attr** %11, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @rdma_cap_roce_gid_table(%struct.ib_device* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %21 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %22 = call i32 @ib_get_cached_gid(%struct.ib_device* %17, i32 %18, i32 %19, %union.ib_gid* %20, %struct.ib_gid_attr* %21)
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %5
  %24 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %11, align 8
  %25 = icmp ne %struct.ib_gid_attr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = load i32 (%struct.ib_device*, i32, i32, %union.ib_gid*)*, i32 (%struct.ib_device*, i32, i32, %union.ib_gid*)** %31, align 8
  %33 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %37 = call i32 %32(%struct.ib_device* %33, i32 %34, i32 %35, %union.ib_gid* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29, %26, %16
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @rdma_cap_roce_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @ib_get_cached_gid(%struct.ib_device*, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
