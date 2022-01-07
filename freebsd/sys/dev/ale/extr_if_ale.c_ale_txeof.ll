; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i64, %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i64, i64*, i64, i32, %struct.ale_txdesc*, i32, i32, i32, i32 }
%struct.ale_txdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ALE_FLAG_TXCMB_BUG = common dso_local global i32 0, align 4
@TPD_CNT_MASK = common dso_local global i64 0, align 8
@ALE_TPD_CONS_IDX = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ALE_TX_RING_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_txeof(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ale_txdesc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %8 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %9 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %8)
  %10 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %10, i32 0, i32 3
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %30)
  %32 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ALE_FLAG_TXCMB_BUG, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %19
  %39 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @bus_dmamap_sync(i32 %42, i32 %46, i32 %49)
  %51 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TPD_CNT_MASK, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %6, align 8
  br label %62

58:                                               ; preds = %19
  %59 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %60 = load i32, i32* @ALE_TPD_CONS_IDX, align 4
  %61 = call i64 @CSR_READ_2(%struct.ale_softc* %59, i32 %60)
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %58, %38
  %63 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %127, %62
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %133

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load %struct.ale_txdesc*, %struct.ale_txdesc** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %95, i64 %96
  store %struct.ale_txdesc* %97, %struct.ale_txdesc** %4, align 8
  %98 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %99 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %78
  %103 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %108 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %111 = call i32 @bus_dmamap_sync(i32 %106, i32 %109, i32 %110)
  %112 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %117 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @bus_dmamap_unload(i32 %115, i32 %118)
  %120 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %121 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @m_freem(i32* %122)
  %124 = load %struct.ale_txdesc*, %struct.ale_txdesc** %4, align 8
  %125 = getelementptr inbounds %struct.ale_txdesc, %struct.ale_txdesc* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %102, %78
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  %130 = load i64, i64* %5, align 8
  %131 = load i32, i32* @ALE_TX_RING_CNT, align 4
  %132 = call i32 @ALE_DESC_INC(i64 %130, i32 %131)
  br label %67

133:                                              ; preds = %77, %67
  %134 = load i32, i32* %7, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i64 %137, i64* %140, align 8
  %141 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %136
  br label %150

150:                                              ; preds = %18, %149, %133
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @CSR_READ_2(%struct.ale_softc*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ALE_DESC_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
