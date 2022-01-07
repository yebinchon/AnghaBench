; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_transmit_intr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_transmit_intr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i64, i64, i64, i32, i32, i32, %struct.tsec_bufmap*, %struct.tsec_desc*, %struct.ifnet* }
%struct.tsec_bufmap = type { i32*, i32 }
%struct.tsec_desc = type { i32 }
%struct.ifnet = type { i32 }

@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@TSEC_REG_MON_TNCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TSCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TMCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TLCL = common dso_local global i32 0, align 4
@TSEC_REG_MON_TXCL = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TSEC_TXBD_R = common dso_local global i32 0, align 4
@TSEC_TX_NUM_DESC = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*)* @tsec_transmit_intr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_transmit_intr_locked(%struct.tsec_softc* %0) #0 {
  %2 = alloca %struct.tsec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tsec_desc*, align 8
  %6 = alloca %struct.tsec_bufmap*, align 8
  store %struct.tsec_softc* %0, %struct.tsec_softc** %2, align 8
  %7 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %8 = call i32 @TSEC_TRANSMIT_LOCK_ASSERT(%struct.tsec_softc* %7)
  %9 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %9, i32 0, i32 8
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %14 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %15 = load i32, i32* @TSEC_REG_MON_TNCL, align 4
  %16 = call i32 @TSEC_READ(%struct.tsec_softc* %14, i32 %15)
  %17 = call i32 @if_inc_counter(%struct.ifnet* %12, i32 %13, i32 %16)
  %18 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %19 = load i32, i32* @TSEC_REG_MON_TSCL, align 4
  %20 = call i32 @TSEC_WRITE(%struct.tsec_softc* %18, i32 %19, i32 0)
  %21 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %22 = load i32, i32* @TSEC_REG_MON_TMCL, align 4
  %23 = call i32 @TSEC_WRITE(%struct.tsec_softc* %21, i32 %22, i32 0)
  %24 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %25 = load i32, i32* @TSEC_REG_MON_TLCL, align 4
  %26 = call i32 @TSEC_WRITE(%struct.tsec_softc* %24, i32 %25, i32 0)
  %27 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %28 = load i32, i32* @TSEC_REG_MON_TXCL, align 4
  %29 = call i32 @TSEC_WRITE(%struct.tsec_softc* %27, i32 %28, i32 0)
  %30 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %31 = load i32, i32* @TSEC_REG_MON_TNCL, align 4
  %32 = call i32 @TSEC_WRITE(%struct.tsec_softc* %30, i32 %31, i32 0)
  %33 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %34 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %40 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @bus_dmamap_sync(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %44 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %82, %81, %1
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %49 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %46
  %53 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %54 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %53, i32 0, i32 7
  %55 = load %struct.tsec_desc*, %struct.tsec_desc** %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %55, i64 %56
  store %struct.tsec_desc* %57, %struct.tsec_desc** %5, align 8
  %58 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %59 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TSEC_TXBD_R, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %107

65:                                               ; preds = %52
  %66 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %67 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %66, i32 0, i32 6
  %68 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %68, i64 %69
  store %struct.tsec_bufmap* %70, %struct.tsec_bufmap** %6, align 8
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1
  %73 = load i32, i32* @TSEC_TX_NUM_DESC, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = and i64 %72, %75
  store i64 %76, i64* %4, align 8
  %77 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %6, align 8
  %78 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  br label %46

82:                                               ; preds = %65
  %83 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %84 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %6, align 8
  %87 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %90 = call i32 @bus_dmamap_sync(i32 %85, i32 %88, i32 %89)
  %91 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %92 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %6, align 8
  %95 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bus_dmamap_unload(i32 %93, i32 %96)
  %98 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %6, align 8
  %99 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @m_freem(i32* %100)
  %102 = load %struct.tsec_bufmap*, %struct.tsec_bufmap** %6, align 8
  %103 = getelementptr inbounds %struct.tsec_bufmap, %struct.tsec_bufmap* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %105 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %106 = call i32 @if_inc_counter(%struct.ifnet* %104, i32 %105, i32 1)
  br label %46

107:                                              ; preds = %64, %46
  %108 = load i64, i64* %4, align 8
  %109 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %110 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %112 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %115 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %118 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @bus_dmamap_sync(i32 %113, i32 %116, i32 %119)
  %121 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %128 = call i32 @tsec_start_locked(%struct.ifnet* %127)
  %129 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %130 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %133 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %107
  %137 = load %struct.tsec_softc*, %struct.tsec_softc** %2, align 8
  %138 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %136, %107
  ret void
}

declare dso_local i32 @TSEC_TRANSMIT_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @TSEC_READ(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @tsec_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
