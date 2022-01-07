; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ifnet* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, %struct.alc_txdesc*, i32, i32 }
%struct.alc_txdesc = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ALC_FLAG_CMB_BUG = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_MBOX_TD_PRI0_CONS_IDX = common dso_local global i32 0, align 4
@ALC_MBOX_TD_CONS_IDX = common dso_local global i32 0, align 4
@MBOX_TD_CONS_LO_IDX_MASK = common dso_local global i64 0, align 8
@MBOX_TD_CONS_LO_IDX_SHIFT = common dso_local global i64 0, align 8
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ALC_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_txeof(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.alc_txdesc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %8 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %9 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %8)
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %176

19:                                               ; preds = %1
  %20 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %29 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %28)
  %30 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %31 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ALC_FLAG_CMB_BUG, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %19
  %37 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %46 = call i32 @bus_dmamap_sync(i32 %40, i32 %44, i32 %45)
  %47 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  br label %74

53:                                               ; preds = %19
  %54 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %62 = load i32, i32* @ALC_MBOX_TD_PRI0_CONS_IDX, align 4
  %63 = call i64 @CSR_READ_2(%struct.alc_softc* %61, i32 %62)
  store i64 %63, i64* %6, align 8
  br label %73

64:                                               ; preds = %53
  %65 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %66 = load i32, i32* @ALC_MBOX_TD_CONS_IDX, align 4
  %67 = call i64 @CSR_READ_4(%struct.alc_softc* %65, i32 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @MBOX_TD_CONS_LO_IDX_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* @MBOX_TD_CONS_LO_IDX_SHIFT, align 8
  %72 = lshr i64 %70, %71
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %64, %60
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %76 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %139, %74
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %145

83:                                               ; preds = %79
  %84 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %85 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %145

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %100 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %101, align 8
  %104 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %105 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load %struct.alc_txdesc*, %struct.alc_txdesc** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %107, i64 %108
  store %struct.alc_txdesc* %109, %struct.alc_txdesc** %4, align 8
  %110 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %111 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %138

114:                                              ; preds = %90
  %115 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %120 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %123 = call i32 @bus_dmamap_sync(i32 %118, i32 %121, i32 %122)
  %124 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %125 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %129 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @bus_dmamap_unload(i32 %127, i32 %130)
  %132 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %133 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @m_freem(i32* %134)
  %136 = load %struct.alc_txdesc*, %struct.alc_txdesc** %4, align 8
  %137 = getelementptr inbounds %struct.alc_txdesc, %struct.alc_txdesc* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %114, %90
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  %142 = load i64, i64* %5, align 8
  %143 = load i32, i32* @ALC_TX_RING_CNT, align 4
  %144 = call i32 @ALC_DESC_INC(i64 %142, i32 %143)
  br label %79

145:                                              ; preds = %89, %79
  %146 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %147 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ALC_FLAG_CMB_BUG, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %154 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %158 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %162 = call i32 @bus_dmamap_sync(i32 %156, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %152, %145
  %164 = load i64, i64* %5, align 8
  %165 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %166 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i64 %164, i64* %167, align 8
  %168 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %169 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %175 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %18, %173, %163
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @CSR_READ_2(%struct.alc_softc*, i32) #1

declare dso_local i64 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ALC_DESC_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
