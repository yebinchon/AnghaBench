; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { %struct.TYPE_6__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.vte_rxdesc* }
%struct.vte_rxdesc = type { %struct.TYPE_4__*, %struct.mbuf* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@VTE_DRST_RX_OWN = common dso_local global i32 0, align 4
@VTE_DRST_RX_OK = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@VTE_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@VTE_MRDCR = common dso_local global i32 0, align 4
@VTE_MRDCR_RX_PAUSE_THRESH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_rxeof(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vte_rxdesc*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %10 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %19 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @bus_dmamap_sync(i32 %13, i32 %17, i32 %20)
  %22 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %26, i32 0, i32 1
  %28 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  store %struct.ifnet* %28, %struct.ifnet** %3, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %136, %1
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %142

36:                                               ; preds = %29
  %37 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %40, i64 %42
  store %struct.vte_rxdesc* %43, %struct.vte_rxdesc** %4, align 8
  %44 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %45 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @le16toh(i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @VTE_DRST_RX_OWN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %142

55:                                               ; preds = %36
  %56 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %57 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @le16toh(i8* %60)
  %62 = call i32 @VTE_RX_LEN(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %64 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %63, i32 0, i32 1
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  store %struct.mbuf* %65, %struct.mbuf** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @VTE_DRST_RX_OK, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %55
  %71 = load i32, i32* @MCLBYTES, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i8* @htole16(i32 %74)
  %76 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %77 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8* %75, i8** %79, align 8
  %80 = load i32, i32* @VTE_DRST_RX_OWN, align 4
  %81 = call i8* @htole16(i32 %80)
  %82 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %83 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  br label %136

86:                                               ; preds = %55
  %87 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %88 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %89 = call i64 @vte_newbuf(%struct.vte_softc* %87, %struct.vte_rxdesc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %94 = call i32 @if_inc_counter(%struct.ifnet* %92, i32 %93, i32 1)
  %95 = load i32, i32* @MCLBYTES, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i8* @htole16(i32 %98)
  %100 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %101 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load i32, i32* @VTE_DRST_RX_OWN, align 4
  %105 = call i8* @htole16(i32 %104)
  %106 = load %struct.vte_rxdesc*, %struct.vte_rxdesc** %4, align 8
  %107 = getelementptr inbounds %struct.vte_rxdesc, %struct.vte_rxdesc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  br label %136

110:                                              ; preds = %86
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @ETHER_CRC_LEN, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %115 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 8
  %119 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store %struct.ifnet* %119, %struct.ifnet** %122, align 8
  %123 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %125 = call i32 @vte_fixup_rx(%struct.ifnet* %123, %struct.mbuf* %124)
  %126 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %127 = call i32 @VTE_UNLOCK(%struct.vte_softc* %126)
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 1
  %130 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %129, align 8
  %131 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %132 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %133 = call i32 %130(%struct.ifnet* %131, %struct.mbuf* %132)
  %134 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %135 = call i32 @VTE_LOCK(%struct.vte_softc* %134)
  br label %136

136:                                              ; preds = %110, %91, %70
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @VTE_RX_RING_CNT, align 4
  %141 = call i32 @VTE_DESC_INC(i32 %139, i32 %140)
  br label %29

142:                                              ; preds = %54, %29
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %148 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %151 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %155 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %159 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @bus_dmamap_sync(i32 %153, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %145, %142
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le16toh(i8*) #1

declare dso_local i32 @VTE_RX_LEN(i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i64 @vte_newbuf(%struct.vte_softc*, %struct.vte_rxdesc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @vte_fixup_rx(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @VTE_UNLOCK(%struct.vte_softc*) #1

declare dso_local i32 @VTE_LOCK(%struct.vte_softc*) #1

declare dso_local i32 @VTE_DESC_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
