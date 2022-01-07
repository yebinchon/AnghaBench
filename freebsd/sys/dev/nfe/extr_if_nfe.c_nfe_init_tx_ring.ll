; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32, i64 }
%struct.nfe_tx_ring = type { i32, i32, i8*, i8*, i64, i64, i64 }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_TX_RING_COUNT = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, %struct.nfe_tx_ring*)* @nfe_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_init_tx_ring(%struct.nfe_softc* %0, %struct.nfe_tx_ring* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.nfe_tx_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.nfe_tx_ring* %1, %struct.nfe_tx_ring** %4, align 8
  %7 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %10 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  store i64 4, i64* %6, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  store i64 4, i64* %6, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @NFE_TX_RING_COUNT, align 8
  %33 = mul i64 %31, %32
  %34 = call i32 @bzero(i8* %30, i64 %33)
  %35 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfe_tx_ring*, %struct.nfe_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.nfe_tx_ring, %struct.nfe_tx_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %42 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @bus_dmamap_sync(i32 %37, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
