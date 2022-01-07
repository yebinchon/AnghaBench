; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_wme_setie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_wme_setie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.ieee80211_wme_info = type { i32, i32*, i64, i32, i32, i32, i32 }

@IEEE80211_ELEMID_VENDOR = common dso_local global i32 0, align 4
@WME_OUI_TYPE = common dso_local global i32 0, align 4
@WME_INFO_OUI_SUBTYPE = common dso_local global i32 0, align 4
@WME_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Setting WME IE (len=%u)\0A\00", align 1
@IWI_CMD_SET_WMEIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*)* @iwi_wme_setie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_wme_setie(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.ieee80211_wme_info, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %4 = call i32 @memset(%struct.ieee80211_wme_info* %3, i32 0, i32 40)
  %5 = load i32, i32* @IEEE80211_ELEMID_VENDOR, align 4
  %6 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 6
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 0
  store i32 38, i32* %7, align 8
  %8 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 80, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 242, i32* %16, align 4
  %17 = load i32, i32* @WME_OUI_TYPE, align 4
  %18 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @WME_INFO_OUI_SUBTYPE, align 4
  %20 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @WME_VERSION, align 4
  %22 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.ieee80211_wme_info, %struct.ieee80211_wme_info* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DPRINTF(i8* %27)
  %29 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %30 = load i32, i32* @IWI_CMD_SET_WMEIE, align 4
  %31 = call i32 @iwi_cmd(%struct.iwi_softc* %29, i32 %30, %struct.ieee80211_wme_info* %3, i32 40)
  ret i32 %31
}

declare dso_local i32 @memset(%struct.ieee80211_wme_info*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, %struct.ieee80211_wme_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
