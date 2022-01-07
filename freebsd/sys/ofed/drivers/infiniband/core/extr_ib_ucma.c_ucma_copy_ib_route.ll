; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_copy_ib_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucma.c_ucma_copy_ib_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_ucm_query_route_resp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rdma_route = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%union.ib_gid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_ucm_query_route_resp*, %struct.rdma_route*)* @ucma_copy_ib_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_copy_ib_route(%struct.rdma_ucm_query_route_resp* %0, %struct.rdma_route* %1) #0 {
  %3 = alloca %struct.rdma_ucm_query_route_resp*, align 8
  %4 = alloca %struct.rdma_route*, align 8
  %5 = alloca %struct.rdma_dev_addr*, align 8
  store %struct.rdma_ucm_query_route_resp* %0, %struct.rdma_ucm_query_route_resp** %3, align 8
  store %struct.rdma_route* %1, %struct.rdma_route** %4, align 8
  %6 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %10 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %62 [
    i32 0, label %14
    i32 2, label %42
    i32 1, label %52
  ]

14:                                               ; preds = %2
  %15 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %16 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.rdma_dev_addr* %17, %struct.rdma_dev_addr** %5, align 8
  %18 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %19 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %20 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = bitcast i32* %23 to %union.ib_gid*
  %25 = call i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr* %18, %union.ib_gid* %24)
  %26 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %27 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = bitcast i32* %31 to %union.ib_gid*
  %33 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %26, %union.ib_gid* %32)
  %34 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %5, align 8
  %35 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %34)
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %38 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %44 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 1
  %47 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %48 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = call i32 @ib_copy_path_rec_to_user(%struct.TYPE_4__* %46, i32* %50)
  br label %52

52:                                               ; preds = %2, %42
  %53 = load %struct.rdma_ucm_query_route_resp*, %struct.rdma_ucm_query_route_resp** %3, align 8
  %54 = getelementptr inbounds %struct.rdma_ucm_query_route_resp, %struct.rdma_ucm_query_route_resp* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = load %struct.rdma_route*, %struct.rdma_route** %4, align 8
  %58 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @ib_copy_path_rec_to_user(%struct.TYPE_4__* %56, i32* %60)
  br label %63

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %62, %52, %14
  ret void
}

declare dso_local i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr*, %union.ib_gid*) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, %union.ib_gid*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i32 @ib_copy_path_rec_to_user(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
