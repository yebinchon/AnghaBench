; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_device.c_ib_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { {}* }
%struct.ib_port_attr = type { i64 }
%union.ib_gid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_query_port(%struct.ib_device* %0, i64 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %union.ib_gid, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call i64 @rdma_start_port(%struct.ib_device* %11)
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call i64 @rdma_end_port(%struct.ib_device* %16)
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %14
  %23 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %24 = call i32 @memset(%struct.ib_port_attr* %23, i32 0, i32 8)
  %25 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %26 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.ib_device*, i64, %struct.ib_port_attr*)**
  %28 = load i32 (%struct.ib_device*, i64, %struct.ib_port_attr*)*, i32 (%struct.ib_device*, i64, %struct.ib_port_attr*)** %27, align 8
  %29 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %32 = call i32 %28(%struct.ib_device* %29, i64 %30, %struct.ib_port_attr* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %22
  %36 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %37 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %22
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %35
  %43 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @rdma_port_get_link_layer(%struct.ib_device* %43, i64 %44)
  %46 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %64

49:                                               ; preds = %42
  %50 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ib_query_gid(%struct.ib_device* %50, i64 %51, i32 0, %union.ib_gid* %8, i32* null)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %64

57:                                               ; preds = %49
  %58 = bitcast %union.ib_gid* %8 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @be64_to_cpu(i32 %60)
  %62 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %63 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %55, %48, %40, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

declare dso_local i64 @rdma_end_port(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i64 @rdma_port_get_link_layer(%struct.ib_device*, i64) #1

declare dso_local i32 @ib_query_gid(%struct.ib_device*, i64, i32, %union.ib_gid*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
