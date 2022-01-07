; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rsu_softc* }
%struct.rsu_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.rsu_data = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @rsu_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.rsu_softc*, align 8
  %10 = alloca %struct.rsu_data*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %8, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.rsu_softc*, %struct.rsu_softc** %15, align 8
  store %struct.rsu_softc* %16, %struct.rsu_softc** %9, align 8
  %17 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %18 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  %24 = load i32, i32* @ENETDOWN, align 4
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %3
  %26 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %27 = call i32 @RSU_LOCK(%struct.rsu_softc* %26)
  %28 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %29 = call %struct.rsu_data* @rsu_getbuf(%struct.rsu_softc* %28)
  store %struct.rsu_data* %29, %struct.rsu_data** %10, align 8
  %30 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %31 = icmp eq %struct.rsu_data* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = call i32 @m_freem(%struct.mbuf* %33)
  %35 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %36 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %35)
  %37 = load i32, i32* @ENOBUFS, align 4
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %25
  %39 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %43 = call i64 @rsu_tx_start(%struct.rsu_softc* %39, %struct.ieee80211_node* %40, %struct.mbuf* %41, %struct.rsu_data* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = call i32 @m_freem(%struct.mbuf* %46)
  %48 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %49 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %50 = call i32 @rsu_freebuf(%struct.rsu_softc* %48, %struct.rsu_data* %49)
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %52 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %51)
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %4, align 4
  br label %57

54:                                               ; preds = %38
  %55 = load %struct.rsu_softc*, %struct.rsu_softc** %9, align 8
  %56 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %45, %32, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local %struct.rsu_data* @rsu_getbuf(%struct.rsu_softc*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i64 @rsu_tx_start(%struct.rsu_softc*, %struct.ieee80211_node*, %struct.mbuf*, %struct.rsu_data*) #1

declare dso_local i32 @rsu_freebuf(%struct.rsu_softc*, %struct.rsu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
