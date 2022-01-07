; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_resolve_ip_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_rdma_resolve_ip_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.rdma_dev_addr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_resolve_ip_route(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.rdma_dev_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %7, align 8
  %10 = bitcast %struct.sockaddr_storage* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %9, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = icmp ne %struct.sockaddr* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %29 = call i32 @rdma_addr_size(%struct.sockaddr* %28)
  %30 = call i32 @memcpy(%struct.sockaddr* %26, %struct.sockaddr* %27, i32 %29)
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %40 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %41 = call i32 @addr_resolve(%struct.sockaddr* %38, %struct.sockaddr* %39, %struct.rdma_dev_addr* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #2

declare dso_local i32 @rdma_addr_size(%struct.sockaddr*) #2

declare dso_local i32 @addr_resolve(%struct.sockaddr*, %struct.sockaddr*, %struct.rdma_dev_addr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
