; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_release_sbd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_release_sbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipw_soft_bd = type { i32, %struct.ipw_soft_hdr* }
%struct.ipw_soft_hdr = type { i32, i32, i32 }
%struct.ipw_soft_buf = type { i32, i32, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@IPW_SBD_TYPE_NOASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*, %struct.ipw_soft_bd*)* @ipw_release_sbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_release_sbd(%struct.ipw_softc* %0, %struct.ipw_soft_bd* %1) #0 {
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca %struct.ipw_soft_bd*, align 8
  %5 = alloca %struct.ipw_soft_hdr*, align 8
  %6 = alloca %struct.ipw_soft_buf*, align 8
  store %struct.ipw_softc* %0, %struct.ipw_softc** %3, align 8
  store %struct.ipw_soft_bd* %1, %struct.ipw_soft_bd** %4, align 8
  %7 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %8 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %85 [
    i32 130, label %10
    i32 128, label %26
    i32 129, label %50
  ]

10:                                               ; preds = %2
  %11 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %18 = call i32 @bus_dmamap_sync(i32 %13, i32 %16, i32 %17)
  %19 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_dmamap_unload(i32 %21, i32 %24)
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %28 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %27, i32 0, i32 1
  %29 = load %struct.ipw_soft_hdr*, %struct.ipw_soft_hdr** %28, align 8
  store %struct.ipw_soft_hdr* %29, %struct.ipw_soft_hdr** %5, align 8
  %30 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipw_soft_hdr*, %struct.ipw_soft_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.ipw_soft_hdr, %struct.ipw_soft_hdr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %37 = call i32 @bus_dmamap_sync(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipw_soft_hdr*, %struct.ipw_soft_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.ipw_soft_hdr, %struct.ipw_soft_hdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bus_dmamap_unload(i32 %40, i32 %43)
  %45 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %45, i32 0, i32 3
  %47 = load %struct.ipw_soft_hdr*, %struct.ipw_soft_hdr** %5, align 8
  %48 = load i32, i32* @next, align 4
  %49 = call i32 @SLIST_INSERT_HEAD(i32* %46, %struct.ipw_soft_hdr* %47, i32 %48)
  br label %85

50:                                               ; preds = %2
  %51 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %52 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %51, i32 0, i32 1
  %53 = load %struct.ipw_soft_hdr*, %struct.ipw_soft_hdr** %52, align 8
  %54 = bitcast %struct.ipw_soft_hdr* %53 to %struct.ipw_soft_buf*
  store %struct.ipw_soft_buf* %54, %struct.ipw_soft_buf** %6, align 8
  %55 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %6, align 8
  %59 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %62 = call i32 @bus_dmamap_sync(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %6, align 8
  %67 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bus_dmamap_unload(i32 %65, i32 %68)
  %70 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %70, i32 0, i32 1
  %72 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %6, align 8
  %73 = bitcast %struct.ipw_soft_buf* %72 to %struct.ipw_soft_hdr*
  %74 = load i32, i32* @next, align 4
  %75 = call i32 @SLIST_INSERT_HEAD(i32* %71, %struct.ipw_soft_hdr* %73, i32 %74)
  %76 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %6, align 8
  %77 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ipw_soft_buf*, %struct.ipw_soft_buf** %6, align 8
  %80 = getelementptr inbounds %struct.ipw_soft_buf, %struct.ipw_soft_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ieee80211_tx_complete(i32 %78, i32 %81, i32 0)
  %83 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %2, %50, %26, %10
  %86 = load i32, i32* @IPW_SBD_TYPE_NOASSOC, align 4
  %87 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %4, align 8
  %88 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.ipw_soft_hdr*, i32) #1

declare dso_local i32 @ieee80211_tx_complete(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
