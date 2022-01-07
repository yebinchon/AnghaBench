; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_enable_tsf_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_enable_tsf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211vap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2661_TXRX_CSR10 = common dso_local global i32 0, align 4
@RT2661_TXRX_CSR9 = common dso_local global i32 0, align 4
@RT2661_TSF_TICKING = common dso_local global i32 0, align 4
@RT2661_ENABLE_TBTT = common dso_local global i32 0, align 4
@RT2661_GENERATE_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*)* @rt2661_enable_tsf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_enable_tsf_sync(%struct.rt2661_softc* %0) #0 {
  %2 = alloca %struct.rt2661_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %2, align 8
  %6 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %9)
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_M_STA, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %18 = load i32, i32* @RT2661_TXRX_CSR10, align 4
  %19 = call i32 @RAL_WRITE(%struct.rt2661_softc* %17, i32 %18, i32 4104)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %22 = load i32, i32* @RT2661_TXRX_CSR9, align 4
  %23 = call i32 @RAL_READ(%struct.rt2661_softc* %21, i32 %22)
  %24 = and i32 %23, -16777216
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 16
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @RT2661_TSF_TICKING, align 4
  %34 = load i32, i32* @RT2661_ENABLE_TBTT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IEEE80211_M_STA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %20
  %44 = call i32 @RT2661_TSF_MODE(i32 1)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; preds = %20
  %48 = call i32 @RT2661_TSF_MODE(i32 2)
  %49 = load i32, i32* @RT2661_GENERATE_BEACON, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %55 = load i32, i32* @RT2661_TXRX_CSR9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @RAL_WRITE(%struct.rt2661_softc* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RT2661_TSF_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
