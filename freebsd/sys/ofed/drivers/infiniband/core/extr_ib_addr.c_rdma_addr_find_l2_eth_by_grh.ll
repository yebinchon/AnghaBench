; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_addr_find_l2_eth_by_grh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_addr_find_l2_eth_by_grh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ib_gid = type { i32 }
%struct.net_device = type { i32 }
%struct.rdma_dev_addr = type { i32, i32, i32, i32 }
%struct.resolve_cb_context = type { i32, i32, %struct.rdma_dev_addr* }
%union.anon = type { %struct.sockaddr }
%struct.sockaddr = type { i32 }

@self = common dso_local global i32 0, align 4
@resolve_cb = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_addr_find_l2_eth_by_grh(%union.ib_gid* %0, %union.ib_gid* %1, i32* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rdma_dev_addr, align 4
  %14 = alloca %struct.resolve_cb_context, align 8
  %15 = alloca %union.anon, align 4
  %16 = alloca %union.anon, align 4
  store %union.ib_gid* %0, %union.ib_gid** %7, align 8
  store %union.ib_gid* %1, %union.ib_gid** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = bitcast %union.anon* %15 to %struct.sockaddr*
  %18 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %19 = call i32 @rdma_gid2ip(%struct.sockaddr* %17, %union.ib_gid* %18)
  %20 = bitcast %union.anon* %16 to %struct.sockaddr*
  %21 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %22 = call i32 @rdma_gid2ip(%struct.sockaddr* %20, %union.ib_gid* %21)
  %23 = call i32 @memset(%struct.rdma_dev_addr* %13, i32 0, i32 16)
  %24 = load %struct.net_device*, %struct.net_device** %10, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %13, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = call i32 @dev_net(%struct.net_device* %28)
  %30 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %13, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %14, i32 0, i32 2
  store %struct.rdma_dev_addr* %13, %struct.rdma_dev_addr** %31, align 8
  %32 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %14, i32 0, i32 1
  %33 = call i32 @init_completion(i32* %32)
  %34 = bitcast %union.anon* %15 to %struct.sockaddr*
  %35 = bitcast %union.anon* %16 to %struct.sockaddr*
  %36 = load i32, i32* @resolve_cb, align 4
  %37 = call i32 @rdma_resolve_ip(i32* @self, %struct.sockaddr* %34, %struct.sockaddr* %35, %struct.rdma_dev_addr* %13, i32 1000, i32 %36, %struct.resolve_cb_context* %14)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %65

42:                                               ; preds = %5
  %43 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %14, i32 0, i32 1
  %44 = call i32 @wait_for_completion(i32* %43)
  %45 = getelementptr inbounds %struct.resolve_cb_context, %struct.resolve_cb_context* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %65

51:                                               ; preds = %42
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcpy(i32* %52, i32 %54, i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %49, %40
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, %union.ib_gid*) #1

declare dso_local i32 @memset(%struct.rdma_dev_addr*, i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rdma_resolve_ip(i32*, %struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*, i32, i32, %struct.resolve_cb_context*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
