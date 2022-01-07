; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_txeof_90xB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_txeof_90xB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { %struct.TYPE_6__, i64, i32, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.xl_chain* }
%struct.xl_chain = type { i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@XL_TXSTAT_DL_COMPLETE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@XL_TX_LIST_CNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_txeof_90xB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_txeof_90xB(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca %struct.xl_chain*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  store %struct.xl_chain* null, %struct.xl_chain** %3, align 8
  %6 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %7 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %6, i32 0, i32 4
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %10 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %9)
  %11 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %12 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %16 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %20 = call i32 @bus_dmamap_sync(i32 %14, i32 %18, i32 %19)
  %21 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %77, %1
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %28 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %25
  %33 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.xl_chain*, %struct.xl_chain** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %36, i64 %38
  store %struct.xl_chain* %39, %struct.xl_chain** %3, align 8
  %40 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %41 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32toh(i32 %44)
  %46 = load i32, i32* @XL_TXSTAT_DL_COMPLETE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %89

50:                                               ; preds = %32
  %51 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %52 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %57 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %60 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %63 = call i32 @bus_dmamap_sync(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %65 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %68 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bus_dmamap_unload(i32 %66, i32 %69)
  %71 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %72 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @m_freem(i32* %73)
  %75 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %76 = getelementptr inbounds %struct.xl_chain, %struct.xl_chain* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %55, %50
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %80 = call i32 @if_inc_counter(%struct.ifnet* %78, i32 %79, i32 1)
  %81 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %82 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %88 = call i32 @XL_INC(i32 %86, i32 %87)
  br label %25

89:                                               ; preds = %49, %25
  %90 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %91 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %97 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %101 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.xl_chain*, %struct.xl_chain** %3, align 8
  %104 = icmp ne %struct.xl_chain* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %105, %98
  ret void
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @XL_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
