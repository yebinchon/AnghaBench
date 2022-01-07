; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.urtw_softc* }
%struct.urtw_softc = type { i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.urtw_data = type { i32 }

@URTW_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@URTW_PRIORITY_LOW = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @urtw_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.urtw_softc*, align 8
  %10 = alloca %struct.urtw_data*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %8, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %15, align 8
  store %struct.urtw_softc* %16, %struct.urtw_softc** %9, align 8
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %18 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @URTW_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  %26 = load i32, i32* @ENETDOWN, align 4
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %29 = call i32 @URTW_LOCK(%struct.urtw_softc* %28)
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %31 = call %struct.urtw_data* @urtw_getbuf(%struct.urtw_softc* %30)
  store %struct.urtw_data* %31, %struct.urtw_data** %10, align 8
  %32 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %33 = icmp eq %struct.urtw_data* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %38 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %37)
  %39 = load i32, i32* @ENOBUFS, align 4
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %27
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %45 = load i32, i32* @URTW_PRIORITY_LOW, align 4
  %46 = call i64 @urtw_tx_start(%struct.urtw_softc* %41, %struct.ieee80211_node* %42, %struct.mbuf* %43, %struct.urtw_data* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %50 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %49, i32 0, i32 2
  %51 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %52 = load i32, i32* @next, align 4
  %53 = call i32 @STAILQ_INSERT_HEAD(i32* %50, %struct.urtw_data* %51, i32 %52)
  %54 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %55 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %54)
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %4, align 4
  br label %62

57:                                               ; preds = %40
  %58 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %59 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %58)
  %60 = load %struct.urtw_softc*, %struct.urtw_softc** %9, align 8
  %61 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %60, i32 0, i32 1
  store i32 5, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %48, %34, %23
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local %struct.urtw_data* @urtw_getbuf(%struct.urtw_softc*) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_tx_start(%struct.urtw_softc*, %struct.ieee80211_node*, %struct.mbuf*, %struct.urtw_data*, i32) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.urtw_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
