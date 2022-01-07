; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i64, i64, i32, %struct.bfe_tx_data*, i32, i32, %struct.ifnet* }
%struct.bfe_tx_data = type { i32*, i32 }
%struct.ifnet = type { i32 }

@BFE_DMATX_STAT = common dso_local global i32 0, align 4
@BFE_STAT_CDMASK = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BFE_TX_LIST_CNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_txeof(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca %struct.bfe_tx_data*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %7 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %8 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %7)
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %9, i32 0, i32 7
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %13 = load i32, i32* @BFE_DMATX_STAT, align 4
  %14 = call i32 @CSR_READ_4(%struct.bfe_softc* %12, i32 %13)
  %15 = load i32, i32* @BFE_STAT_CDMASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %109

28:                                               ; preds = %1
  %29 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %36 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @bus_dmamap_sync(i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %81, %28
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %44, i32 0, i32 4
  %46 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %46, i64 %48
  store %struct.bfe_tx_data* %49, %struct.bfe_tx_data** %3, align 8
  %50 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %51 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %55 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %81

59:                                               ; preds = %43
  %60 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %64 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %67 = call i32 @bus_dmamap_sync(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %72 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_dmamap_unload(i32 %70, i32 %73)
  %75 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %76 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @m_freem(i32* %77)
  %79 = load %struct.bfe_tx_data*, %struct.bfe_tx_data** %3, align 8
  %80 = getelementptr inbounds %struct.bfe_tx_data, %struct.bfe_tx_data* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %59, %58
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @BFE_TX_LIST_CNT, align 4
  %84 = call i32 @BFE_INC(i32 %82, i32 %83)
  br label %39

85:                                               ; preds = %39
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %88 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %91, %85
  %102 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %103 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %27, %106, %101
  ret void
}

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @BFE_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
