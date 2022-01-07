; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.are_txdesc*, i32 }
%struct.are_txdesc = type { i32*, i32 }
%struct.TYPE_3__ = type { %struct.are_desc* }
%struct.are_desc = type { i32, i32, i64 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ADSTAT_Tx_ES = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@ARE_TX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.are_softc*)* @are_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @are_tx(%struct.are_softc* %0) #0 {
  %2 = alloca %struct.are_softc*, align 8
  %3 = alloca %struct.are_txdesc*, align 8
  %4 = alloca %struct.are_desc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.are_softc* %0, %struct.are_softc** %2, align 8
  %10 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %11 = call i32 @ARE_LOCK_ASSERT(%struct.are_softc* %10)
  %12 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %13 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %17 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %148

24:                                               ; preds = %1
  %25 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %26 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %30 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %34 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @bus_dmamap_sync(i32 %28, i32 %32, i32 %35)
  %37 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %38 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %37, i32 0, i32 2
  %39 = load %struct.ifnet*, %struct.ifnet** %38, align 8
  store %struct.ifnet* %39, %struct.ifnet** %5, align 8
  br label %40

40:                                               ; preds = %129, %24
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %133

44:                                               ; preds = %40
  %45 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %46 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.are_desc*, %struct.are_desc** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %48, i64 %50
  store %struct.are_desc* %51, %struct.are_desc** %4, align 8
  %52 = load %struct.are_desc*, %struct.are_desc** %4, align 8
  %53 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %6, align 4
  %55 = load %struct.are_desc*, %struct.are_desc** %4, align 8
  %56 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @ARE_DMASIZE(i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %133

62:                                               ; preds = %44
  %63 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %64 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %75 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load %struct.are_txdesc*, %struct.are_txdesc** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %77, i64 %79
  store %struct.are_txdesc* %80, %struct.are_txdesc** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ADSTAT_Tx_ES, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %62
  %86 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %87 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %88 = call i32 @if_inc_counter(%struct.ifnet* %86, i32 %87, i32 1)
  br label %93

89:                                               ; preds = %62
  %90 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %91 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %92 = call i32 @if_inc_counter(%struct.ifnet* %90, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %95 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.are_txdesc*, %struct.are_txdesc** %3, align 8
  %99 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %102 = call i32 @bus_dmamap_sync(i32 %97, i32 %100, i32 %101)
  %103 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %104 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.are_txdesc*, %struct.are_txdesc** %3, align 8
  %108 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bus_dmamap_unload(i32 %106, i32 %109)
  %111 = load %struct.are_txdesc*, %struct.are_txdesc** %3, align 8
  %112 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %93
  %116 = load %struct.are_txdesc*, %struct.are_txdesc** %3, align 8
  %117 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @m_freem(i32* %118)
  br label %120

120:                                              ; preds = %115, %93
  %121 = load %struct.are_txdesc*, %struct.are_txdesc** %3, align 8
  %122 = getelementptr inbounds %struct.are_txdesc, %struct.are_txdesc* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load %struct.are_desc*, %struct.are_desc** %4, align 8
  %124 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  %125 = load %struct.are_desc*, %struct.are_desc** %4, align 8
  %126 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.are_desc*, %struct.are_desc** %4, align 8
  %128 = getelementptr inbounds %struct.are_desc, %struct.are_desc* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @ARE_TX_RING_CNT, align 4
  %132 = call i32 @ARE_INC(i32 %130, i32 %131)
  br label %40

133:                                              ; preds = %61, %40
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %136 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %139 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %143 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %147 = call i32 @bus_dmamap_sync(i32 %141, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %133, %23
  ret void
}

declare dso_local i32 @ARE_LOCK_ASSERT(%struct.are_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @ARE_DMASIZE(i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ARE_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
