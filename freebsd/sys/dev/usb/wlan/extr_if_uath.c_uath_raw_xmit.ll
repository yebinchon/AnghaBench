; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.uath_softc* }
%struct.uath_softc = type { i32, i32, i32, i64 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.uath_data = type { i32 }

@UATH_FLAG_INVALID = common dso_local global i32 0, align 4
@UATH_FLAG_INITDONE = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_tx_inactive = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @uath_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.uath_data*, align 8
  %10 = alloca %struct.uath_softc*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  store %struct.ieee80211com* %13, %struct.ieee80211com** %8, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load %struct.uath_softc*, %struct.uath_softc** %15, align 8
  store %struct.uath_softc* %16, %struct.uath_softc** %10, align 8
  %17 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %18 = call i32 @UATH_LOCK(%struct.uath_softc* %17)
  %19 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %20 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UATH_FLAG_INVALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %27 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @UATH_FLAG_INITDONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = call i32 @m_freem(%struct.mbuf* %33)
  %35 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %36 = call i32 @UATH_UNLOCK(%struct.uath_softc* %35)
  %37 = load i32, i32* @ENETDOWN, align 4
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %25
  %39 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %40 = call %struct.uath_data* @uath_getbuf(%struct.uath_softc* %39)
  store %struct.uath_data* %40, %struct.uath_data** %9, align 8
  %41 = load %struct.uath_data*, %struct.uath_data** %9, align 8
  %42 = icmp eq %struct.uath_data* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = call i32 @m_freem(%struct.mbuf* %44)
  %46 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %47 = call i32 @UATH_UNLOCK(%struct.uath_softc* %46)
  %48 = load i32, i32* @ENOBUFS, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %38
  %50 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %51 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %55 = load %struct.uath_data*, %struct.uath_data** %9, align 8
  %56 = call i64 @uath_tx_start(%struct.uath_softc* %52, %struct.mbuf* %53, %struct.ieee80211_node* %54, %struct.uath_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %60 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %59, i32 0, i32 2
  %61 = load %struct.uath_data*, %struct.uath_data** %9, align 8
  %62 = load i32, i32* @next, align 4
  %63 = call i32 @STAILQ_INSERT_HEAD(i32* %60, %struct.uath_data* %61, i32 %62)
  %64 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %65 = load i32, i32* @st_tx_inactive, align 4
  %66 = call i32 @UATH_STAT_INC(%struct.uath_softc* %64, i32 %65)
  %67 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %68 = call i32 @UATH_UNLOCK(%struct.uath_softc* %67)
  %69 = load i32, i32* @EIO, align 4
  store i32 %69, i32* %4, align 4
  br label %75

70:                                               ; preds = %49
  %71 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %72 = call i32 @UATH_UNLOCK(%struct.uath_softc* %71)
  %73 = load %struct.uath_softc*, %struct.uath_softc** %10, align 8
  %74 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %73, i32 0, i32 1
  store i32 5, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %58, %43, %32
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @UATH_LOCK(%struct.uath_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @UATH_UNLOCK(%struct.uath_softc*) #1

declare dso_local %struct.uath_data* @uath_getbuf(%struct.uath_softc*) #1

declare dso_local i64 @uath_tx_start(%struct.uath_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.uath_data*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.uath_data*, i32) #1

declare dso_local i32 @UATH_STAT_INC(%struct.uath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
