; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_loopback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cma_work = type { i32, %struct.TYPE_8__, i32, i32, %struct.rdma_id_private* }
%struct.TYPE_8__ = type { i32 }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_work_handler = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_RESOLVED = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_loopback(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_work*, align 8
  %5 = alloca %union.ib_gid, align 4
  %6 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cma_work* @kzalloc(i32 24, i32 %7)
  store %struct.cma_work* %8, %struct.cma_work** %4, align 8
  %9 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %10 = icmp ne %struct.cma_work* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %21 = call i32 @cma_bind_loopback(%struct.rdma_id_private* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %60

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @rdma_addr_get_sgid(i32* %31, %union.ib_gid* %5)
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %34 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @rdma_addr_set_dgid(i32* %37, %union.ib_gid* %5)
  %39 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %40 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %41 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %40, i32 0, i32 4
  store %struct.rdma_id_private* %39, %struct.rdma_id_private** %41, align 8
  %42 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %43 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %42, i32 0, i32 0
  %44 = load i32, i32* @cma_work_handler, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load i32, i32* @RDMA_CM_ADDR_QUERY, align 4
  %47 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %48 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %50 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %51 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @RDMA_CM_EVENT_ADDR_RESOLVED, align 4
  %53 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %54 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @cma_wq, align 4
  %57 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %58 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %57, i32 0, i32 0
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %24
  %61 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %62 = call i32 @kfree(%struct.cma_work* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %26, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_bind_loopback(%struct.rdma_id_private*) #1

declare dso_local i32 @rdma_addr_get_sgid(i32*, %union.ib_gid*) #1

declare dso_local i32 @rdma_addr_set_dgid(i32*, %union.ib_gid*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.cma_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
