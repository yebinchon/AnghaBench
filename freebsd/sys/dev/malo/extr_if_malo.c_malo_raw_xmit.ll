; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.malo_softc* }
%struct.malo_softc = type { i32, %struct.malo_txq*, i64, i32 }
%struct.malo_txq = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }
%struct.malo_txbuf = type { i32*, i32* }

@ENETDOWN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@bf_list = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @malo_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.malo_softc*, align 8
  %10 = alloca %struct.malo_txbuf*, align 8
  %11 = alloca %struct.malo_txq*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %8, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load %struct.malo_softc*, %struct.malo_softc** %16, align 8
  store %struct.malo_softc* %17, %struct.malo_softc** %9, align 8
  %18 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %19 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %24 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %3
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = call i32 @m_freem(%struct.mbuf* %28)
  %30 = load i32, i32* @ENETDOWN, align 4
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %22
  %32 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %33 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %32, i32 0, i32 1
  %34 = load %struct.malo_txq*, %struct.malo_txq** %33, align 8
  %35 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %34, i64 0
  store %struct.malo_txq* %35, %struct.malo_txq** %11, align 8
  %36 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %37 = load %struct.malo_txq*, %struct.malo_txq** %11, align 8
  %38 = call %struct.malo_txbuf* @malo_getbuf(%struct.malo_softc* %36, %struct.malo_txq* %37)
  store %struct.malo_txbuf* %38, %struct.malo_txbuf** %10, align 8
  %39 = load %struct.malo_txbuf*, %struct.malo_txbuf** %10, align 8
  %40 = icmp eq %struct.malo_txbuf* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = call i32 @m_freem(%struct.mbuf* %42)
  %44 = load i32, i32* @ENOBUFS, align 4
  store i32 %44, i32* %4, align 4
  br label %76

45:                                               ; preds = %31
  %46 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %48 = load %struct.malo_txbuf*, %struct.malo_txbuf** %10, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %50 = call i64 @malo_tx_start(%struct.malo_softc* %46, %struct.ieee80211_node* %47, %struct.malo_txbuf* %48, %struct.mbuf* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load %struct.malo_txbuf*, %struct.malo_txbuf** %10, align 8
  %54 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.malo_txbuf*, %struct.malo_txbuf** %10, align 8
  %56 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load %struct.malo_txq*, %struct.malo_txq** %11, align 8
  %58 = call i32 @MALO_TXQ_LOCK(%struct.malo_txq* %57)
  %59 = load %struct.malo_txq*, %struct.malo_txq** %11, align 8
  %60 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %59, i32 0, i32 1
  %61 = load %struct.malo_txbuf*, %struct.malo_txbuf** %10, align 8
  %62 = load i32, i32* @bf_list, align 4
  %63 = call i32 @STAILQ_INSERT_HEAD(i32* %60, %struct.malo_txbuf* %61, i32 %62)
  %64 = load %struct.malo_txq*, %struct.malo_txq** %11, align 8
  %65 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.malo_txq*, %struct.malo_txq** %11, align 8
  %69 = call i32 @MALO_TXQ_UNLOCK(%struct.malo_txq* %68)
  %70 = load i32, i32* @EIO, align 4
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %45
  %72 = load %struct.malo_softc*, %struct.malo_softc** %9, align 8
  %73 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @malo_hal_txstart(i32 %74, i32 0)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %52, %41, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.malo_txbuf* @malo_getbuf(%struct.malo_softc*, %struct.malo_txq*) #1

declare dso_local i64 @malo_tx_start(%struct.malo_softc*, %struct.ieee80211_node*, %struct.malo_txbuf*, %struct.mbuf*) #1

declare dso_local i32 @MALO_TXQ_LOCK(%struct.malo_txq*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.malo_txbuf*, i32) #1

declare dso_local i32 @MALO_TXQ_UNLOCK(%struct.malo_txq*) #1

declare dso_local i32 @malo_hal_txstart(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
