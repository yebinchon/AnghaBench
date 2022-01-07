; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2gnttab_2req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2gnttab_2req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_11__, i32, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { i32 }
%struct.netif_tx_request = type { i32, i32, i64, i64 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NETTXF_more_data = common dso_local global i64 0, align 8
@DOMID_FIRST_RESERVED = common dso_local global i32 0, align 4
@vm_offset_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2gnttab_2req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2gnttab_2req(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xnb_pkt, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.netif_tx_request*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %10 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3), i32 %9)
  store %struct.netif_tx_request* %10, %struct.netif_tx_request** %8, align 8
  %11 = load i64, i64* @NETTXF_more_data, align 8
  %12 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %13 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %15 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %14, i32 0, i32 0
  store i32 1900, i32* %15, align 8
  %16 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %17 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %16, i32 0, i32 1
  store i32 7, i32* %17, align 4
  %18 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %19 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %23 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3), i32 %22)
  store %struct.netif_tx_request* %23, %struct.netif_tx_request** %8, align 8
  %24 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %25 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %27 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %26, i32 0, i32 0
  store i32 500, i32* %27, align 8
  %28 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %29 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %28, i32 0, i32 1
  store i32 8, i32* %29, align 4
  %30 = load %struct.netif_tx_request*, %struct.netif_tx_request** %8, align 8
  %31 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %34 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 3))
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %36 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %6, %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2), align 4
  %38 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %6, i32 %37)
  store %struct.mbuf* %38, %struct.mbuf** %7, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %41 = load i32, i32* @DOMID_FIRST_RESERVED, align 4
  %42 = call i32 @xnb_txpkt2gnttab(%struct.xnb_pkt* %6, %struct.mbuf* %39, %struct.TYPE_10__* %40, %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i32
  %46 = call i32 @XNB_ASSERT(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1400
  %52 = zext i1 %51 to i32
  %53 = call i32 @XNB_ASSERT(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %60 = load i32, i32* @vm_offset_t, align 4
  %61 = call i64 @mtod(%struct.mbuf* %59, i32 %60)
  %62 = call i64 @virt_to_offset(i64 %61)
  %63 = icmp eq i64 %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @XNB_ASSERT(i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 500
  %71 = zext i1 %70 to i32
  %72 = call i32 @XNB_ASSERT(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %79 = load i32, i32* @vm_offset_t, align 4
  %80 = call i64 @mtod(%struct.mbuf* %78, i32 %79)
  %81 = add nsw i64 %80, 1400
  %82 = call i64 @virt_to_offset(i64 %81)
  %83 = icmp eq i64 %77, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @XNB_ASSERT(i32 %84)
  %86 = call i32 @safe_m_freem(%struct.mbuf** %7)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_12__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i32 @xnb_txpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i64 @virt_to_offset(i64) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
