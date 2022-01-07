; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_tx_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_tx_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { %struct.TYPE_2__, %struct.vge_ring_data }
%struct.TYPE_2__ = type { i32, i32, %struct.vge_txdesc*, i64, i64, i64 }
%struct.vge_txdesc = type { i32*, i32* }
%struct.vge_ring_data = type { i32* }

@VGE_TX_LIST_SZ = common dso_local global i32 0, align 4
@VGE_TX_DESC_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vge_softc*)* @vge_tx_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_tx_list_init(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.vge_ring_data*, align 8
  %4 = alloca %struct.vge_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %6 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %7 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %6)
  %8 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %17, i32 0, i32 1
  store %struct.vge_ring_data* %18, %struct.vge_ring_data** %3, align 8
  %19 = load %struct.vge_ring_data*, %struct.vge_ring_data** %3, align 8
  %20 = getelementptr inbounds %struct.vge_ring_data, %struct.vge_ring_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @VGE_TX_LIST_SZ, align 4
  %23 = call i32 @bzero(i32* %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %46, %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @VGE_TX_DESC_CNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.vge_txdesc*, %struct.vge_txdesc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %32, i64 %34
  store %struct.vge_txdesc* %35, %struct.vge_txdesc** %4, align 8
  %36 = load %struct.vge_txdesc*, %struct.vge_txdesc** %4, align 8
  %37 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.vge_ring_data*, %struct.vge_ring_data** %3, align 8
  %39 = getelementptr inbounds %struct.vge_ring_data, %struct.vge_ring_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load %struct.vge_txdesc*, %struct.vge_txdesc** %4, align 8
  %45 = getelementptr inbounds %struct.vge_txdesc, %struct.vge_txdesc* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %51 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %55 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %59 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @bus_dmamap_sync(i32 %53, i32 %57, i32 %60)
  ret i32 0
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
