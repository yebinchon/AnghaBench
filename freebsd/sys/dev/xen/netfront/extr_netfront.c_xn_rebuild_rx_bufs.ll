; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_rebuild_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_rebuild_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { %struct.TYPE_7__, %struct.TYPE_5__*, i32*, %struct.mbuf** }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NET_RX_RING_SIZE = common dso_local global i32 0, align 4
@vm_offset_t = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_rxq*)* @xn_rebuild_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_rebuild_rx_bufs(%struct.netfront_rxq* %0) #0 {
  %2 = alloca %struct.netfront_rxq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %69, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NET_RX_RING_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %9
  %14 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %15 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %14, i32 0, i32 3
  %16 = load %struct.mbuf**, %struct.mbuf*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %16, i64 %18
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %69

23:                                               ; preds = %13
  %24 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.mbuf* @xn_get_rx_mbuf(%struct.netfront_rxq* %24, i32 %25)
  %27 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %28 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %27, i32 0, i32 3
  %29 = load %struct.mbuf**, %struct.mbuf*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %29, i64 %31
  store %struct.mbuf* %26, %struct.mbuf** %32, align 8
  store %struct.mbuf* %26, %struct.mbuf** %7, align 8
  %33 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @xn_get_rx_ref(%struct.netfront_rxq* %33, i32 %34)
  %36 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %37 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  store i32 %35, i32* %5, align 4
  %42 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %43 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %42, i32 0, i32 0
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.TYPE_6__* @RING_GET_REQUEST(%struct.TYPE_7__* %43, i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %6, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %47 = load i32, i32* @vm_offset_t, align 4
  %48 = call i32 @mtod(%struct.mbuf* %46, i32 %47)
  %49 = call i32 @vtophys(i32 %48)
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %54 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xenbus_get_otherend_id(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @gnttab_grant_foreign_access_ref(i32 %52, i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %23, %22
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %75 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  ret void
}

declare dso_local %struct.mbuf* @xn_get_rx_mbuf(%struct.netfront_rxq*, i32) #1

declare dso_local i32 @xn_get_rx_ref(%struct.netfront_rxq*, i32) #1

declare dso_local %struct.TYPE_6__* @RING_GET_REQUEST(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i32, i32, i32, i32) #1

declare dso_local i32 @xenbus_get_otherend_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
