; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_enable_tsf_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_enable_tsf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64, i32 }
%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RAL_TXRX_CSR19 = common dso_local global i32 0, align 4
@RAL_TXRX_CSR18 = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@RAL_TXRX_CSR20 = common dso_local global i32 0, align 4
@RAL_ENABLE_TSF = common dso_local global i32 0, align 4
@RAL_ENABLE_TBCN = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RAL_ENABLE_BEACON_GENERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enabling TSF synchronization\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_enable_tsf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_enable_tsf_sync(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %8 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 1
  %12 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %11)
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %4, align 8
  %13 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %14 = load i32, i32* @RAL_TXRX_CSR19, align 4
  %15 = call i32 @ural_write(%struct.ural_softc* %13, i32 %14, i32 0)
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 16, %20
  %22 = shl i32 %21, 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %24 = load i32, i32* @RAL_TXRX_CSR18, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ural_write(%struct.ural_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 0
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 320, i32 6
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 12
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %46 = load i32, i32* @RAL_TXRX_CSR20, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ural_write(%struct.ural_softc* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @RAL_ENABLE_TSF, align 4
  %50 = load i32, i32* @RAL_ENABLE_TBCN, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IEEE80211_M_STA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %1
  %58 = call i32 @RAL_ENABLE_TSF_SYNC(i32 1)
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %67

61:                                               ; preds = %1
  %62 = call i32 @RAL_ENABLE_TSF_SYNC(i32 2)
  %63 = load i32, i32* @RAL_ENABLE_BEACON_GENERATOR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %69 = load i32, i32* @RAL_TXRX_CSR19, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ural_write(%struct.ural_softc* %68, i32 %69, i32 %70)
  %72 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

declare dso_local i32 @RAL_ENABLE_TSF_SYNC(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
