; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i64, i32, %struct.et_txbuf_data, %struct.et_txdesc_ring, %struct.ifnet* }
%struct.et_txbuf_data = type { i32, i32, i32, %struct.et_txbuf* }
%struct.et_txbuf = type { i32*, i32 }
%struct.et_txdesc_ring = type { i32, i32 }
%struct.ifnet = type { i32 }

@ET_FLAG_TXRX_ENABLED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ET_TX_DONE_POS = common dso_local global i32 0, align 4
@ET_TX_DONE_POS_INDEX_MASK = common dso_local global i32 0, align 4
@ET_TX_DONE_POS_WRAP = common dso_local global i32 0, align 4
@ET_TX_NDESC = common dso_local global i32 0, align 4
@ET_NSEG_SPARE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_txeof(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.et_txdesc_ring*, align 8
  %4 = alloca %struct.et_txbuf_data*, align 8
  %5 = alloca %struct.et_txbuf*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %10 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %11 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %10)
  %12 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %13 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %12, i32 0, i32 5
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %6, align 8
  %15 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %16 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %15, i32 0, i32 4
  store %struct.et_txdesc_ring* %16, %struct.et_txdesc_ring** %3, align 8
  %17 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %18 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %17, i32 0, i32 3
  store %struct.et_txbuf_data* %18, %struct.et_txbuf_data** %4, align 8
  %19 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %20 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ET_FLAG_TXRX_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %157

26:                                               ; preds = %1
  %27 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %28 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %157

32:                                               ; preds = %26
  %33 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %34 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %3, align 8
  %37 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %40 = call i32 @bus_dmamap_sync(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %42 = load i32, i32* @ET_TX_DONE_POS, align 4
  %43 = call i32 @CSR_READ_4(%struct.et_softc* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ET_TX_DONE_POS_INDEX_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ET_TX_DONE_POS_WRAP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %123, %32
  %54 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %55 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %61 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %62, %63
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i1 [ true, %53 ], [ %64, %59 ]
  br i1 %66, label %67, label %134

67:                                               ; preds = %65
  %68 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %69 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ET_TX_NDESC, align 4
  %72 = icmp slt i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @MPASS(i32 %73)
  %75 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %76 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %75, i32 0, i32 3
  %77 = load %struct.et_txbuf*, %struct.et_txbuf** %76, align 8
  %78 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %79 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %77, i64 %81
  store %struct.et_txbuf* %82, %struct.et_txbuf** %5, align 8
  %83 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %84 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %67
  %88 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %89 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %92 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %95 = call i32 @bus_dmamap_sync(i32 %90, i32 %93, i32 %94)
  %96 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %97 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %100 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bus_dmamap_unload(i32 %98, i32 %101)
  %103 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %104 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @m_freem(i32* %105)
  %107 = load %struct.et_txbuf*, %struct.et_txbuf** %5, align 8
  %108 = getelementptr inbounds %struct.et_txbuf, %struct.et_txbuf* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %87, %67
  %110 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %111 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @ET_TX_NDESC, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %118 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %120 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = xor i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %116, %109
  %124 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %125 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @MPASS(i32 %128)
  %130 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %131 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 8
  br label %53

134:                                              ; preds = %65
  %135 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %136 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %141 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  br label %142

142:                                              ; preds = %139, %134
  %143 = load %struct.et_txbuf_data*, %struct.et_txbuf_data** %4, align 8
  %144 = getelementptr inbounds %struct.et_txbuf_data, %struct.et_txbuf_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ET_NSEG_SPARE, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* @ET_TX_NDESC, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %154 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %25, %31, %150, %142
  ret void
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
