; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BGE_TX_RING_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_MBX_TX_HOST_PROD0_LO = common dso_local global i32 0, align 4
@BGE_CHIPREV_5700_BX = common dso_local global i64 0, align 8
@BGE_MBX_TX_NIC_PROD0_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_init_tx_ring(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %3 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %3, i32 0, i32 5
  store i64 0, i64* %4, align 8
  %5 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BGE_TX_RING_SZ, align 4
  %12 = call i32 @bzero(i32 %10, i32 %11)
  %13 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %22 = call i32 @bus_dmamap_sync(i32 %16, i32 %20, i32 %21)
  %23 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %26 = load i32, i32* @BGE_MBX_TX_HOST_PROD0_LO, align 4
  %27 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bge_writembx(%struct.bge_softc* %25, i32 %26, i64 %29)
  %31 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BGE_CHIPREV_5700_BX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %38 = load i32, i32* @BGE_MBX_TX_HOST_PROD0_LO, align 4
  %39 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bge_writembx(%struct.bge_softc* %37, i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %45 = load i32, i32* @BGE_MBX_TX_NIC_PROD0_LO, align 4
  %46 = call i32 @bge_writembx(%struct.bge_softc* %44, i32 %45, i64 0)
  %47 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BGE_CHIPREV_5700_BX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %54 = load i32, i32* @BGE_MBX_TX_NIC_PROD0_LO, align 4
  %55 = call i32 @bge_writembx(%struct.bge_softc* %53, i32 %54, i64 0)
  br label %56

56:                                               ; preds = %52, %43
  ret i32 0
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
