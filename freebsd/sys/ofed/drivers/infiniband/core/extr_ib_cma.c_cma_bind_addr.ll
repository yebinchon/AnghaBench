; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_bind_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_bind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_ib = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_IB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.sockaddr*, %struct.sockaddr*)* @cma_bind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_bind_addr(%struct.rdma_cm_id* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %10 = icmp ne %struct.sockaddr* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %5, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %16
  %33 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %34 = bitcast %struct.sockaddr* %33 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %34, %struct.sockaddr_in6** %7, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %36, %struct.sockaddr_in6** %8, align 8
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 1
  %44 = call i64 @IN6_IS_SCOPE_LINKLOCAL(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %32
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 1
  %49 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %32
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %56 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %46
  br label %76

61:                                               ; preds = %16
  %62 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %63 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AF_IB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %69 = bitcast %struct.sockaddr* %68 to %struct.sockaddr_ib*
  %70 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %73 = bitcast %struct.sockaddr* %72 to %struct.sockaddr_ib*
  %74 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %61
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %11
  %78 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %79 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %80 = call i32 @rdma_bind_addr(%struct.rdma_cm_id* %78, %struct.sockaddr* %79)
  ret i32 %80
}

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(i32*) #1

declare dso_local i32 @rdma_bind_addr(%struct.rdma_cm_id*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
