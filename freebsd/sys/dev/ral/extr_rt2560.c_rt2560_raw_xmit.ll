; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rt2560_softc* }
%struct.rt2560_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@RT2560_F_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@RT2560_PRIO_RING_COUNT = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @rt2560_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.rt2560_softc*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %8, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.rt2560_softc*, %struct.rt2560_softc** %14, align 8
  store %struct.rt2560_softc* %15, %struct.rt2560_softc** %9, align 8
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %17 = call i32 @RAL_LOCK(%struct.rt2560_softc* %16)
  %18 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %19 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RT2560_F_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %26 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  %29 = load i32, i32* @ENETDOWN, align 4
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %3
  %31 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %32 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RT2560_PRIO_RING_COUNT, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %39 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %41 = call i32 @m_freem(%struct.mbuf* %40)
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %4, align 4
  br label %72

43:                                               ; preds = %30
  %44 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %45 = icmp eq %struct.ieee80211_bpf_params* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %50 = call i64 @rt2560_tx_mgt(%struct.rt2560_softc* %47, %struct.mbuf* %48, %struct.ieee80211_node* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %68

53:                                               ; preds = %46
  br label %63

54:                                               ; preds = %43
  %55 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %58 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %59 = call i64 @rt2560_tx_raw(%struct.rt2560_softc* %55, %struct.mbuf* %56, %struct.ieee80211_node* %57, %struct.ieee80211_bpf_params* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %68

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %65 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %64, i32 0, i32 1
  store i32 5, i32* %65, align 4
  %66 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %67 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %66)
  store i32 0, i32* %4, align 4
  br label %72

68:                                               ; preds = %61, %52
  %69 = load %struct.rt2560_softc*, %struct.rt2560_softc** %9, align 8
  %70 = call i32 @RAL_UNLOCK(%struct.rt2560_softc* %69)
  %71 = load i32, i32* @EIO, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %63, %37, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @RAL_LOCK(%struct.rt2560_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2560_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @rt2560_tx_mgt(%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i64 @rt2560_tx_raw(%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
