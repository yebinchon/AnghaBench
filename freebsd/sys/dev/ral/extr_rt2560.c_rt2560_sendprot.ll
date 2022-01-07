; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_sendprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_sendprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.rt2560_tx_data*, %struct.rt2560_tx_desc* }
%struct.rt2560_tx_data = type { i32, i32, i32, %struct.mbuf* }
%struct.rt2560_tx_desc = type { i32 }
%struct.mbuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_6__*, %struct.ieee80211com* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.TYPE_9__ = type { i32 }

@RT2560_MAX_SCATTER = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not allocate mbuf for protection mode %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not map mbuf (error %d)\0A\00", align 1
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@RT2560_TX_MORE_FRAG = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@RT2560_TX_ACK = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@RT2560_TX_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32, i32)* @rt2560_sendprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_sendprot(%struct.rt2560_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt2560_softc*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211com*, align 8
  %13 = alloca %struct.rt2560_tx_desc*, align 8
  %14 = alloca %struct.rt2560_tx_data*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 1
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %24, align 8
  store %struct.ieee80211com* %25, %struct.ieee80211com** %12, align 8
  %26 = load i32, i32* @RT2560_MAX_SCATTER, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca %struct.TYPE_9__, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node* %30, %struct.mbuf* %31, i32 %32, i32 %33)
  store %struct.mbuf* %34, %struct.mbuf** %15, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %5
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %44 = call i32 @if_inc_counter(i32 %42, i32 %43, i32 1)
  %45 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %46 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOBUFS, align 4
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %151

51:                                               ; preds = %5
  %52 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %53 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %54, align 8
  %56 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %57 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %55, i64 %59
  store %struct.rt2560_tx_desc* %60, %struct.rt2560_tx_desc** %13, align 8
  %61 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %62 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %63, align 8
  %65 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %66 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %64, i64 %68
  store %struct.rt2560_tx_data* %69, %struct.rt2560_tx_data** %14, align 8
  %70 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %71 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %14, align 8
  %75 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %78 = call i32 @bus_dmamap_load_mbuf_sg(i32 %73, i32 %76, %struct.mbuf* %77, %struct.TYPE_9__* %29, i32* %21, i32 0)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %51
  %82 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %83 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %88 = call i32 @m_freem(%struct.mbuf* %87)
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %151

90:                                               ; preds = %51
  %91 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %92 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %14, align 8
  %93 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %92, i32 0, i32 3
  store %struct.mbuf* %91, %struct.mbuf** %93, align 8
  %94 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %95 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %94)
  %96 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %14, align 8
  %97 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %99 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %14, align 8
  %100 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  %102 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @ieee80211_ctl_rate(i32 %103, i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* @RT2560_TX_MORE_FRAG, align 4
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %90
  %111 = load i32, i32* @RT2560_TX_ACK, align 4
  %112 = load i32, i32* %17, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %110, %90
  %115 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %116 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %13, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %16, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %124 = load i32, i32* %123, align 16
  %125 = call i32 @rt2560_setup_tx_desc(%struct.rt2560_softc* %115, %struct.rt2560_tx_desc* %116, i32 %117, i32 %121, i32 %122, i32 1, i32 %124)
  %126 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %127 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %14, align 8
  %131 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %134 = call i32 @bus_dmamap_sync(i32 %129, i32 %132, i32 %133)
  %135 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %136 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %141 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  %145 = load i32, i32* @RT2560_TX_RING_COUNT, align 4
  %146 = sext i32 %145 to i64
  %147 = urem i64 %144, %146
  %148 = load %struct.rt2560_softc*, %struct.rt2560_softc** %7, align 8
  %149 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i64 %147, i64* %150, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %151

151:                                              ; preds = %114, %81, %37
  %152 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node*, %struct.mbuf*, i32, i32) #2

declare dso_local i32 @if_inc_counter(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #2

declare dso_local i32 @ieee80211_ctl_rate(i32, i32) #2

declare dso_local i32 @rt2560_setup_tx_desc(%struct.rt2560_softc*, %struct.rt2560_tx_desc*, i32, i32, i32, i32, i32) #2

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
