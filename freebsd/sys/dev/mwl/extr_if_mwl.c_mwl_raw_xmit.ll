; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.mwl_softc* }
%struct.mwl_softc = type { i32, %struct.TYPE_2__, %struct.mwl_txq**, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mwl_txq = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.mwl_txbuf = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @mwl_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.mwl_softc*, align 8
  %10 = alloca %struct.mwl_txbuf*, align 8
  %11 = alloca %struct.mwl_txq*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %8, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load %struct.mwl_softc*, %struct.mwl_softc** %16, align 8
  store %struct.mwl_softc* %17, %struct.mwl_softc** %9, align 8
  %18 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %19 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %24 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %3
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = call i32 @m_freem(%struct.mbuf* %28)
  %30 = load i32, i32* @ENETDOWN, align 4
  store i32 %30, i32* %4, align 4
  br label %70

31:                                               ; preds = %22
  %32 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %33 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %32, i32 0, i32 2
  %34 = load %struct.mwl_txq**, %struct.mwl_txq*** %33, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i64 @M_WME_GETAC(%struct.mbuf* %35)
  %37 = getelementptr inbounds %struct.mwl_txq*, %struct.mwl_txq** %34, i64 %36
  %38 = load %struct.mwl_txq*, %struct.mwl_txq** %37, align 8
  store %struct.mwl_txq* %38, %struct.mwl_txq** %11, align 8
  %39 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %40 = load %struct.mwl_txq*, %struct.mwl_txq** %11, align 8
  %41 = call %struct.mwl_txbuf* @mwl_gettxbuf(%struct.mwl_softc* %39, %struct.mwl_txq* %40)
  store %struct.mwl_txbuf* %41, %struct.mwl_txbuf** %10, align 8
  %42 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %10, align 8
  %43 = icmp eq %struct.mwl_txbuf* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %46 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = call i32 @m_freem(%struct.mbuf* %50)
  %52 = load i32, i32* @ENOBUFS, align 4
  store i32 %52, i32* %4, align 4
  br label %70

53:                                               ; preds = %31
  %54 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %55 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %56 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %10, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = call i64 @mwl_tx_start(%struct.mwl_softc* %54, %struct.ieee80211_node* %55, %struct.mwl_txbuf* %56, %struct.mbuf* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.mwl_txq*, %struct.mwl_txq** %11, align 8
  %62 = load %struct.mwl_txbuf*, %struct.mwl_txbuf** %10, align 8
  %63 = call i32 @mwl_puttxbuf_head(%struct.mwl_txq* %61, %struct.mwl_txbuf* %62)
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %53
  %66 = load %struct.mwl_softc*, %struct.mwl_softc** %9, align 8
  %67 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mwl_hal_txstart(i32 %68, i32 0)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %60, %44, %27
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @M_WME_GETAC(%struct.mbuf*) #1

declare dso_local %struct.mwl_txbuf* @mwl_gettxbuf(%struct.mwl_softc*, %struct.mwl_txq*) #1

declare dso_local i64 @mwl_tx_start(%struct.mwl_softc*, %struct.ieee80211_node*, %struct.mwl_txbuf*, %struct.mbuf*) #1

declare dso_local i32 @mwl_puttxbuf_head(%struct.mwl_txq*, %struct.mwl_txbuf*) #1

declare dso_local i32 @mwl_hal_txstart(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
