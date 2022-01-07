; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_tsf_sync_adhoc_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_tsf_sync_adhoc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32 }
%struct.rtwn_vap = type { i32, i32 }
%struct.ieee80211_node = type { i32 }

@RTWN_RCR_LOCKED = common dso_local global i32 0, align 4
@R92C_BCN_CTRL_DIS_TSF_UDT0 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rtwn_tsf_sync_adhoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rtwn_tsf_sync_adhoc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_tsf_sync_adhoc_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.rtwn_vap*, align 8
  %7 = alloca %struct.rtwn_softc*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ieee80211vap*
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %5, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %12 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %11)
  store %struct.rtwn_vap* %12, %struct.rtwn_vap** %6, align 8
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %16, align 8
  store %struct.rtwn_softc* %17, %struct.rtwn_softc** %7, align 8
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %19 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %18)
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %22)
  store %struct.ieee80211_node* %23, %struct.ieee80211_node** %8, align 8
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %25 = call i32 @rtwn_set_rx_bssid_all(%struct.rtwn_softc* %24, i32 0)
  %26 = load i32, i32* @RTWN_RCR_LOCKED, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %32 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %33 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @R92C_BCN_CTRL(i32 %34)
  %36 = load i32, i32* @R92C_BCN_CTRL_DIS_TSF_UDT0, align 4
  %37 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %31, i32 %35, i32 %36, i32 0)
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 5
  %43 = mul nsw i32 %42, 1000
  %44 = call i32 @rtwn_delay(%struct.rtwn_softc* %38, i32 %43)
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %46 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %47 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @R92C_BCN_CTRL(i32 %48)
  %50 = load i32, i32* @R92C_BCN_CTRL_DIS_TSF_UDT0, align 4
  %51 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %45, i32 %49, i32 0, i32 %50)
  %52 = load i32, i32* @RTWN_RCR_LOCKED, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %55 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %59 = call i32 @rtwn_set_rx_bssid_all(%struct.rtwn_softc* %58, i32 1)
  %60 = load %struct.rtwn_vap*, %struct.rtwn_vap** %6, align 8
  %61 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %60, i32 0, i32 0
  %62 = load i32, i32* @hz, align 4
  %63 = mul nsw i32 60, %62
  %64 = load i32, i32* @rtwn_tsf_sync_adhoc, align 4
  %65 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %66 = call i32 @callout_reset(i32* %61, i32 %63, i32 %64, %struct.ieee80211vap* %65)
  %67 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %68 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %67)
  %69 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %70 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %69)
  ret void
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @rtwn_set_rx_bssid_all(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R92C_BCN_CTRL(i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
