; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_list_rx_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_list_rx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.sge_chain_data }
%struct.sge_chain_data = type { i32, %struct.sge_rxdesc* }
%struct.sge_rxdesc = type { i32*, i32 }

@SGE_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*)* @sge_list_rx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_list_rx_free(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.sge_chain_data*, align 8
  %4 = alloca %struct.sge_rxdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %6 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %7 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %6)
  %8 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %8, i32 0, i32 0
  store %struct.sge_chain_data* %9, %struct.sge_chain_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SGE_RX_RING_CNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %16 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %15, i32 0, i32 1
  %17 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %17, i64 %19
  store %struct.sge_rxdesc* %20, %struct.sge_rxdesc** %4, align 8
  %21 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %4, align 8
  %22 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %14
  %26 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %27 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %4, align 8
  %30 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %33 = call i32 @bus_dmamap_sync(i32 %28, i32 %31, i32 %32)
  %34 = load %struct.sge_chain_data*, %struct.sge_chain_data** %3, align 8
  %35 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %4, align 8
  %38 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bus_dmamap_unload(i32 %36, i32 %39)
  %41 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %4, align 8
  %42 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @m_freem(i32* %43)
  %45 = load %struct.sge_rxdesc*, %struct.sge_rxdesc** %4, align 8
  %46 = getelementptr inbounds %struct.sge_rxdesc, %struct.sge_rxdesc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %25, %14
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %10

51:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
