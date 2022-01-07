; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_refill_all_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_refill_all_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32 }

@AL_ETH_DEFAULT_RX_DESCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_refill_all_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_refill_all_rx_bufs(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i64, i64* @AL_ETH_DEFAULT_RX_DESCS, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @al_eth_refill_rx_bufs(%struct.al_eth_adapter* %11, i32 %12, i64 %14)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local i32 @al_eth_refill_rx_bufs(%struct.al_eth_adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
