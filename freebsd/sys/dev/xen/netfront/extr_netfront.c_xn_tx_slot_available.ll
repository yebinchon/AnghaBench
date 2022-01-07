; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_tx_slot_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_tx_slot_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_txq = type { i32 }

@MAX_TX_REQ_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_txq*)* @xn_tx_slot_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xn_tx_slot_available(%struct.netfront_txq* %0) #0 {
  %2 = alloca %struct.netfront_txq*, align 8
  store %struct.netfront_txq* %0, %struct.netfront_txq** %2, align 8
  %3 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %4 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %3, i32 0, i32 0
  %5 = call i64 @RING_FREE_REQUESTS(i32* %4)
  %6 = load i64, i64* @MAX_TX_REQ_FRAGS, align 8
  %7 = add nsw i64 %6, 2
  %8 = icmp sgt i64 %5, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare dso_local i64 @RING_FREE_REQUESTS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
