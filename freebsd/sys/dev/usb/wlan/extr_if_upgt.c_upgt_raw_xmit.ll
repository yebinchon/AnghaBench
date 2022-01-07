; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_upgt.c_upgt_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.upgt_softc* }
%struct.upgt_softc = type { i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.upgt_data = type { i32 }

@UPGT_FLAG_INITDONE = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_tx_inactive = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @upgt_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgt_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.upgt_softc*, align 8
  %10 = alloca %struct.upgt_data*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %8, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.upgt_softc*, %struct.upgt_softc** %15, align 8
  store %struct.upgt_softc* %16, %struct.upgt_softc** %9, align 8
  store %struct.upgt_data* null, %struct.upgt_data** %10, align 8
  %17 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %18 = call i32 @UPGT_LOCK(%struct.upgt_softc* %17)
  %19 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %20 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UPGT_FLAG_INITDONE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  %28 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %29 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %28)
  %30 = load i32, i32* @ENETDOWN, align 4
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %3
  %32 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %33 = call %struct.upgt_data* @upgt_gettxbuf(%struct.upgt_softc* %32)
  store %struct.upgt_data* %33, %struct.upgt_data** %10, align 8
  %34 = load %struct.upgt_data*, %struct.upgt_data** %10, align 8
  %35 = icmp eq %struct.upgt_data* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = call i32 @m_freem(%struct.mbuf* %37)
  %39 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %40 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %39)
  %41 = load i32, i32* @ENOBUFS, align 4
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %31
  %43 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %46 = load %struct.upgt_data*, %struct.upgt_data** %10, align 8
  %47 = call i64 @upgt_tx_start(%struct.upgt_softc* %43, %struct.mbuf* %44, %struct.ieee80211_node* %45, %struct.upgt_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %51 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %50, i32 0, i32 2
  %52 = load %struct.upgt_data*, %struct.upgt_data** %10, align 8
  %53 = load i32, i32* @next, align 4
  %54 = call i32 @STAILQ_INSERT_HEAD(i32* %51, %struct.upgt_data* %52, i32 %53)
  %55 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %56 = load i32, i32* @st_tx_inactive, align 4
  %57 = call i32 @UPGT_STAT_INC(%struct.upgt_softc* %55, i32 %56)
  %58 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %59 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %58)
  %60 = load i32, i32* @EIO, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %42
  %62 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %63 = call i32 @UPGT_UNLOCK(%struct.upgt_softc* %62)
  %64 = load %struct.upgt_softc*, %struct.upgt_softc** %9, align 8
  %65 = getelementptr inbounds %struct.upgt_softc, %struct.upgt_softc* %64, i32 0, i32 1
  store i32 5, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %49, %36, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @UPGT_LOCK(%struct.upgt_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @UPGT_UNLOCK(%struct.upgt_softc*) #1

declare dso_local %struct.upgt_data* @upgt_gettxbuf(%struct.upgt_softc*) #1

declare dso_local i64 @upgt_tx_start(%struct.upgt_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.upgt_data*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.upgt_data*, i32) #1

declare dso_local i32 @UPGT_STAT_INC(%struct.upgt_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
