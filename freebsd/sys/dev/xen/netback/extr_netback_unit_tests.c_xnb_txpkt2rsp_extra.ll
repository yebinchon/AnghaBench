; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.xnb_pkt = type { i32 }
%struct.netif_tx_request = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.netif_tx_response = type { i32, i64 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@NETTXF_extra_info = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i32 0, align 4
@NETIF_RSP_OKAY = common dso_local global i64 0, align 8
@NETIF_RSP_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2rsp_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2rsp_extra(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xnb_pkt, align 4
  %7 = alloca %struct.netif_tx_request*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.netif_tx_response*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %11 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i32 %10)
  store %struct.netif_tx_request* %11, %struct.netif_tx_request** %7, align 8
  %12 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %13 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %12, i32 0, i32 0
  store i32 1000, i32* %13, align 4
  %14 = load i32, i32* @NETTXF_extra_info, align 4
  %15 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %16 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %18 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %17, i32 0, i32 1
  store i32 69, i32* %18, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %22 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0), i32 %21)
  %23 = bitcast %struct.netif_tx_request* %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %31 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0))
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %33 = call i64 @xnb_ring2pkt(%struct.xnb_pkt* %6, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %39 = call i32 @xnb_txpkt2rsp(%struct.xnb_pkt* %6, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 0)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @XNB_ASSERT(i32 %45)
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %48 = call %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i64 %47)
  store %struct.netif_tx_response* %48, %struct.netif_tx_response** %9, align 8
  %49 = load %struct.netif_tx_response*, %struct.netif_tx_response** %9, align 8
  %50 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %53 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @XNB_ASSERT(i32 %56)
  %58 = load %struct.netif_tx_response*, %struct.netif_tx_response** %9, align 8
  %59 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NETIF_RSP_OKAY, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @XNB_ASSERT(i32 %63)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %66 = add nsw i64 %65, 1
  %67 = call %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i64 %66)
  store %struct.netif_tx_response* %67, %struct.netif_tx_response** %9, align 8
  %68 = load %struct.netif_tx_response*, %struct.netif_tx_response** %9, align 8
  %69 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NETIF_RSP_NULL, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @XNB_ASSERT(i32 %73)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_13__*) #1

declare dso_local i64 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @xnb_txpkt2rsp(%struct.xnb_pkt*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
