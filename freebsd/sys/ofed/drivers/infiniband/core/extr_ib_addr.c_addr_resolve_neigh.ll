; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_addr_resolve_neigh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_addr_resolve_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i64, i32, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.sockaddr*, i32*, %struct.rdma_dev_addr*)* @addr_resolve_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_resolve_neigh(%struct.ifnet* %0, %struct.sockaddr* %1, i32* %2, %struct.rdma_dev_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rdma_dev_addr*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.rdma_dev_addr* %3, %struct.rdma_dev_addr** %9, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_LOOPBACK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %4
  %18 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %19 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %27 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %31 = call i32 @rdma_translate_ip(%struct.sockaddr* %29, %struct.rdma_dev_addr* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %36 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %39 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_ADDR_LEN, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %28
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %4
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IFF_NOARP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %54 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @rdma_copy_addr(%struct.rdma_dev_addr* %53, %struct.ifnet* %54, i32* %55)
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %9, align 8
  %59 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %60 = call i32 @rdma_copy_addr(%struct.rdma_dev_addr* %58, %struct.ifnet* %59, i32* null)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %52, %43
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @rdma_translate_ip(%struct.sockaddr*, %struct.rdma_dev_addr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rdma_copy_addr(%struct.rdma_dev_addr*, %struct.ifnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
