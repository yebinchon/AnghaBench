; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_addr_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_addr_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*)* @addr_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_resolve(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca %struct.epoch_tracker, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %7, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  %14 = load i32, i32* @MAX_ADDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %72

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NET_EPOCH_ENTER(i32 %30)
  %32 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %49 [
    i32 129, label %35
    i32 128, label %42
  ]

35:                                               ; preds = %28
  %36 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %37 = bitcast %struct.sockaddr* %36 to %struct.sockaddr_in*
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = bitcast %struct.sockaddr* %38 to %struct.sockaddr_in*
  %40 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %41 = call i32 @addr4_resolve(%struct.sockaddr_in* %37, %struct.sockaddr_in* %39, %struct.rdma_dev_addr* %40, i32* %17, %struct.net_device** %9)
  store i32 %41, i32* %12, align 4
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in6*
  %45 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %46 = bitcast %struct.sockaddr* %45 to %struct.sockaddr_in6*
  %47 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %48 = call i32 @addr6_resolve(%struct.sockaddr_in6* %44, %struct.sockaddr_in6* %46, %struct.rdma_dev_addr* %47, i32* %17, %struct.net_device** %9)
  store i32 %48, i32* %12, align 4
  br label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @EADDRNOTAVAIL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %49, %42, %35
  %53 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NET_EPOCH_EXIT(i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %72

60:                                               ; preds = %52
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %63 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %64 = call i32 @addr_resolve_neigh(%struct.net_device* %61, %struct.sockaddr* %62, i32* %17, %struct.rdma_dev_addr* %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.net_device*, %struct.net_device** %9, align 8
  %66 = call i32 @dev_net(%struct.net_device* %65)
  %67 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %68 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = call i32 @dev_put(%struct.net_device* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %60, %58, %25
  %73 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #2

declare dso_local i32 @addr4_resolve(%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.rdma_dev_addr*, i32*, %struct.net_device**) #2

declare dso_local i32 @addr6_resolve(%struct.sockaddr_in6*, %struct.sockaddr_in6*, %struct.rdma_dev_addr*, i32*, %struct.net_device**) #2

declare dso_local i32 @NET_EPOCH_EXIT(i32) #2

declare dso_local i32 @addr_resolve_neigh(%struct.net_device*, %struct.sockaddr*, i32*, %struct.rdma_dev_addr*) #2

declare dso_local i32 @dev_net(%struct.net_device*) #2

declare dso_local i32 @dev_put(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
