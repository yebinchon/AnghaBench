; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.netif_tx_request = type { i32, i32 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@NETTXF_more_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_ring2pkt_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_ring2pkt_partial(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netif_tx_request*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 4
  %9 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1), i32 %8)
  store %struct.netif_tx_request* %9, %struct.netif_tx_request** %7, align 8
  %10 = load i32, i32* @NETTXF_more_data, align 4
  %11 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %12 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %14 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %13, i32 0, i32 0
  store i32 150, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 4
  %17 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1))
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 4
  %19 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %5, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0), i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @XNB_ASSERT(i32 %22)
  %24 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @XNB_ASSERT(i32 %27)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_7__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
