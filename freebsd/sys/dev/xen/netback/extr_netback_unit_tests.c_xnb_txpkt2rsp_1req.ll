; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_1req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_txpkt2rsp_1req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.xnb_pkt = type { i32 }
%struct.netif_tx_request = type { i32, i64, i64 }
%struct.netif_tx_response = type { i64, i64 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NETIF_RSP_OKAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_txpkt2rsp_1req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_txpkt2rsp_1req(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xnb_pkt, align 4
  %7 = alloca %struct.netif_tx_request*, align 8
  %8 = alloca %struct.netif_tx_response*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2, i32 1), align 4
  %10 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2), i32 %9)
  store %struct.netif_tx_request* %10, %struct.netif_tx_request** %7, align 8
  %11 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %12 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %11, i32 0, i32 0
  store i32 1000, i32* %12, align 8
  %13 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %14 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2, i32 1), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2, i32 1), align 4
  %17 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2))
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %19 = call i64 @xnb_ring2pkt(%struct.xnb_pkt* %6, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 8
  %25 = call i32 @xnb_txpkt2rsp(%struct.xnb_pkt* %6, %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 0)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 2, i32 0), align 8
  %27 = call %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1), i32 %26)
  store %struct.netif_tx_response* %27, %struct.netif_tx_response** %8, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @xnb_unit_pvt, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @XNB_ASSERT(i32 %33)
  %35 = load %struct.netif_tx_response*, %struct.netif_tx_response** %8, align 8
  %36 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %39 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @XNB_ASSERT(i32 %42)
  %44 = load %struct.netif_tx_response*, %struct.netif_tx_response** %8, align 8
  %45 = getelementptr inbounds %struct.netif_tx_response, %struct.netif_tx_response* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NETIF_RSP_OKAY, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @XNB_ASSERT(i32 %49)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_11__*) #1

declare dso_local i64 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xnb_txpkt2rsp(%struct.xnb_pkt*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.netif_tx_response* @RING_GET_RESPONSE(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
