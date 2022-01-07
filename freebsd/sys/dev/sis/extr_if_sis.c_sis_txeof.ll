; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i64, i64, i64, i32, %struct.sis_txdesc*, %struct.sis_desc*, i32, i32, %struct.ifnet* }
%struct.sis_txdesc = type { i32*, i32 }
%struct.sis_desc = type { i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@SIS_CMDSTS_OWN = common dso_local global i64 0, align 8
@SIS_CMDSTS_PKT_OK = common dso_local global i64 0, align 8
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@SIS_TXSTAT_COLLCNT = common dso_local global i64 0, align 8
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@SIS_TXSTAT_EXCESSCOLLS = common dso_local global i64 0, align 8
@SIS_TXSTAT_OUTOFWINCOLL = common dso_local global i64 0, align 8
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@SIS_TX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_txeof(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.sis_desc*, align 8
  %5 = alloca %struct.sis_txdesc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %8 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %9 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %8)
  %10 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %151

19:                                               ; preds = %1
  %20 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %21 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %20, i32 0, i32 9
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  store %struct.ifnet* %22, %struct.ifnet** %3, align 8
  %23 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %24 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %27 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %30 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @bus_dmamap_sync(i32 %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %136, %19
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %36 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %140

39:                                               ; preds = %33
  %40 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %41 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %40, i32 0, i32 6
  %42 = load %struct.sis_desc*, %struct.sis_desc** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.sis_desc, %struct.sis_desc* %42, i64 %43
  store %struct.sis_desc* %44, %struct.sis_desc** %4, align 8
  %45 = load %struct.sis_desc*, %struct.sis_desc** %4, align 8
  %46 = getelementptr inbounds %struct.sis_desc, %struct.sis_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32toh(i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SIS_CMDSTS_OWN, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %140

54:                                               ; preds = %39
  %55 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %56 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %55, i32 0, i32 5
  %57 = load %struct.sis_txdesc*, %struct.sis_txdesc** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %57, i64 %58
  store %struct.sis_txdesc* %59, %struct.sis_txdesc** %5, align 8
  %60 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %61 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %125

64:                                               ; preds = %54
  %65 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %66 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %69 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %72 = call i32 @bus_dmamap_sync(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %74 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %77 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bus_dmamap_unload(i32 %75, i32 %78)
  %80 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %81 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @m_freem(i32* %82)
  %84 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %85 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @SIS_CMDSTS_PKT_OK, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %64
  %91 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %92 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %93 = call i32 @if_inc_counter(%struct.ifnet* %91, i32 %92, i32 1)
  %94 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %95 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @SIS_TXSTAT_COLLCNT, align 8
  %98 = and i64 %96, %97
  %99 = lshr i64 %98, 16
  %100 = trunc i64 %99 to i32
  %101 = call i32 @if_inc_counter(%struct.ifnet* %94, i32 %95, i32 %100)
  br label %124

102:                                              ; preds = %64
  %103 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %104 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %105 = call i32 @if_inc_counter(%struct.ifnet* %103, i32 %104, i32 1)
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @SIS_TXSTAT_EXCESSCOLLS, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %112 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %113 = call i32 @if_inc_counter(%struct.ifnet* %111, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %110, %102
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @SIS_TXSTAT_OUTOFWINCOLL, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %121 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %122 = call i32 @if_inc_counter(%struct.ifnet* %120, i32 %121, i32 1)
  br label %123

123:                                              ; preds = %119, %114
  br label %124

124:                                              ; preds = %123, %90
  br label %125

125:                                              ; preds = %124, %54
  %126 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %127 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %127, align 8
  %130 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %125
  %137 = load i64, i64* %6, align 8
  %138 = load i32, i32* @SIS_TX_LIST_CNT, align 4
  %139 = call i32 @SIS_INC(i64 %137, i32 %138)
  br label %33

140:                                              ; preds = %53, %33
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %143 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %145 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %150 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %18, %148, %140
  ret void
}

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @SIS_INC(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
