; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_txfinish_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_txfinish_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i64, i64, i64, i32, %struct.ffec_bufmap*, %struct.ffec_hwdesc*, %struct.ifnet*, i32, i32 }
%struct.ffec_bufmap = type { i32*, i32 }
%struct.ffec_hwdesc = type { i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@FEC_TXDESC_READY = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_txfinish_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_txfinish_locked(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ffec_hwdesc*, align 8
  %5 = alloca %struct.ffec_bufmap*, align 8
  %6 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %7 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %8 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %7)
  %9 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %16 = call i32 @bus_dmamap_sync(i32 %11, i32 %14, i32 %15)
  %17 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %24 = call i32 @bus_dmamap_sync(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %25, i32 0, i32 6
  %27 = load %struct.ifnet*, %struct.ifnet** %26, align 8
  store %struct.ifnet* %27, %struct.ifnet** %3, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %1
  %29 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %28
  %37 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %37, i32 0, i32 5
  %39 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %38, align 8
  %40 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %39, i64 %42
  store %struct.ffec_hwdesc* %43, %struct.ffec_hwdesc** %4, align 8
  %44 = load %struct.ffec_hwdesc*, %struct.ffec_hwdesc** %4, align 8
  %45 = getelementptr inbounds %struct.ffec_hwdesc, %struct.ffec_hwdesc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FEC_TXDESC_READY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %92

51:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  %52 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %52, i32 0, i32 4
  %54 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %53, align 8
  %55 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %54, i64 %57
  store %struct.ffec_bufmap* %58, %struct.ffec_bufmap** %5, align 8
  %59 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %63 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %66 = call i32 @bus_dmamap_sync(i32 %61, i32 %64, i32 %65)
  %67 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %71 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bus_dmamap_unload(i32 %69, i32 %72)
  %74 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %75 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @m_freem(i32* %76)
  %78 = load %struct.ffec_bufmap*, %struct.ffec_bufmap** %5, align 8
  %79 = getelementptr inbounds %struct.ffec_bufmap, %struct.ffec_bufmap* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  %80 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %81 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ffec_setup_txdesc(%struct.ffec_softc* %80, i64 %83, i32 0, i32 0)
  %85 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %86 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @next_txidx(%struct.ffec_softc* %85, i64 %88)
  %90 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %28

92:                                               ; preds = %50, %28
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %103 = call i32 @ffec_txstart_locked(%struct.ffec_softc* %102)
  br label %104

104:                                              ; preds = %95, %92
  %105 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %109 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %112, %104
  ret void
}

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ffec_setup_txdesc(%struct.ffec_softc*, i64, i32, i32) #1

declare dso_local i64 @next_txidx(%struct.ffec_softc*, i64) #1

declare dso_local i32 @ffec_txstart_locked(%struct.ffec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
