; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_3req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_3req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.xnb_pkt = type { i32, i32, i64, i32, i64, i64 }
%struct.netif_tx_request = type { i32, i8* }

@xnb_unit_pvt = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NETTXF_more_data = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_ring2pkt_3req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_ring2pkt_3req(i8* %0, i64 %1) #0 {
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
  %11 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1), i64 %10)
  store %struct.netif_tx_request* %11, %struct.netif_tx_request** %7, align 8
  %12 = load i8*, i8** @NETTXF_more_data, align 8
  %13 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %14 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %16 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %15, i32 0, i32 0
  store i32 200, i32* %16, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %20 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1), i64 %19)
  store %struct.netif_tx_request* %20, %struct.netif_tx_request** %7, align 8
  %21 = load i8*, i8** @NETTXF_more_data, align 8
  %22 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %23 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %25 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %24, i32 0, i32 0
  store i32 40, i32* %25, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %29 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1), i64 %28)
  store %struct.netif_tx_request* %29, %struct.netif_tx_request** %7, align 8
  %30 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %31 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %30, i32 0, i32 1
  store i8* null, i8** %31, align 8
  %32 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %33 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %32, i32 0, i32 0
  store i32 50, i32* %33, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %36 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 1))
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0, i32 1), align 8
  %38 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %5, %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0), i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 3
  %41 = zext i1 %40 to i32
  %42 = call i32 @XNB_ASSERT(i32 %41)
  %43 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 200
  %46 = zext i1 %45 to i32
  %47 = call i32 @XNB_ASSERT(i32 %46)
  %48 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 110
  %51 = zext i1 %50 to i32
  %52 = call i32 @XNB_ASSERT(i32 %51)
  %53 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @XNB_ASSERT(i32 %56)
  %58 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %59 = call i32 @XNB_ASSERT(i32 %58)
  %60 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 3
  %63 = zext i1 %62 to i32
  %64 = call i32 @XNB_ASSERT(i32 %63)
  %65 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @XNB_ASSERT(i32 %69)
  %71 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, 1
  %75 = icmp eq i64 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @XNB_ASSERT(i32 %76)
  %78 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @xnb_unit_pvt, i32 0, i32 0), i64 %80)
  %82 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %83 = icmp eq %struct.netif_tx_request* %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @XNB_ASSERT(i32 %84)
  ret void
}

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_6__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
