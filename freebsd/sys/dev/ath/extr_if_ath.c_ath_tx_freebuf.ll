; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_freebuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_tx_freebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_buf = type { %struct.mbuf*, %struct.ieee80211_node*, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_node = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_tx_freebuf(%struct.ath_softc* %0, %struct.ath_buf* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %10 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %10, align 8
  store %struct.ieee80211_node* %11, %struct.ieee80211_node** %7, align 8
  %12 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %13 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %12, i32 0, i32 0
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %8, align 8
  %15 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %16 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %15, i32 0, i32 0
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %24 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %27 = call i32 @bus_dmamap_sync(i32 %22, i32 %25, i32 %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %32 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamap_unload(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %19, %3
  %36 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %37 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %36, i32 0, i32 1
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %37, align 8
  %38 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %39 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %38, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %39, align 8
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = load %struct.ath_buf*, %struct.ath_buf** %5, align 8
  %42 = call i32 @ath_freebuf(%struct.ath_softc* %40, %struct.ath_buf* %41)
  %43 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ieee80211_tx_complete(%struct.ieee80211_node* %43, %struct.mbuf* %44, i32 %45)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ath_freebuf(%struct.ath_softc*, %struct.ath_buf*) #1

declare dso_local i32 @ieee80211_tx_complete(%struct.ieee80211_node*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
