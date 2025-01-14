; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_reset_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_reset_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32 }
%struct.rt2661_rx_ring = type { i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RT2661_RX_BUSY = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*, %struct.rt2661_rx_ring*)* @rt2661_reset_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_reset_rx_ring(%struct.rt2661_softc* %0, %struct.rt2661_rx_ring* %1) #0 {
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca %struct.rt2661_rx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %3, align 8
  store %struct.rt2661_rx_ring* %1, %struct.rt2661_rx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.rt2661_rx_ring*, %struct.rt2661_rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.rt2661_rx_ring, %struct.rt2661_rx_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load i32, i32* @RT2661_RX_BUSY, align 4
  %14 = call i32 @htole32(i32 %13)
  %15 = load %struct.rt2661_rx_ring*, %struct.rt2661_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rt2661_rx_ring, %struct.rt2661_rx_ring* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %14, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.rt2661_rx_ring*, %struct.rt2661_rx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.rt2661_rx_ring, %struct.rt2661_rx_ring* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rt2661_rx_ring*, %struct.rt2661_rx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.rt2661_rx_ring, %struct.rt2661_rx_ring* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %33 = call i32 @bus_dmamap_sync(i32 %28, i32 %31, i32 %32)
  %34 = load %struct.rt2661_rx_ring*, %struct.rt2661_rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.rt2661_rx_ring, %struct.rt2661_rx_ring* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.rt2661_rx_ring*, %struct.rt2661_rx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.rt2661_rx_ring, %struct.rt2661_rx_ring* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
