; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_tx_start_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_tx_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32 }
%struct.xgbe_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.xgbe_ring_data = type { i32 }

@DMA_CH_TDTR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*, %struct.xgbe_ring*)* @xgbe_tx_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_tx_start_xmit(%struct.xgbe_channel* %0, %struct.xgbe_ring* %1) #0 {
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_ring_data*, align 8
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %3, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %4, align 8
  %6 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %7 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %8 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %6, i32 %9)
  store %struct.xgbe_ring_data* %10, %struct.xgbe_ring_data** %5, align 8
  %11 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %12 = load i32, i32* @DMA_CH_TDTR_LO, align 4
  %13 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %14 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %11, i32 %12, i32 %16)
  %18 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
