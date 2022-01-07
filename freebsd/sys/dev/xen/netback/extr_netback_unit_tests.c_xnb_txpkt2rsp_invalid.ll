; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_invalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.xnb_pkt = type { i32 }
%struct.netif_tx_request = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.netif_tx_response = type { i32, i64 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@NETTXF_extra_info = common dso_local global i32 0, align 4
@NETIF_RSP_ERROR = common dso_local global i64 0, align 8
@NETIF_RSP_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2rsp_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2rsp_invalid(i8* %0, i64 %1) #0 {
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
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 255, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %30 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0))
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %32 = call i64 @xnb_ring2pkt(%struct.xnb_pkt* %6, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %38 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %6)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @XNB_ASSERT(i32 %41)
  %43 = call i32 @xnb_txpkt2rsp(%struct.xnb_pkt* %6, %struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i32 0)
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @XNB_ASSERT(i32 %49)
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %52 = call %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i64 %51)
  store %struct.netif_tx_response* %52, %struct.netif_tx_response** %9, align 8
  %53 = load %struct.netif_tx_response*, %struct.netif_tx_response** %9, align 8
  %54 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %57 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @XNB_ASSERT(i32 %60)
  %62 = load %struct.netif_tx_response*, %struct.netif_tx_response** %9, align 8
  %63 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NETIF_RSP_ERROR, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @XNB_ASSERT(i32 %67)
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %70 = add nsw i64 %69, 1
  %71 = call %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xnb_unit_pvt, i32 0, i32 1), i64 %70)
  store %struct.netif_tx_response* %71, %struct.netif_tx_response** %9, align 8
  %72 = load %struct.netif_tx_response*, %struct.netif_tx_response** %9, align 8
  %73 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NETIF_RSP_NULL, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @XNB_ASSERT(i32 %77)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_13__*) #1

declare dso_local i64 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

declare dso_local i32 @xnb_txpkt2rsp(%struct.xnb_pkt*, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
