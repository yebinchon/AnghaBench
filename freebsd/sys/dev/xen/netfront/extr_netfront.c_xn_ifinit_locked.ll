; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_ifinit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_ifinit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i32, %struct.netfront_rxq*, %struct.ifnet* }
%struct.netfront_rxq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_info*)* @xn_ifinit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_ifinit_locked(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netfront_rxq*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  %6 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %7 = call i32 @XN_LOCK_ASSERT(%struct.netfront_info* %6)
  %8 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %9 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %8, i32 0, i32 2
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %19 = call i32 @netfront_carrier_ok(%struct.netfront_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %1
  br label %80

22:                                               ; preds = %17
  %23 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %24 = call i32 @xn_stop(%struct.netfront_info* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %62, %22
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %28 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %33 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %32, i32 0, i32 1
  %34 = load %struct.netfront_rxq*, %struct.netfront_rxq** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %34, i64 %36
  store %struct.netfront_rxq* %37, %struct.netfront_rxq** %5, align 8
  %38 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %39 = call i32 @XN_RX_LOCK(%struct.netfront_rxq* %38)
  %40 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %41 = call i32 @xn_alloc_rx_buffers(%struct.netfront_rxq* %40)
  %42 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %43 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %48 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 %46, i64* %51, align 8
  %52 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %53 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %52, i32 0, i32 0
  %54 = call i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_4__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %31
  %57 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %58 = call i32 @xn_rxeof(%struct.netfront_rxq* %57)
  br label %59

59:                                               ; preds = %56, %31
  %60 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %61 = call i32 @XN_RX_UNLOCK(%struct.netfront_rxq* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %25

65:                                               ; preds = %25
  %66 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %78 = load i32, i32* @LINK_STATE_UP, align 4
  %79 = call i32 @if_link_state_change(%struct.ifnet* %77, i32 %78)
  br label %80

80:                                               ; preds = %65, %21
  ret void
}

declare dso_local i32 @XN_LOCK_ASSERT(%struct.netfront_info*) #1

declare dso_local i32 @netfront_carrier_ok(%struct.netfront_info*) #1

declare dso_local i32 @xn_stop(%struct.netfront_info*) #1

declare dso_local i32 @XN_RX_LOCK(%struct.netfront_rxq*) #1

declare dso_local i32 @xn_alloc_rx_buffers(%struct.netfront_rxq*) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_4__*) #1

declare dso_local i32 @xn_rxeof(%struct.netfront_rxq*) #1

declare dso_local i32 @XN_RX_UNLOCK(%struct.netfront_rxq*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
