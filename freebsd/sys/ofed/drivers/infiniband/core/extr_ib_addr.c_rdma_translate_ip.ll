; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_translate_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_translate_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rdma_dev_addr = type { i32, i64 }
%struct.net_device = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_translate_ip(%struct.sockaddr* %0, %struct.rdma_dev_addr* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.rdma_dev_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store %struct.rdma_dev_addr* %1, %struct.rdma_dev_addr** %4, align 8
  %7 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %8 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %13 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %16 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.net_device* @dev_get_by_index(i32 %14, i64 %17)
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %23 [
  ]

23:                                               ; preds = %19
  store %struct.net_device* null, %struct.net_device** %5, align 8
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %11
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_LOOPBACK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %42

38:                                               ; preds = %28
  %39 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @rdma_copy_addr(%struct.rdma_dev_addr* %39, %struct.net_device* %40, i32* null)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @dev_put(%struct.net_device* %43)
  br label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @rdma_copy_addr(%struct.rdma_dev_addr*, %struct.net_device*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
