; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.ural_softc* }
%struct.ural_softc = type { i64, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@RAL_TX_MINFREE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @ural_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.ural_softc*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %8, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.ural_softc*, %struct.ural_softc** %14, align 8
  store %struct.ural_softc* %15, %struct.ural_softc** %9, align 8
  %16 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %17 = call i32 @RAL_LOCK(%struct.ural_softc* %16)
  %18 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %19 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %24 = call i32 @RAL_UNLOCK(%struct.ural_softc* %23)
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = call i32 @m_freem(%struct.mbuf* %25)
  %27 = load i32, i32* @ENETDOWN, align 4
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %3
  %29 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %30 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RAL_TX_MINFREE, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %36 = call i32 @RAL_UNLOCK(%struct.ural_softc* %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = call i32 @m_freem(%struct.mbuf* %37)
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %28
  %41 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %42 = icmp eq %struct.ieee80211_bpf_params* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %47 = call i64 @ural_tx_mgt(%struct.ural_softc* %44, %struct.mbuf* %45, %struct.ieee80211_node* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %63

50:                                               ; preds = %43
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %55 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %56 = call i64 @ural_tx_raw(%struct.ural_softc* %52, %struct.mbuf* %53, %struct.ieee80211_node* %54, %struct.ieee80211_bpf_params* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %62 = call i32 @RAL_UNLOCK(%struct.ural_softc* %61)
  store i32 0, i32* %4, align 4
  br label %67

63:                                               ; preds = %58, %49
  %64 = load %struct.ural_softc*, %struct.ural_softc** %9, align 8
  %65 = call i32 @RAL_UNLOCK(%struct.ural_softc* %64)
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %60, %34, %22
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @RAL_LOCK(%struct.ural_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.ural_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @ural_tx_mgt(%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i64 @ural_tx_raw(%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
