; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_ib_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_resolve_ib_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cma_work = type { i32, %struct.TYPE_8__, i32, i32, %struct.rdma_id_private* }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_ib = type { i32 }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_work_handler = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_QUERY = common dso_local global i32 0, align 4
@RDMA_CM_ADDR_RESOLVED = common dso_local global i32 0, align 4
@RDMA_CM_EVENT_ADDR_RESOLVED = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*)* @cma_resolve_ib_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_addr(%struct.rdma_id_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_work*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cma_work* @kzalloc(i32 24, i32 %6)
  store %struct.cma_work* %7, %struct.cma_work** %4, align 8
  %8 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %9 = icmp ne %struct.cma_work* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %15 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %20 = call i32 @cma_resolve_ib_dev(%struct.rdma_id_private* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %61

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %27 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %32 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.sockaddr_ib*
  %37 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %union.ib_gid*
  %39 = call i32 @rdma_addr_set_dgid(i32* %30, %union.ib_gid* %38)
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %41 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %42 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %41, i32 0, i32 4
  store %struct.rdma_id_private* %40, %struct.rdma_id_private** %42, align 8
  %43 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %44 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %43, i32 0, i32 0
  %45 = load i32, i32* @cma_work_handler, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load i32, i32* @RDMA_CM_ADDR_QUERY, align 4
  %48 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %49 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @RDMA_CM_ADDR_RESOLVED, align 4
  %51 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %52 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @RDMA_CM_EVENT_ADDR_RESOLVED, align 4
  %54 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %55 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @cma_wq, align 4
  %58 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %59 = getelementptr inbounds %struct.cma_work, %struct.cma_work* %58, i32 0, i32 0
  %60 = call i32 @queue_work(i32 %57, i32* %59)
  store i32 0, i32* %2, align 4
  br label %65

61:                                               ; preds = %23
  %62 = load %struct.cma_work*, %struct.cma_work** %4, align 8
  %63 = call i32 @kfree(%struct.cma_work* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %25, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.cma_work* @kzalloc(i32, i32) #1

declare dso_local i32 @cma_resolve_ib_dev(%struct.rdma_id_private*) #1

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
