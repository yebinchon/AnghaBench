; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_rollup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_chan_rollup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_rx_ring = type { i32 }
%struct.hn_tx_ring = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_rx_ring*, %struct.hn_tx_ring*)* @hn_chan_rollup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_chan_rollup(%struct.hn_rx_ring* %0, %struct.hn_tx_ring* %1) #0 {
  %3 = alloca %struct.hn_rx_ring*, align 8
  %4 = alloca %struct.hn_tx_ring*, align 8
  store %struct.hn_rx_ring* %0, %struct.hn_rx_ring** %3, align 8
  store %struct.hn_tx_ring* %1, %struct.hn_tx_ring** %4, align 8
  %5 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %6 = icmp eq %struct.hn_tx_ring* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %18

13:                                               ; preds = %7
  %14 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %4, align 8
  %17 = call i32 @hn_txeof(%struct.hn_tx_ring* %16)
  br label %18

18:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @hn_txeof(%struct.hn_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
