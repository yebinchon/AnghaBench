; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_query_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_path_rec = type { i32 }
%struct.cma_work = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_route }
%struct.rdma_route = type { i32, %struct.ib_sa_path_rec* }

@RDMA_CM_ROUTE_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ROUTE_ERROR = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ib_sa_path_rec*, i8*)* @cma_query_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_query_handler(i32 %0, %struct.ib_sa_path_rec* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_path_rec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cma_work*, align 8
  %8 = alloca %struct.rdma_route*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_path_rec* %1, %struct.ib_sa_path_rec** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cma_work*
  store %struct.cma_work* %10, %struct.cma_work** %7, align 8
  %11 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %12 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.rdma_route* %15, %struct.rdma_route** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.rdma_route*, %struct.rdma_route** %8, align 8
  %20 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.rdma_route*, %struct.rdma_route** %8, align 8
  %22 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %21, i32 0, i32 1
  %23 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %22, align 8
  %24 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %5, align 8
  %25 = bitcast %struct.ib_sa_path_rec* %23 to i8*
  %26 = bitcast %struct.ib_sa_path_rec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %42

27:                                               ; preds = %3
  %28 = load i32, i32* @RDMA_CM_ROUTE_QUERY, align 4
  %29 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %30 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %32 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %33 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RDMA_CM_EVENT_ROUTE_ERROR, align 4
  %35 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %36 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %40 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %27, %18
  %43 = load i32, i32* @cma_wq, align 4
  %44 = load %struct.cma_work*, %struct.cma_work** %7, align 8
  %45 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %44, i32 0, i32 0
  %46 = call i32 @queue_work(i32 %43, i32* %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @queue_work(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
