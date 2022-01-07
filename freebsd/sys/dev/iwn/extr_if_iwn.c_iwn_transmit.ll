; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.iwn_softc* }
%struct.iwn_softc = type { i32, i32, i64, i64 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_node = type { i32 }

@IWN_FLAG_RUNNING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*, %struct.mbuf*)* @iwn_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn_transmit(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.iwn_softc*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = load %struct.iwn_softc*, %struct.iwn_softc** %10, align 8
  store %struct.iwn_softc* %11, %struct.iwn_softc** %6, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %16, %struct.ieee80211_node** %7, align 8
  %17 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %18 = call i32 @IWN_LOCK(%struct.iwn_softc* %17)
  %19 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %20 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IWN_FLAG_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %27 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %2
  %31 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %32 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %31)
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %36 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %41 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %40)
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %34
  %44 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %47 = call i32 @iwn_tx_data(%struct.iwn_softc* %44, %struct.mbuf* %45, %struct.ieee80211_node* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %52 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %51, i32 0, i32 1
  store i32 5, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  %55 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %39, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @IWN_LOCK(%struct.iwn_softc*) #1

declare dso_local i32 @IWN_UNLOCK(%struct.iwn_softc*) #1

declare dso_local i32 @iwn_tx_data(%struct.iwn_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
