; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_rxfinish_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_rxfinish_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i32, %struct.ifnet*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.ifnet* }
%struct.TYPE_5__ = type { %struct.mbuf*, i32 }
%struct.TYPE_4__ = type { i32 }

@DDESC_RDES0_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@DDESC_RDES0_FL_SHIFT = common dso_local global i32 0, align 4
@DDESC_RDES0_FL_MASK = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_softc*)* @dwc_rxfinish_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_rxfinish_locked(%struct.dwc_softc* %0) #0 {
  %2 = alloca %struct.dwc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc_softc* %0, %struct.dwc_softc** %2, align 8
  %10 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %10, i32 0, i32 1
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  br label %13

13:                                               ; preds = %119, %1
  %14 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @DDESC_RDES0_OWN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %127

30:                                               ; preds = %13
  %31 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %32 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %35 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %43 = call i32 @bus_dmamap_sync(i32 %33, i32 %41, i32 %42)
  %44 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %45 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bus_dmamap_unload(i32 %46, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @DDESC_RDES0_FL_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = load i32, i32* @DDESC_RDES0_FL_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %30
  %64 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.mbuf*, %struct.mbuf** %70, align 8
  store %struct.mbuf* %71, %struct.mbuf** %5, align 8
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store %struct.ifnet* %72, %struct.ifnet** %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %84 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %85 = call i32 @if_inc_counter(%struct.ifnet* %83, i32 %84, i32 1)
  %86 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %87 = load i32, i32* @ETHER_CRC_LEN, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @m_adj(%struct.mbuf* %86, i32 %88)
  %90 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %91 = call i32 @DWC_UNLOCK(%struct.dwc_softc* %90)
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 0
  %94 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %93, align 8
  %95 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %97 = call i32 %94(%struct.ifnet* %95, %struct.mbuf* %96)
  %98 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %99 = call i32 @DWC_LOCK(%struct.dwc_softc* %98)
  br label %101

100:                                              ; preds = %30
  br label %101

101:                                              ; preds = %100, %63
  %102 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %103 = call %struct.mbuf* @dwc_alloc_mbufcl(%struct.dwc_softc* %102)
  store %struct.mbuf* %103, %struct.mbuf** %4, align 8
  %104 = icmp ne %struct.mbuf* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %109 = call i32 @dwc_setup_rxbuf(%struct.dwc_softc* %106, i32 %107, %struct.mbuf* %108)
  store i32 %109, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %105
  br label %119

113:                                              ; preds = %101
  %114 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %115 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %114, i32 0, i32 1
  %116 = load %struct.ifnet*, %struct.ifnet** %115, align 8
  %117 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %118 = call i32 @if_inc_counter(%struct.ifnet* %116, i32 %117, i32 1)
  br label %119

119:                                              ; preds = %113, %112
  %120 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %121 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %122 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @next_rxidx(%struct.dwc_softc* %120, i32 %123)
  %125 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %13

127:                                              ; preds = %29
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @DWC_UNLOCK(%struct.dwc_softc*) #1

declare dso_local i32 @DWC_LOCK(%struct.dwc_softc*) #1

declare dso_local %struct.mbuf* @dwc_alloc_mbufcl(%struct.dwc_softc*) #1

declare dso_local i32 @dwc_setup_rxbuf(%struct.dwc_softc*, i32, %struct.mbuf*) #1

declare dso_local i32 @next_rxidx(%struct.dwc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
