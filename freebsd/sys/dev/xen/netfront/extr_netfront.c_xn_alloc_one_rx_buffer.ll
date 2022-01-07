; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_alloc_one_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_alloc_one_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.netfront_rxq = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.netfront_rxq*)* @xn_alloc_one_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @xn_alloc_one_rx_buffer(%struct.netfront_rxq* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.netfront_rxq*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %3, align 8
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = load i32, i32* @MT_DATA, align 4
  %7 = load i32, i32* @M_PKTHDR, align 4
  %8 = load i32, i32* @MJUMPAGESIZE, align 4
  %9 = call %struct.mbuf* @m_getjcl(i32 %5, i32 %6, i32 %7, i32 %8)
  store %struct.mbuf* %9, %struct.mbuf** %4, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = icmp eq %struct.mbuf* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @MJUMPAGESIZE, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  store i32 %14, i32* %19, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %20, %struct.mbuf** %2, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %22
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
