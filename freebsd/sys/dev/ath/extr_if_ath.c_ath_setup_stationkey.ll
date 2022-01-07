; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_setup_stationkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_setup_stationkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_5__, i32, %struct.ieee80211vap* }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }
%struct.ieee80211vap = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }

@IEEE80211_KEY_DEVKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @ath_setup_stationkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_setup_stationkey(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 2
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %3, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ath_softc*, %struct.ath_softc** %13, align 8
  store %struct.ath_softc* %14, %struct.ath_softc** %4, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %16, i32 0, i32 0
  %18 = call i32 @ath_key_alloc(%struct.ieee80211vap* %15, %struct.TYPE_5__* %17, i8** %5, i8** %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %52

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* @IEEE80211_KEY_DEVKEY, align 4
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @IEEE80211_ADDR_COPY(i32 %39, i32 %42)
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %46, i32 0, i32 0
  %48 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ath_keyset(%struct.ath_softc* %44, %struct.ieee80211vap* %45, %struct.TYPE_5__* %47, i32 %50)
  br label %52

52:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ath_key_alloc(%struct.ieee80211vap*, %struct.TYPE_5__*, i8**, i8**) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @ath_keyset(%struct.ath_softc*, %struct.ieee80211vap*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
