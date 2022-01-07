; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rt2860_softc* }
%struct.rt2860_softc = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@RT2860_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @rt2860_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2860_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.rt2860_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %8, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.rt2860_softc*, %struct.rt2860_softc** %15, align 8
  store %struct.rt2860_softc* %16, %struct.rt2860_softc** %9, align 8
  %17 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %18 = call i32 @RAL_LOCK(%struct.rt2860_softc* %17)
  %19 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %20 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RT2860_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %27 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = call i32 @m_freem(%struct.mbuf* %28)
  %30 = load i32, i32* @ENETDOWN, align 4
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %33 = icmp eq %struct.ieee80211_bpf_params* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %38 = call i32 @rt2860_tx(%struct.rt2860_softc* %35, %struct.mbuf* %36, %struct.ieee80211_node* %37)
  store i32 %38, i32* %10, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %43 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %44 = call i32 @rt2860_tx_raw(%struct.rt2860_softc* %40, %struct.mbuf* %41, %struct.ieee80211_node* %42, %struct.ieee80211_bpf_params* %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %47 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %46, i32 0, i32 1
  store i32 5, i32* %47, align 4
  %48 = load %struct.rt2860_softc*, %struct.rt2860_softc** %9, align 8
  %49 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @RAL_LOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @rt2860_tx(%struct.rt2860_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @rt2860_tx_raw(%struct.rt2860_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
