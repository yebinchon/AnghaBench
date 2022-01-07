; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i64, %struct.iwm_softc* }
%struct.iwm_softc = type { i32 }

@ENETRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @iwm_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.iwm_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %5, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 1
  %16 = load %struct.iwm_softc*, %struct.iwm_softc** %15, align 8
  store %struct.iwm_softc* %16, %struct.iwm_softc** %6, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = call i32 @ieee80211_media_change(%struct.ifnet* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ENETRESET, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %26 = call i32 @IWM_LOCK(%struct.iwm_softc* %25)
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %33 = call i32 @iwm_stop(%struct.iwm_softc* %32)
  %34 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %35 = call i32 @iwm_init(%struct.iwm_softc* %34)
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.iwm_softc*, %struct.iwm_softc** %6, align 8
  %38 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ieee80211_media_change(%struct.ifnet*) #1

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_stop(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_init(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
