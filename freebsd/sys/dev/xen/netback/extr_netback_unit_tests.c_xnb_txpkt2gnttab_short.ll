; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2gnttab_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2gnttab_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_15__, i32, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.xnb_pkt = type { i32 }
%struct.mbuf = type { i32 }
%struct.netif_tx_request = type { i64, i32, i32, i64 }

@MINCLSIZE = common dso_local global i32 0, align 4
@xnb_unit_pvt = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@DOMID_FIRST_RESERVED = common dso_local global i64 0, align 8
@GNTCOPY_source_gref = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i64 0, align 8
@vm_offset_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2gnttab_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2gnttab_short(i8* %0, i64 %1) #0 {
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
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %14 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3), i32 %13)
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
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3, i32 0), align 8
  %26 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_16__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 3))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %28 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %7, %struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 1), i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 2), align 4
  %30 = call %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt* %7, i32 %29)
  store %struct.mbuf* %30, %struct.mbuf** %8, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %33 = load i64, i64* @DOMID_FIRST_RESERVED, align 8
  %34 = call i32 @xnb_txpkt2gnttab(%struct.xnb_pkt* %7, %struct.mbuf* %31, %struct.TYPE_14__* %32, %struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 1), i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @XNB_ASSERT(i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @XNB_ASSERT(i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GNTCOPY_source_gref, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @XNB_ASSERT(i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.netif_tx_request*, %struct.netif_tx_request** %9, align 8
  %60 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @XNB_ASSERT(i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DOMID_SELF, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @XNB_ASSERT(i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %80 = load i32, i32* @vm_offset_t, align 4
  %81 = call i32 @mtod(%struct.mbuf* %79, i32 %80)
  %82 = call i64 @virt_to_offset(i32 %81)
  %83 = icmp eq i64 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @XNB_ASSERT(i32 %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %93 = load i32, i32* @vm_offset_t, align 4
  %94 = call i32 @mtod(%struct.mbuf* %92, i32 %93)
  %95 = call i64 @virt_to_mfn(i32 %94)
  %96 = icmp eq i64 %91, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @XNB_ASSERT(i32 %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DOMID_FIRST_RESERVED, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @XNB_ASSERT(i32 %106)
  %108 = call i32 @safe_m_freem(%struct.mbuf** %8)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_16__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.mbuf* @xnb_pkt2mbufc(%struct.xnb_pkt*, i32) #1

declare dso_local i32 @xnb_txpkt2gnttab(%struct.xnb_pkt*, %struct.mbuf*, %struct.TYPE_14__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i64 @virt_to_offset(i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i64 @virt_to_mfn(i32) #1

declare dso_local i32 @safe_m_freem(%struct.mbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
