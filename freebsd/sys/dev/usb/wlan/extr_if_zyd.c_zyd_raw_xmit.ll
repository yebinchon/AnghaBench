; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.zyd_softc* }
%struct.zyd_softc = type { i32, i64 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@ZYD_FLAG_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @zyd_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.zyd_softc*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %10, i32 0, i32 0
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %8, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 0
  %15 = load %struct.zyd_softc*, %struct.zyd_softc** %14, align 8
  store %struct.zyd_softc* %15, %struct.zyd_softc** %9, align 8
  %16 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %17 = call i32 @ZYD_LOCK(%struct.zyd_softc* %16)
  %18 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %19 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZYD_FLAG_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %26 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  %29 = load i32, i32* @ENETDOWN, align 4
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %3
  %31 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %32 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %37 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %36)
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = call i32 @m_freem(%struct.mbuf* %38)
  %40 = load i32, i32* @ENOBUFS, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %30
  %42 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %45 = call i64 @zyd_tx_start(%struct.zyd_softc* %42, %struct.mbuf* %43, %struct.ieee80211_node* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %49 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %48)
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = call i32 @m_freem(%struct.mbuf* %50)
  %52 = load i32, i32* @EIO, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %41
  %54 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %55 = call i32 @ZYD_UNLOCK(%struct.zyd_softc* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %47, %35, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ZYD_LOCK(%struct.zyd_softc*) #1

declare dso_local i32 @ZYD_UNLOCK(%struct.zyd_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @zyd_tx_start(%struct.zyd_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
