; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i64*, i32, %struct.mbuf** }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mbuf = type { i32 }
%struct.netif_rx_request = type { i16, i64 }

@NET_RX_RING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"non-NULL xn_rx_chain\00", align 1
@GNTTAB_LIST_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"reserved grant references exhuasted\00", align 1
@vm_offset_t = common dso_local global i32 0, align 4
@NET_RX_SLOTS_MIN = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@xn_alloc_rx_buffers_callout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_rxq*)* @xn_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_alloc_rx_buffers(%struct.netfront_rxq* %0) #0 {
  %2 = alloca %struct.netfront_rxq*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca %struct.netif_rx_request*, align 8
  %9 = alloca i64, align 8
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %2, align 8
  %10 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %11 = call i32 @XN_RX_LOCK_ASSERT(%struct.netfront_rxq* %10)
  %12 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %13 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @__predict_false(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %138

22:                                               ; preds = %1
  %23 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %24 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %101, %22
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %30 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = load i64, i64* @NET_RX_RING_SIZE, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %27
  %37 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %38 = call %struct.mbuf* @xn_alloc_one_rx_buffer(%struct.netfront_rxq* %37)
  store %struct.mbuf* %38, %struct.mbuf** %5, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %104

42:                                               ; preds = %36
  %43 = load i64, i64* %3, align 8
  %44 = call zeroext i16 @xn_rxidx(i64 %43)
  store i16 %44, i16* %6, align 2
  %45 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %46 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %45, i32 0, i32 6
  %47 = load %struct.mbuf**, %struct.mbuf*** %46, align 8
  %48 = load i16, i16* %6, align 2
  %49 = zext i16 %48 to i64
  %50 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %47, i64 %49
  %51 = load %struct.mbuf*, %struct.mbuf** %50, align 8
  %52 = icmp eq %struct.mbuf* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %57 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %56, i32 0, i32 6
  %58 = load %struct.mbuf**, %struct.mbuf*** %57, align 8
  %59 = load i16, i16* %6, align 2
  %60 = zext i16 %59 to i64
  %61 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %58, i64 %60
  store %struct.mbuf* %55, %struct.mbuf** %61, align 8
  %62 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %63 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %62, i32 0, i32 5
  %64 = call i64 @gnttab_claim_grant_reference(i32* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @GNTTAB_LIST_END, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @KASSERT(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %72 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %71, i32 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = load i16, i16* %6, align 2
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %78 = load i32, i32* @vm_offset_t, align 4
  %79 = call i32 @mtod(%struct.mbuf* %77, i32 %78)
  %80 = call i32 @vtophys(i32 %79)
  %81 = call i64 @atop(i32 %80)
  store i64 %81, i64* %9, align 8
  %82 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %83 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %82, i32 0, i32 1
  %84 = load i64, i64* %3, align 8
  %85 = call %struct.netif_rx_request* @RING_GET_REQUEST(%struct.TYPE_5__* %83, i64 %84)
  store %struct.netif_rx_request* %85, %struct.netif_rx_request** %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %88 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @xenbus_get_otherend_id(i32 %91)
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @gnttab_grant_foreign_access_ref(i64 %86, i32 %92, i64 %93, i32 0)
  %95 = load i16, i16* %6, align 2
  %96 = load %struct.netif_rx_request*, %struct.netif_rx_request** %8, align 8
  %97 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %96, i32 0, i32 0
  store i16 %95, i16* %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.netif_rx_request*, %struct.netif_rx_request** %8, align 8
  %100 = getelementptr inbounds %struct.netif_rx_request, %struct.netif_rx_request* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %42
  %102 = load i64, i64* %3, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %3, align 8
  br label %27

104:                                              ; preds = %41, %27
  %105 = load i64, i64* %3, align 8
  %106 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %107 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %111 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %109, %113
  %115 = load i64, i64* @NET_RX_SLOTS_MIN, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %104
  %118 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %119 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %118, i32 0, i32 2
  %120 = load i32, i32* @hz, align 4
  %121 = sdiv i32 %120, 10
  %122 = load i32, i32* @xn_alloc_rx_buffers_callout, align 4
  %123 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %124 = call i32 @callout_reset_curcpu(i32* %119, i32 %121, i32 %122, %struct.netfront_rxq* %123)
  br label %138

125:                                              ; preds = %104
  %126 = call i32 (...) @wmb()
  %127 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %128 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %127, i32 0, i32 1
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_5__* %128, i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = load %struct.netfront_rxq*, %struct.netfront_rxq** %2, align 8
  %135 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @xen_intr_signal(i32 %136)
  br label %138

138:                                              ; preds = %21, %117, %133, %125
  ret void
}

declare dso_local i32 @XN_RX_LOCK_ASSERT(%struct.netfront_rxq*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.mbuf* @xn_alloc_one_rx_buffer(%struct.netfront_rxq*) #1

declare dso_local zeroext i16 @xn_rxidx(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @gnttab_claim_grant_reference(i32*) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.netif_rx_request* @RING_GET_REQUEST(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i64, i32, i64, i32) #1

declare dso_local i32 @xenbus_get_otherend_id(i32) #1

declare dso_local i32 @callout_reset_curcpu(i32*, i32, i32, %struct.netfront_rxq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @xen_intr_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
