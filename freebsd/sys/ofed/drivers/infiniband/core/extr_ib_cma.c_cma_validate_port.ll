; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_validate_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_validate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.rdma_dev_addr = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_INFINIBAND = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IB_GID_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %union.ib_gid*, %struct.rdma_dev_addr*)* @cma_validate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_validate_port(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3, %struct.rdma_dev_addr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca %struct.rdma_dev_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store %struct.rdma_dev_addr* %4, %struct.rdma_dev_addr** %11, align 8
  %15 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %11, align 8
  %16 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @rdma_protocol_ib(%struct.ib_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %74

30:                                               ; preds = %23, %5
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @ARPHRD_INFINIBAND, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @rdma_protocol_ib(%struct.ib_device* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @ARPHRD_ETHER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @rdma_protocol_roce(%struct.ib_device* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %11, align 8
  %52 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %11, align 8
  %55 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.net_device* @dev_get_by_index(i32 %53, i32 %56)
  store %struct.net_device* %57, %struct.net_device** %13, align 8
  br label %60

58:                                               ; preds = %45, %41
  store %struct.net_device* null, %struct.net_device** %13, align 8
  %59 = load i32, i32* @IB_GID_TYPE_IB, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %62 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.net_device*, %struct.net_device** %13, align 8
  %66 = call i32 @ib_find_cached_gid_by_port(%struct.ib_device* %61, %union.ib_gid* %62, i32 %63, i32 %64, %struct.net_device* %65, i32* null)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.net_device*, %struct.net_device** %13, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.net_device*, %struct.net_device** %13, align 8
  %71 = call i32 @dev_put(%struct.net_device* %70)
  br label %72

72:                                               ; preds = %69, %60
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %39, %28
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i64 @rdma_protocol_roce(%struct.ib_device*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @ib_find_cached_gid_by_port(%struct.ib_device*, %union.ib_gid*, i32, i32, %struct.net_device*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
