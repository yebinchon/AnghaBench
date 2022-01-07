; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_wraps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netback/extr_netback_unit_tests.c_xnb_ring2pkt_wraps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.xnb_pkt = type { i32, i32 }
%struct.netif_tx_request = type { i32, i8* }

@xnb_unit_pvt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NETTXF_more_data = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @xnb_ring2pkt_wraps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xnb_ring2pkt_wraps(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xnb_pkt, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netif_tx_request*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 @RING_SIZE(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1))
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = sub i32 %10, 2
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %12 = load i32, i32* %8, align 4
  %13 = sub i32 %12, 2
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 1), align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub i32 %14, 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub i32 %18, 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub i32 %22, 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub i32 %26, 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 2), align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 2
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 0, i32 2), align 8
  %32 = load i32, i32* %8, align 4
  %33 = sub i32 %32, 2
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 0, i32 3), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %35 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1), i32 %34)
  store %struct.netif_tx_request* %35, %struct.netif_tx_request** %7, align 8
  %36 = load i8*, i8** @NETTXF_more_data, align 8
  %37 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %38 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %40 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %39, i32 0, i32 0
  store i32 550, i32* %40, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %42 = add i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %44 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1), i32 %43)
  store %struct.netif_tx_request* %44, %struct.netif_tx_request** %7, align 8
  %45 = load i8*, i8** @NETTXF_more_data, align 8
  %46 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %47 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %49 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %48, i32 0, i32 0
  store i32 100, i32* %49, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %51 = add i32 %50, 1
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %53 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1), i32 %52)
  store %struct.netif_tx_request* %53, %struct.netif_tx_request** %7, align 8
  %54 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %55 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %54, i32 0, i32 1
  store i8* null, i8** %55, align 8
  %56 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %57 = getelementptr inbounds %struct.netif_tx_request, %struct.netif_tx_request* %56, i32 0, i32 0
  store i32 50, i32* %57, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %59 = add i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1, i32 0), align 8
  %60 = call i32 @RING_PUSH_REQUESTS(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 1))
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 0, i32 3), align 4
  %62 = call i32 @xnb_ring2pkt(%struct.xnb_pkt* %5, %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 0), i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 3
  %65 = zext i1 %64 to i32
  %66 = call i32 @XNB_ASSERT(i32 %65)
  %67 = call i32 @xnb_pkt_is_valid(%struct.xnb_pkt* %5)
  %68 = call i32 @XNB_ASSERT(i32 %67)
  %69 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 3
  %72 = zext i1 %71 to i32
  %73 = call i32 @XNB_ASSERT(i32 %72)
  %74 = getelementptr inbounds %struct.xnb_pkt, %struct.xnb_pkt* %5, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = call %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xnb_unit_pvt, i32 0, i32 0), i32 %76)
  %78 = load %struct.netif_tx_request*, %struct.netif_tx_request** %7, align 8
  %79 = icmp eq %struct.netif_tx_request* %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @XNB_ASSERT(i32 %80)
  ret void
}

declare dso_local i32 @RING_SIZE(%struct.TYPE_9__*) #1

declare dso_local %struct.netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS(%struct.TYPE_9__*) #1

declare dso_local i32 @xnb_ring2pkt(%struct.xnb_pkt*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @XNB_ASSERT(i32) #1

declare dso_local i32 @xnb_pkt_is_valid(%struct.xnb_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
