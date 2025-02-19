; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ps_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cma.c_cma_ps_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_bind_list = type { i32 }
%struct.vnet = type { i32 }
%struct.idr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdma_bind_list* (%struct.vnet*, i32, i32)* @cma_ps_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdma_bind_list* @cma_ps_find(%struct.vnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.idr*, align 8
  store %struct.vnet* %0, %struct.vnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vnet*, %struct.vnet** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.idr* @cma_pernet_idr(%struct.vnet* %8, i32 %9)
  store %struct.idr* %10, %struct.idr** %7, align 8
  %11 = load %struct.idr*, %struct.idr** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.rdma_bind_list* @idr_find(%struct.idr* %11, i32 %12)
  ret %struct.rdma_bind_list* %13
}

declare dso_local %struct.idr* @cma_pernet_idr(%struct.vnet*, i32) #1

declare dso_local %struct.rdma_bind_list* @idr_find(%struct.idr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
