; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_wme_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_wme_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, %struct.bwn_mac* }
%struct.bwn_mac = type { i64 }
%struct.chanAccParams = type { %struct.wmeParams* }
%struct.wmeParams = type { i32 }

@BWN_MAC_STATUS_INITED = common dso_local global i64 0, align 8
@bwn_wme_shm_offsets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211com*)* @bwn_wme_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_wme_update(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.chanAccParams, align 8
  %6 = alloca %struct.wmeParams*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %9, align 8
  store %struct.bwn_softc* %10, %struct.bwn_softc** %3, align 8
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %11, i32 0, i32 1
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %12, align 8
  store %struct.bwn_mac* %13, %struct.bwn_mac** %4, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %15 = call i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com* %14, %struct.chanAccParams* %5)
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %17 = call i32 @BWN_LOCK(%struct.bwn_softc* %16)
  %18 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %18, i32 0, i32 1
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %19, align 8
  store %struct.bwn_mac* %20, %struct.bwn_mac** %4, align 8
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %22 = icmp ne %struct.bwn_mac* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %1
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %25 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BWN_MAC_STATUS_INITED, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %31 = call i32 @bwn_mac_suspend(%struct.bwn_mac* %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @N(i32 %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.chanAccParams, %struct.chanAccParams* %5, i32 0, i32 0
  %41 = load %struct.wmeParams*, %struct.wmeParams** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %41, i64 %43
  store %struct.wmeParams* %44, %struct.wmeParams** %6, align 8
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %46 = load %struct.wmeParams*, %struct.wmeParams** %6, align 8
  %47 = load i32*, i32** @bwn_wme_shm_offsets, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bwn_wme_loadparams(%struct.bwn_mac* %45, %struct.wmeParams* %46, i32 %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %58 = call i32 @bwn_mac_enable(%struct.bwn_mac* %57)
  br label %59

59:                                               ; preds = %56, %23, %1
  %60 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %61 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %60)
  ret i32 0
}

declare dso_local i32 @ieee80211_wme_ic_getparams(%struct.ieee80211com*, %struct.chanAccParams*) #1

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_mac_suspend(%struct.bwn_mac*) #1

declare dso_local i32 @N(i32) #1

declare dso_local i32 @bwn_wme_loadparams(%struct.bwn_mac*, %struct.wmeParams*, i32) #1

declare dso_local i32 @bwn_mac_enable(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
