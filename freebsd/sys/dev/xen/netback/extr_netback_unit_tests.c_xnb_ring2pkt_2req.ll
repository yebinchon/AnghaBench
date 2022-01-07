; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_2req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_2req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.xnb_pkt = type { i32, i32, i64, i32, i64, i64 }
%struct.netif_tx_request = type { i32, i64 }

@xnb_unit_pvt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NETTXF_more_data = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_ring2pkt_2req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_ring2pkt_2req(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netif_tx_request*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %11 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1), i64 %10)
  store %struct.netif_tx_request* %11, %struct.netif_tx_request** %7, align 8
  %12 = load i64, i64* @NETTXF_more_data, align 8
  %13 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %14 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %16 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %15, i32 0, i32 0
  store i32 100, i32* %16, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %20 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1), i64 %19)
  store %struct.netif_tx_request* %20, %struct.netif_tx_request** %7, align 8
  %21 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %22 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %24 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %23, i32 0, i32 0
  store i32 40, i32* %24, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %27 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1))
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0, i32 0), align 8
  %29 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %5, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0), i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i32
  %33 = call i32 @XNB_ASSERT(i32 %32)
  %34 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 100
  %37 = zext i1 %36 to i32
  %38 = call i32 @XNB_ASSERT(i32 %37)
  %39 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 60
  %42 = zext i1 %41 to i32
  %43 = call i32 @XNB_ASSERT(i32 %42)
  %44 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @XNB_ASSERT(i32 %47)
  %49 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %50 = call i32 @XNB_ASSERT(i32 %49)
  %51 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i32
  %55 = call i32 @XNB_ASSERT(i32 %54)
  %56 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @XNB_ASSERT(i32 %60)
  %62 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 1
  %66 = icmp eq i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @XNB_ASSERT(i32 %67)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_7__*, i64) #1

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
