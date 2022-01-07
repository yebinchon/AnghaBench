; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_node_getsignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_node_getsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 (%struct.ieee80211_node.0*)*, %struct.ath_softc* }
%struct.ieee80211_node.0 = type opaque
%struct.ath_softc = type { %struct.ath_hal* }
%struct.ath_hal = type { i32 }

@IEEE80211_CHAN_ANYC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, i32*, i32*)* @ath_node_getsignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_node_getsignal(%struct.ieee80211_node* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ath_hal*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 1
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 1
  %15 = load %struct.ath_softc*, %struct.ath_softc** %14, align 8
  store %struct.ath_softc* %15, %struct.ath_softc** %8, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load %struct.ath_hal*, %struct.ath_hal** %17, align 8
  store %struct.ath_hal* %18, %struct.ath_hal** %9, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i32 (%struct.ieee80211_node.0*)*, i32 (%struct.ieee80211_node.0*)** %20, align 8
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %23 = bitcast %struct.ieee80211_node* %22 to %struct.ieee80211_node.0*
  %24 = call i32 %21(%struct.ieee80211_node.0* %23)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IEEE80211_CHAN_ANYC, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.ath_hal*, %struct.ath_hal** %9, align 8
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ath_hal_getchannoise(%struct.ath_hal* %32, i32 %35)
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32*, i32** %6, align 8
  store i32 -95, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @ath_hal_getchannoise(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
