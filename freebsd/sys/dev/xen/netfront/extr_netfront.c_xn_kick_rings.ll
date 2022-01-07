; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_kick_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_kick_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i32, %struct.netfront_rxq*, %struct.netfront_txq* }
%struct.netfront_rxq = type { i32 }
%struct.netfront_txq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_info*)* @xn_kick_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_kick_rings(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  %3 = alloca %struct.netfront_rxq*, align 8
  %4 = alloca %struct.netfront_txq*, align 8
  %5 = alloca i32, align 4
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %9 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %14 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %13, i32 0, i32 2
  %15 = load %struct.netfront_txq*, %struct.netfront_txq** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %15, i64 %17
  store %struct.netfront_txq* %18, %struct.netfront_txq** %4, align 8
  %19 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %20 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %19, i32 0, i32 1
  %21 = load %struct.netfront_rxq*, %struct.netfront_rxq** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %21, i64 %23
  store %struct.netfront_rxq* %24, %struct.netfront_rxq** %3, align 8
  %25 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %26 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xen_intr_signal(i32 %27)
  %29 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %30 = call i32 @XN_TX_LOCK(%struct.netfront_txq* %29)
  %31 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %32 = call i32 @xn_txeof(%struct.netfront_txq* %31)
  %33 = load %struct.netfront_txq*, %struct.netfront_txq** %4, align 8
  %34 = call i32 @XN_TX_UNLOCK(%struct.netfront_txq* %33)
  %35 = load %struct.netfront_rxq*, %struct.netfront_rxq** %3, align 8
  %36 = call i32 @XN_RX_LOCK(%struct.netfront_rxq* %35)
  %37 = load %struct.netfront_rxq*, %struct.netfront_rxq** %3, align 8
  %38 = call i32 @xn_alloc_rx_buffers(%struct.netfront_rxq* %37)
  %39 = load %struct.netfront_rxq*, %struct.netfront_rxq** %3, align 8
  %40 = call i32 @XN_RX_UNLOCK(%struct.netfront_rxq* %39)
  br label %41

41:                                               ; preds = %12
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @xen_intr_signal(i32) #1

declare dso_local i32 @XN_TX_LOCK(%struct.netfront_txq*) #1

declare dso_local i32 @xn_txeof(%struct.netfront_txq*) #1

declare dso_local i32 @XN_TX_UNLOCK(%struct.netfront_txq*) #1

declare dso_local i32 @XN_RX_LOCK(%struct.netfront_rxq*) #1

declare dso_local i32 @xn_alloc_rx_buffers(%struct.netfront_rxq*) #1

declare dso_local i32 @XN_RX_UNLOCK(%struct.netfront_rxq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
