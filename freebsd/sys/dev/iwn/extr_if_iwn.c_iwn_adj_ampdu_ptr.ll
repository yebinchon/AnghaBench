; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_adj_ampdu_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_adj_ampdu_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32 }
%struct.iwn_tx_ring = type { i32, i32, %struct.iwn_tx_data* }
%struct.iwn_tx_data = type { i64, i32* }

@IWN_TX_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_softc*, %struct.iwn_tx_ring*)* @iwn_adj_ampdu_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_adj_ampdu_ptr(%struct.iwn_softc* %0, %struct.iwn_tx_ring* %1) #0 {
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca %struct.iwn_tx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwn_tx_data*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %3, align 8
  store %struct.iwn_tx_ring* %1, %struct.iwn_tx_ring** %4, align 8
  %7 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %17, i32 0, i32 2
  %19 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %19, i64 %21
  store %struct.iwn_tx_data* %22, %struct.iwn_tx_data** %6, align 8
  %23 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %24 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %36

28:                                               ; preds = %16
  %29 = load %struct.iwn_tx_data*, %struct.iwn_tx_data** %6, align 8
  %30 = getelementptr inbounds %struct.iwn_tx_data, %struct.iwn_tx_data* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @IWN_TX_RING_COUNT, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %10

36:                                               ; preds = %27, %10
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.iwn_tx_ring*, %struct.iwn_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.iwn_tx_ring, %struct.iwn_tx_ring* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
