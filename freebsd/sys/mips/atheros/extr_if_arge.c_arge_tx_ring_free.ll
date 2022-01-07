; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_tx_ring_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_tx_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.arge_txdesc* }
%struct.arge_txdesc = type { i32*, i64 }

@ARGE_TX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arge_softc*)* @arge_tx_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arge_tx_ring_free(%struct.arge_softc* %0) #0 {
  %2 = alloca %struct.arge_softc*, align 8
  %3 = alloca %struct.arge_txdesc*, align 8
  %4 = alloca i32, align 4
  store %struct.arge_softc* %0, %struct.arge_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ARGE_TX_RING_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %5
  %10 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.arge_txdesc*, %struct.arge_txdesc** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %13, i64 %15
  store %struct.arge_txdesc* %16, %struct.arge_txdesc** %3, align 8
  %17 = load %struct.arge_txdesc*, %struct.arge_txdesc** %3, align 8
  %18 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %9
  %22 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.arge_txdesc*, %struct.arge_txdesc** %3, align 8
  %27 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = call i32 @bus_dmamap_sync(i32 %25, i64 %28, i32 %29)
  %31 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.arge_txdesc*, %struct.arge_txdesc** %3, align 8
  %36 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bus_dmamap_unload(i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %21, %9
  %40 = load %struct.arge_txdesc*, %struct.arge_txdesc** %3, align 8
  %41 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.arge_txdesc*, %struct.arge_txdesc** %3, align 8
  %46 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @m_freem(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.arge_txdesc*, %struct.arge_txdesc** %3, align 8
  %51 = getelementptr inbounds %struct.arge_txdesc, %struct.arge_txdesc* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %5

55:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i64) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
