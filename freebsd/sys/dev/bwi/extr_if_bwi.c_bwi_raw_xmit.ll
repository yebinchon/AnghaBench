; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_raw_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_raw_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32, i32, %struct.bwi_txbuf_data* }
%struct.bwi_txbuf_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.mbuf = type { i32 }
%struct.ieee80211_bpf_params = type { i32 }

@BWI_TX_DATA_RING = common dso_local global i64 0, align 8
@BWI_F_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"slot %d not empty\00", align 1
@BWI_TX_NDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_node*, %struct.mbuf*, %struct.ieee80211_bpf_params*)* @bwi_raw_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_raw_xmit(%struct.ieee80211_node* %0, %struct.mbuf* %1, %struct.ieee80211_bpf_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_bpf_params*, align 8
  %8 = alloca %struct.ieee80211com*, align 8
  %9 = alloca %struct.bwi_softc*, align 8
  %10 = alloca %struct.bwi_txbuf_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_bpf_params* %2, %struct.ieee80211_bpf_params** %7, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 0
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %14, align 8
  store %struct.ieee80211com* %15, %struct.ieee80211com** %8, align 8
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %16, i32 0, i32 0
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %17, align 8
  store %struct.bwi_softc* %18, %struct.bwi_softc** %9, align 8
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %20 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %19, i32 0, i32 2
  %21 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %20, align 8
  %22 = load i64, i64* @BWI_TX_DATA_RING, align 8
  %23 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %21, i64 %22
  store %struct.bwi_txbuf_data* %23, %struct.bwi_txbuf_data** %10, align 8
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %25 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BWI_F_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = call i32 @m_freem(%struct.mbuf* %31)
  %33 = load i32, i32* @ENETDOWN, align 4
  store i32 %33, i32* %4, align 4
  br label %89

34:                                               ; preds = %3
  %35 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %36 = call i32 @BWI_LOCK(%struct.bwi_softc* %35)
  %37 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %10, align 8
  %38 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %10, align 8
  %41 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @KASSERT(i32 %49, i8* %52)
  %54 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %55 = icmp eq %struct.ieee80211_bpf_params* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %34
  %57 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %60 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %61 = call i32 @bwi_encap(%struct.bwi_softc* %57, i32 %58, %struct.mbuf* %59, %struct.ieee80211_node* %60)
  store i32 %61, i32* %12, align 4
  br label %69

62:                                               ; preds = %34
  %63 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %67 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %7, align 8
  %68 = call i32 @bwi_encap_raw(%struct.bwi_softc* %63, i32 %64, %struct.mbuf* %65, %struct.ieee80211_node* %66, %struct.ieee80211_bpf_params* %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %10, align 8
  %74 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @BWI_TX_NDESC, align 4
  %80 = srem i32 %78, %79
  %81 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %10, align 8
  %82 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %84 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %83, i32 0, i32 1
  store i32 5, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %69
  %86 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %87 = call i32 @BWI_UNLOCK(%struct.bwi_softc* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %30
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @BWI_LOCK(%struct.bwi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_encap(%struct.bwi_softc*, i32, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @bwi_encap_raw(%struct.bwi_softc*, i32, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*) #1

declare dso_local i32 @BWI_UNLOCK(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
