; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_txfinish_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dwc/extr_if_dwc.c_dwc_txfinish_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_softc = type { i64, i64, i64, i32, %struct.dwc_bufmap*, %struct.dwc_hwdesc*, %struct.ifnet* }
%struct.dwc_bufmap = type { i32*, i32 }
%struct.dwc_hwdesc = type { i32 }
%struct.ifnet = type { i32 }

@DDESC_TDES0_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_softc*)* @dwc_txfinish_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_txfinish_locked(%struct.dwc_softc* %0) #0 {
  %2 = alloca %struct.dwc_softc*, align 8
  %3 = alloca %struct.dwc_bufmap*, align 8
  %4 = alloca %struct.dwc_hwdesc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store %struct.dwc_softc* %0, %struct.dwc_softc** %2, align 8
  %6 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %7 = call i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc* %6)
  %8 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %8, i32 0, i32 6
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  br label %11

11:                                               ; preds = %34, %1
  %12 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %11
  %20 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %20, i32 0, i32 5
  %22 = load %struct.dwc_hwdesc*, %struct.dwc_hwdesc** %21, align 8
  %23 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.dwc_hwdesc, %struct.dwc_hwdesc* %22, i64 %25
  store %struct.dwc_hwdesc* %26, %struct.dwc_hwdesc** %4, align 8
  %27 = load %struct.dwc_hwdesc*, %struct.dwc_hwdesc** %4, align 8
  %28 = getelementptr inbounds %struct.dwc_hwdesc, %struct.dwc_hwdesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DDESC_TDES0_OWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %84

34:                                               ; preds = %19
  %35 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %35, i32 0, i32 4
  %37 = load %struct.dwc_bufmap*, %struct.dwc_bufmap** %36, align 8
  %38 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.dwc_bufmap, %struct.dwc_bufmap* %37, i64 %40
  store %struct.dwc_bufmap* %41, %struct.dwc_bufmap** %3, align 8
  %42 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dwc_bufmap*, %struct.dwc_bufmap** %3, align 8
  %46 = getelementptr inbounds %struct.dwc_bufmap, %struct.dwc_bufmap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %51 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dwc_bufmap*, %struct.dwc_bufmap** %3, align 8
  %54 = getelementptr inbounds %struct.dwc_bufmap, %struct.dwc_bufmap* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bus_dmamap_unload(i32 %52, i32 %55)
  %57 = load %struct.dwc_bufmap*, %struct.dwc_bufmap** %3, align 8
  %58 = getelementptr inbounds %struct.dwc_bufmap, %struct.dwc_bufmap* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @m_freem(i32* %59)
  %61 = load %struct.dwc_bufmap*, %struct.dwc_bufmap** %3, align 8
  %62 = getelementptr inbounds %struct.dwc_bufmap, %struct.dwc_bufmap* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %64 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dwc_setup_txdesc(%struct.dwc_softc* %63, i64 %66, i32 0, i32 0)
  %68 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %69 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %70 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @next_txidx(%struct.dwc_softc* %68, i64 %71)
  %73 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %83 = call i32 @if_inc_counter(%struct.ifnet* %81, i32 %82, i32 1)
  br label %11

84:                                               ; preds = %33, %11
  %85 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %86 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %89 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.dwc_softc*, %struct.dwc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.dwc_softc, %struct.dwc_softc* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %84
  ret void
}

declare dso_local i32 @DWC_ASSERT_LOCKED(%struct.dwc_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @dwc_setup_txdesc(%struct.dwc_softc*, i64, i32, i32) #1

declare dso_local i64 @next_txidx(%struct.dwc_softc*, i64) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
