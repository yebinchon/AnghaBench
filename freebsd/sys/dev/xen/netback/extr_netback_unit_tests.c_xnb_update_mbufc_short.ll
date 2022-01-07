; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_update_mbufc_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_update_mbufc_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__, i32, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.netif_tx_request = type { i64, i32, i32, i64 }

@MINCLSIZE = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@GNTST_okay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_update_mbufc_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_update_mbufc_short(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xnb_pkt, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.netif_tx_request*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @MINCLSIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %14 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3), i32 %13)
  store %struct.netif_tx_request* %14, %struct.netif_tx_request** %9, align 8
  %15 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %16 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %19 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %21 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %20, i32 0, i32 1
  store i32 7, i32* %21, align 8
  %22 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %23 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %22, i32 0, i32 2
  store i32 17, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %26 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 3))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %28 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %7, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 4
  %30 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %7, i32 %29)
  store %struct.mbuf* %30, %struct.mbuf** %8, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %33 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %34 = call i32 @xnb_txpkt2gnttab(%struct.xnb_pkt* %7, %struct.mbuf* %31, %struct.TYPE_10__* %32, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @GNTST_okay, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @xnb_update_mbufc(%struct.mbuf* %39, %struct.TYPE_10__* %40, i32 %41)
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @XNB_ASSERT(i32 %48)
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @XNB_ASSERT(i32 %56)
  %58 = call i32 @safe_m_freem(%struct.mbuf** %8)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_13__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i32 @xnb_txpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_10__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @xnb_update_mbufc(%struct.mbuf*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
