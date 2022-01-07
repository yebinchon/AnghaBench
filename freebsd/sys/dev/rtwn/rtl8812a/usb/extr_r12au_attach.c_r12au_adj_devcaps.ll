; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12au_adj_devcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12au_adj_devcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.ieee80211com, %struct.r12a_softc* }
%struct.ieee80211com = type { i32 }
%struct.r12a_softc = type { i32 }

@R12A_CHIP_C_CUT = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_LDPC = common dso_local global i32 0, align 4
@IEEE80211_HTC_TXLDPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r12au_adj_devcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12au_adj_devcaps(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r12a_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 1
  %7 = load %struct.r12a_softc*, %struct.r12a_softc** %6, align 8
  store %struct.r12a_softc* %7, %struct.r12a_softc** %3, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %11 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @R12A_CHIP_C_CUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @IEEE80211_HTCAP_LDPC, align 4
  %18 = load i32, i32* @IEEE80211_HTC_TXLDPC, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %16, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
