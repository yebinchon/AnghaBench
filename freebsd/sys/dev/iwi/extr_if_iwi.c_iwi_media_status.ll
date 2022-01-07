; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.iwi_softc* }
%struct.iwi_softc = type { i32 }
%struct.ifmediareq = type { i32 }
%struct.ieee80211_node = type { i32 }

@IWI_CSR_CURRENT_TX_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @iwi_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.iwi_softc*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %5, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 1
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load %struct.iwi_softc*, %struct.iwi_softc** %16, align 8
  store %struct.iwi_softc* %17, %struct.iwi_softc** %7, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %20)
  store %struct.ieee80211_node* %21, %struct.ieee80211_node** %8, align 8
  %22 = load %struct.iwi_softc*, %struct.iwi_softc** %7, align 8
  %23 = load i32, i32* @IWI_CSR_CURRENT_TX_RATE, align 4
  %24 = call i32 @CSR_READ_4(%struct.iwi_softc* %22, i32 %23)
  %25 = call i32 @iwi_cvtrate(i32 %24)
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %29 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %28)
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %32 = call i32 @ieee80211_media_status(%struct.ifnet* %30, %struct.ifmediareq* %31)
  ret void
}

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @iwi_cvtrate(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_media_status(%struct.ifnet*, %struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
