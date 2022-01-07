; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_enable_tsf_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_enable_tsf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64, i32 }
%struct.ieee80211vap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RT2560_CSR14 = common dso_local global i32 0, align 4
@RT2560_CSR12 = common dso_local global i32 0, align 4
@RT2560_CSR13 = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@RT2560_BCNOCSR = common dso_local global i32 0, align 4
@RT2560_ENABLE_TSF = common dso_local global i32 0, align 4
@RT2560_ENABLE_TBCN = common dso_local global i32 0, align 4
@RT2560_ENABLE_BEACON_GENERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"enabling TSF synchronization\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_enable_tsf_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_enable_tsf_sync(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %8 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %3, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 1
  %12 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %11)
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %4, align 8
  %13 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %14 = load i32, i32* @RT2560_CSR14, align 4
  %15 = call i32 @RAL_WRITE(%struct.rt2560_softc* %13, i32 %14, i32 0)
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 16, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %23 = load i32, i32* @RT2560_CSR12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @RAL_WRITE(%struct.rt2560_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %27 = load i32, i32* @RT2560_CSR13, align 4
  %28 = call i32 @RAL_WRITE(%struct.rt2560_softc* %26, i32 %27, i32 0)
  store i32 5, i32* %5, align 4
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_M_STA, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 384, i32 1024
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %41 = load i32, i32* @RT2560_BCNOCSR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @RAL_WRITE(%struct.rt2560_softc* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @RT2560_ENABLE_TSF, align 4
  %45 = load i32, i32* @RT2560_ENABLE_TBCN, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IEEE80211_M_STA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %1
  %53 = call i32 @RT2560_ENABLE_TSF_SYNC(i32 1)
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %62

56:                                               ; preds = %1
  %57 = call i32 @RT2560_ENABLE_TSF_SYNC(i32 2)
  %58 = load i32, i32* @RT2560_ENABLE_BEACON_GENERATOR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %64 = load i32, i32* @RT2560_CSR14, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @RAL_WRITE(%struct.rt2560_softc* %63, i32 %64, i32 %65)
  %67 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %68 = call i32 @DPRINTF(%struct.rt2560_softc* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

declare dso_local i32 @RT2560_ENABLE_TSF_SYNC(i32) #1

declare dso_local i32 @DPRINTF(%struct.rt2560_softc*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
