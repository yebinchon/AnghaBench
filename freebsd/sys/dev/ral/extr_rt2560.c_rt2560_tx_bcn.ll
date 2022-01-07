; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_tx_bcn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_tx_bcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.TYPE_8__, i32, %struct.rt2560_tx_radiotap_header, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.rt2560_tx_data*, %struct.rt2560_tx_desc* }
%struct.rt2560_tx_data = type { i32, %struct.ieee80211_node*, %struct.mbuf* }
%struct.rt2560_tx_desc = type { i32 }
%struct.rt2560_tx_radiotap_header = type { i32, i32, i64 }
%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@RT2560_MAX_SCATTER = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not map mbuf (error %d)\0A\00", align 1
@RT2560_TX_IFS_NEWBACKOFF = common dso_local global i32 0, align 4
@RT2560_TX_TIMESTAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"sending beacon frame len=%u idx=%u rate=%u\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@RT2560_BEACON_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*)* @rt2560_tx_bcn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_tx_bcn(%struct.rt2560_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2560_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211vap*, align 8
  %9 = alloca %struct.rt2560_tx_desc*, align 8
  %10 = alloca %struct.rt2560_tx_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.rt2560_tx_radiotap_header*, align 8
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %7, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %18, i32 0, i32 1
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %19, align 8
  store %struct.ieee80211vap* %20, %struct.ieee80211vap** %8, align 8
  %21 = load i32, i32* @RT2560_MAX_SCATTER, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca %struct.TYPE_9__, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %26 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %27, align 8
  %29 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %30 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %28, i64 %32
  store %struct.rt2560_tx_desc* %33, %struct.rt2560_tx_desc** %9, align 8
  %34 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %35 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %36, align 8
  %38 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %39 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %37, i64 %41
  store %struct.rt2560_tx_data* %42, %struct.rt2560_tx_data** %10, align 8
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ieee80211_chan2mode(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %54 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %10, align 8
  %58 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %61 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %62 = call i32 @bus_dmamap_load_mbuf_sg(i32 %56, i32 %59, %struct.mbuf* %60, %struct.TYPE_9__* %24, i32* %13, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %3
  %66 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %67 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = call i32 @m_freem(%struct.mbuf* %71)
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %155

74:                                               ; preds = %3
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %76 = call i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %80 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %79, i32 0, i32 2
  store %struct.rt2560_tx_radiotap_header* %80, %struct.rt2560_tx_radiotap_header** %17, align 8
  %81 = load %struct.rt2560_tx_radiotap_header*, %struct.rt2560_tx_radiotap_header** %17, align 8
  %82 = getelementptr inbounds %struct.rt2560_tx_radiotap_header, %struct.rt2560_tx_radiotap_header* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.rt2560_tx_radiotap_header*, %struct.rt2560_tx_radiotap_header** %17, align 8
  %85 = getelementptr inbounds %struct.rt2560_tx_radiotap_header, %struct.rt2560_tx_radiotap_header* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %87 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rt2560_tx_radiotap_header*, %struct.rt2560_tx_radiotap_header** %17, align 8
  %90 = getelementptr inbounds %struct.rt2560_tx_radiotap_header, %struct.rt2560_tx_radiotap_header* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %93 = call i32 @ieee80211_radiotap_tx(%struct.ieee80211vap* %91, %struct.mbuf* %92)
  br label %94

94:                                               ; preds = %78, %74
  %95 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %96 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %10, align 8
  %97 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %96, i32 0, i32 2
  store %struct.mbuf* %95, %struct.mbuf** %97, align 8
  %98 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %99 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %10, align 8
  %100 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %99, i32 0, i32 1
  store %struct.ieee80211_node* %98, %struct.ieee80211_node** %100, align 8
  %101 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %102 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %9, align 8
  %103 = load i32, i32* @RT2560_TX_IFS_NEWBACKOFF, align 4
  %104 = load i32, i32* @RT2560_TX_TIMESTAMP, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %112 = load i32, i32* %111, align 16
  %113 = call i32 @rt2560_setup_tx_desc(%struct.rt2560_softc* %101, %struct.rt2560_tx_desc* %102, i32 %105, i32 %109, i32 %110, i32 0, i32 %112)
  %114 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %115 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %120 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @DPRINTFN(%struct.rt2560_softc* %114, i32 10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %118, i64 %122, i32 %123)
  %125 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %126 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %10, align 8
  %130 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %133 = call i32 @bus_dmamap_sync(i32 %128, i32 %131, i32 %132)
  %134 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %135 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %139 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %143 = call i32 @bus_dmamap_sync(i32 %137, i32 %141, i32 %142)
  %144 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %145 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  %149 = load i32, i32* @RT2560_BEACON_RING_COUNT, align 4
  %150 = sext i32 %149 to i64
  %151 = urem i64 %148, %150
  %152 = load %struct.rt2560_softc*, %struct.rt2560_softc** %5, align 8
  %153 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %155

155:                                              ; preds = %94, %65
  %156 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ieee80211_chan2mode(i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #2

declare dso_local i32 @ieee80211_radiotap_tx(%struct.ieee80211vap*, %struct.mbuf*) #2

declare dso_local i32 @rt2560_setup_tx_desc(%struct.rt2560_softc*, %struct.rt2560_tx_desc*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DPRINTFN(%struct.rt2560_softc*, i32, i8*, i32, i64, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
