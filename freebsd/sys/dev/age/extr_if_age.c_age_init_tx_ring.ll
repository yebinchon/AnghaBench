; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_2__, %struct.age_ring_data }
%struct.TYPE_2__ = type { i32, i32, %struct.age_txdesc*, i64, i64, i64 }
%struct.age_txdesc = type { i32*, i32* }
%struct.age_ring_data = type { i32* }

@AGE_TX_RING_SZ = common dso_local global i32 0, align 4
@AGE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_init_tx_ring(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.age_ring_data*, align 8
  %4 = alloca %struct.age_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %6 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %7 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %6)
  %8 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %9 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %12 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %15 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %18 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %17, i32 0, i32 1
  store %struct.age_ring_data* %18, %struct.age_ring_data** %3, align 8
  %19 = load %struct.age_ring_data*, %struct.age_ring_data** %3, align 8
  %20 = getelementptr inbounds %struct.age_ring_data, %struct.age_ring_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @AGE_TX_RING_SZ, align 4
  %23 = call i32 @bzero(i32* %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %46, %1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AGE_TX_RING_CNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %30 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.age_txdesc*, %struct.age_txdesc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %32, i64 %34
  store %struct.age_txdesc* %35, %struct.age_txdesc** %4, align 8
  %36 = load %struct.age_ring_data*, %struct.age_ring_data** %3, align 8
  %37 = getelementptr inbounds %struct.age_ring_data, %struct.age_ring_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %43 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.age_txdesc*, %struct.age_txdesc** %4, align 8
  %45 = getelementptr inbounds %struct.age_txdesc, %struct.age_txdesc* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %51 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %55 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %59 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @bus_dmamap_sync(i32 %53, i32 %57, i32 %60)
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
