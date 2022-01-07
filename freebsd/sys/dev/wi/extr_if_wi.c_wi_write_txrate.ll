; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_write_txrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wi/extr_if_wi.c_wi_write_txrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wi_softc = type { i64 }
%struct.ieee80211vap = type { %struct.ieee80211_txparam*, %struct.ieee80211com* }
%struct.ieee80211_txparam = type { i32 }
%struct.ieee80211com = type { i32 }

@wi_write_txrate.lucent_rates = internal constant [12 x i32] [i32 3, i32 1, i32 2, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5], align 16
@wi_write_txrate.intersil_rates = internal constant [12 x i32] [i32 15, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3], align 16
@WI_LUCENT = common dso_local global i64 0, align 8
@WI_RID_TX_RATE = common dso_local global i32 0, align 4
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wi_softc*, %struct.ieee80211vap*)* @wi_write_txrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wi_write_txrate(%struct.wi_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.wi_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_txparam*, align 8
  store %struct.wi_softc* %0, %struct.wi_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %8 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.wi_softc, %struct.wi_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WI_LUCENT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @wi_write_txrate.lucent_rates, i64 0, i64 0), i32* getelementptr inbounds ([12 x i32], [12 x i32]* @wi_write_txrate.intersil_rates, i64 0, i64 0)
  store i32* %14, i32** %5, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 1
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %16, align 8
  store %struct.ieee80211com* %17, %struct.ieee80211com** %6, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %19, align 8
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ieee80211_chan2mode(i32 %23)
  %25 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %20, i64 %24
  store %struct.ieee80211_txparam* %25, %struct.ieee80211_txparam** %7, align 8
  %26 = load %struct.wi_softc*, %struct.wi_softc** %3, align 8
  %27 = load i32, i32* @WI_RID_TX_RATE, align 4
  %28 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %37, %33
  %47 = phi i32 [ %36, %33 ], [ %45, %37 ]
  %48 = call i32 @wi_write_val(%struct.wi_softc* %26, i32 %27, i32 %47)
  ret i32 %48
}

declare dso_local i64 @ieee80211_chan2mode(i32) #1

declare dso_local i32 @wi_write_val(%struct.wi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
