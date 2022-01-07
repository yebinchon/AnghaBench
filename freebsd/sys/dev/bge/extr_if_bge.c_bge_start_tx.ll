; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_start_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_MBX_TX_HOST_PROD0_LO = common dso_local global i32 0, align 4
@BGE_CHIPREV_5700_BX = common dso_local global i64 0, align 8
@BGE_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, i32)* @bge_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_start_tx(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %6 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %14 = call i32 @bus_dmamap_sync(i32 %8, i32 %12, i32 %13)
  %15 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %16 = load i32, i32* @BGE_MBX_TX_HOST_PROD0_LO, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bge_writembx(%struct.bge_softc* %15, i32 %16, i32 %17)
  %19 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BGE_CHIPREV_5700_BX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %26 = load i32, i32* @BGE_MBX_TX_HOST_PROD0_LO, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @bge_writembx(%struct.bge_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @BGE_TX_TIMEOUT, align 4
  %34 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
