; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_list_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_list_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i32, %struct.TYPE_2__*, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@BFE_TX_LIST_SIZE = common dso_local global i32 0, align 4
@BFE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_list_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_list_tx_init(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %4 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BFE_TX_LIST_SIZE, align 4
  %14 = call i32 @bzero(i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @BFE_TX_LIST_CNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %38 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bus_dmamap_sync(i32 %33, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
