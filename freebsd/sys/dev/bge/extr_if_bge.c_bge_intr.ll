; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@BGE_MBX_IRQ0_LO = common dso_local global i32 0, align 4
@BGE_MAC_STS = common dso_local global i32 0, align 4
@BGE_MACSTAT_LINK_CHANGED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5700 = common dso_local global i64 0, align 8
@BGE_CHIPID_BCM5700_B2 = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.bge_softc*
  store %struct.bge_softc* %9, %struct.bge_softc** %3, align 8
  %10 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %11 = call i32 @BGE_LOCK(%struct.bge_softc* %10)
  %12 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %16 = load i32, i32* @BGE_MBX_IRQ0_LO, align 4
  %17 = call i32 @bge_writembx(%struct.bge_softc* %15, i32 %16, i32 0)
  %18 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %19 = load i32, i32* @BGE_MAC_STS, align 4
  %20 = call i32 @CSR_READ_4(%struct.bge_softc* %18, i32 %19)
  %21 = load i32, i32* @BGE_MACSTAT_LINK_CHANGED, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %32 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @bus_dmamap_sync(i32 %26, i32 %30, i32 %33)
  %35 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %54 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %67 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @bus_dmamap_sync(i32 %61, i32 %65, i32 %68)
  %70 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %71 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %1
  %76 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %77 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BGE_CHIPID_BCM5700_B2, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %75, %1
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %86 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %81, %75
  %90 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %91 = call i32 @bge_link_upd(%struct.bge_softc* %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @if_getdrvflags(i32 %93)
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @bge_rxeof(%struct.bge_softc* %99, i32 %100, i32 1)
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @if_getdrvflags(i32 %103)
  %105 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @bge_txeof(%struct.bge_softc* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @if_getdrvflags(i32 %113)
  %115 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @if_sendq_empty(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @bge_start_locked(i32 %123)
  br label %125

125:                                              ; preds = %122, %118, %112
  %126 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %127 = call i32 @BGE_UNLOCK(%struct.bge_softc* %126)
  ret void
}

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bge_link_upd(%struct.bge_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @bge_rxeof(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_txeof(%struct.bge_softc*, i32) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @bge_start_locked(i32) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
