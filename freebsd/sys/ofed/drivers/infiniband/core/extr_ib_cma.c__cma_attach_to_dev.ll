; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c__cma_attach_to_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c__cma_attach_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32, %struct.TYPE_8__, i64, %struct.cma_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.cma_device = type { i32, %struct.TYPE_9__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*, %struct.cma_device*)* @_cma_attach_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cma_attach_to_dev(%struct.rdma_id_private* %0, %struct.cma_device* %1) #0 {
  %3 = alloca %struct.rdma_id_private*, align 8
  %4 = alloca %struct.cma_device*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %3, align 8
  store %struct.cma_device* %1, %struct.cma_device** %4, align 8
  %5 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %6 = call i32 @cma_ref_dev(%struct.cma_device* %5)
  %7 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %8 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %9 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %8, i32 0, i32 3
  store %struct.cma_device* %7, %struct.cma_device** %9, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %13 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %19 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rdma_node_get_transport(i32 %22)
  %24 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %25 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %23, i32* %29, align 8
  %30 = load %struct.rdma_id_private*, %struct.rdma_id_private** %3, align 8
  %31 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %30, i32 0, i32 0
  %32 = load %struct.cma_device*, %struct.cma_device** %4, align 8
  %33 = getelementptr inbounds %struct.cma_device, %struct.cma_device* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  ret void
}

declare dso_local i32 @cma_ref_dev(%struct.cma_device*) #1

declare dso_local i32 @rdma_node_get_transport(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
