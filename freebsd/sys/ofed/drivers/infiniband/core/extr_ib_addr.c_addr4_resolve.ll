; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_addr4_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_addr.c_addr4_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.rdma_dev_addr = type { i32 }
%struct.ifnet = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, %struct.sockaddr_in*, %struct.rdma_dev_addr*, i32*, %struct.ifnet**)* @addr4_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr4_resolve(%struct.sockaddr_in* %0, %struct.sockaddr_in* %1, %struct.rdma_dev_addr* %2, i32* %3, %struct.ifnet** %4) #0 {
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.rdma_dev_addr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ifnet**, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %6, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store %struct.rdma_dev_addr* %2, %struct.rdma_dev_addr** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.ifnet** %4, %struct.ifnet*** %10, align 8
  %11 = load i32, i32* @EADDRNOTAVAIL, align 4
  %12 = sub nsw i32 0, %11
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
