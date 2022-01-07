; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_ratectl_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_ratectl_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_vap = type { i32, i32, %struct.ieee80211vap }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rum_softc* }
%struct.rum_softc = type { i32*, %struct.ieee80211_ratectl_tx_stats }
%struct.ieee80211_ratectl_tx_stats = type { i32, i32, i32, i32 }

@RT2573_STA_CSR0 = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_STATS_RETRIES = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rum_ratectl_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rum_ratectl_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_ratectl_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rum_vap*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.rum_softc*, align 8
  %8 = alloca %struct.ieee80211_ratectl_tx_stats*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.rum_vap*
  store %struct.rum_vap* %12, %struct.rum_vap** %5, align 8
  %13 = load %struct.rum_vap*, %struct.rum_vap** %5, align 8
  %14 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %13, i32 0, i32 2
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %6, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.rum_softc*, %struct.rum_softc** %18, align 8
  store %struct.rum_softc* %19, %struct.rum_softc** %7, align 8
  %20 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %21 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %20, i32 0, i32 1
  store %struct.ieee80211_ratectl_tx_stats* %21, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %22 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %23 = call i32 @RUM_LOCK(%struct.rum_softc* %22)
  %24 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %25 = load i32, i32* @RT2573_STA_CSR0, align 4
  %26 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %27 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @rum_read_multi(%struct.rum_softc* %24, i32 %25, i32* %28, i32 8)
  %30 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %31 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32toh(i32 %34)
  %36 = and i32 %35, 65535
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %39 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32toh(i32 %42)
  %44 = ashr i32 %43, 16
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %47 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32toh(i32 %50)
  %52 = and i32 %51, 65535
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %55 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32toh(i32 %58)
  %60 = ashr i32 %59, 16
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @IEEE80211_RATECTL_TX_STATS_RETRIES, align 4
  %62 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %65, %67
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 %84, %87
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.rum_vap*, %struct.rum_vap** %5, align 8
  %91 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = mul nsw i32 %89, %93
  %95 = add nsw i32 %88, %94
  %96 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %99 = getelementptr inbounds %struct.ieee80211_ratectl_tx_stats, %struct.ieee80211_ratectl_tx_stats* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %2
  %103 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %104 = load %struct.ieee80211_ratectl_tx_stats*, %struct.ieee80211_ratectl_tx_stats** %8, align 8
  %105 = call i32 @ieee80211_ratectl_tx_update(%struct.ieee80211vap* %103, %struct.ieee80211_ratectl_tx_stats* %104)
  br label %106

106:                                              ; preds = %102, %2
  %107 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @if_inc_counter(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.rum_vap*, %struct.rum_vap** %5, align 8
  %114 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %113, i32 0, i32 1
  %115 = load i32, i32* @hz, align 4
  %116 = load i32, i32* @rum_ratectl_timeout, align 4
  %117 = load %struct.rum_vap*, %struct.rum_vap** %5, align 8
  %118 = call i32 @usb_callout_reset(i32* %114, i32 %115, i32 %116, %struct.rum_vap* %117)
  %119 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %120 = call i32 @RUM_UNLOCK(%struct.rum_softc* %119)
  ret void
}

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @rum_read_multi(%struct.rum_softc*, i32, i32*, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @ieee80211_ratectl_tx_update(%struct.ieee80211vap*, %struct.ieee80211_ratectl_tx_stats*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.rum_vap*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
