; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_sendprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_sendprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32, %struct.rt2661_tx_ring* }
%struct.rt2661_tx_ring = type { i64, i32, i32, i32, i32, %struct.rt2661_tx_desc*, %struct.rt2661_tx_data* }
%struct.rt2661_tx_desc = type { i32 }
%struct.rt2661_tx_data = type { i32, i32, i32, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__*, %struct.ieee80211com* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32 }

@RT2661_MAX_SCATTER = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not allocate mbuf for protection mode %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not map mbuf (error %d)\0A\00", align 1
@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@RT2661_TX_MORE_FRAG = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@RT2661_TX_NEED_ACK = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@RT2661_TX_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2661_softc*, i32, %struct.mbuf*, %struct.ieee80211_node*, i32, i32)* @rt2661_sendprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2661_sendprot(%struct.rt2661_softc* %0, i32 %1, %struct.mbuf* %2, %struct.ieee80211_node* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2661_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.ieee80211_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211com*, align 8
  %15 = alloca %struct.rt2661_tx_ring*, align 8
  %16 = alloca %struct.rt2661_tx_desc*, align 8
  %17 = alloca %struct.rt2661_tx_data*, align 8
  %18 = alloca %struct.mbuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.ieee80211_node* %3, %struct.ieee80211_node** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %26 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %26, i32 0, i32 1
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %27, align 8
  store %struct.ieee80211com* %28, %struct.ieee80211com** %14, align 8
  %29 = load %struct.rt2661_softc*, %struct.rt2661_softc** %8, align 8
  %30 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %29, i32 0, i32 1
  %31 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %31, i64 %33
  store %struct.rt2661_tx_ring* %34, %struct.rt2661_tx_ring** %15, align 8
  %35 = load i32, i32* @RT2661_MAX_SCATTER, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %22, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %23, align 8
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %40 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node* %39, %struct.mbuf* %40, i32 %41, i32 %42)
  store %struct.mbuf* %43, %struct.mbuf** %18, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %45 = icmp eq %struct.mbuf* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %6
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %53 = call i32 @if_inc_counter(i32 %51, i32 %52, i32 1)
  %54 = load %struct.rt2661_softc*, %struct.rt2661_softc** %8, align 8
  %55 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENOBUFS, align 4
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %158

60:                                               ; preds = %6
  %61 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %62 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %61, i32 0, i32 6
  %63 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %62, align 8
  %64 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %65 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %63, i64 %66
  store %struct.rt2661_tx_data* %67, %struct.rt2661_tx_data** %17, align 8
  %68 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %69 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %68, i32 0, i32 5
  %70 = load %struct.rt2661_tx_desc*, %struct.rt2661_tx_desc** %69, align 8
  %71 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %72 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.rt2661_tx_desc, %struct.rt2661_tx_desc* %70, i64 %73
  store %struct.rt2661_tx_desc* %74, %struct.rt2661_tx_desc** %16, align 8
  %75 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %76 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %17, align 8
  %79 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %82 = call i32 @bus_dmamap_load_mbuf_sg(i32 %77, i32 %80, %struct.mbuf* %81, i32* %38, i32* %24, i32 0)
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %60
  %86 = load %struct.rt2661_softc*, %struct.rt2661_softc** %8, align 8
  %87 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %21, align 4
  %90 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %92 = call i32 @m_freem(%struct.mbuf* %91)
  %93 = load i32, i32* %21, align 4
  store i32 %93, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %158

94:                                               ; preds = %60
  %95 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %96 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %17, align 8
  %97 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %96, i32 0, i32 3
  store %struct.mbuf* %95, %struct.mbuf** %97, align 8
  %98 = load %struct.ieee80211_node*, %struct.ieee80211_node** %11, align 8
  %99 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %98)
  %100 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %17, align 8
  %101 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  %103 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %17, align 8
  %104 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ieee80211com*, %struct.ieee80211com** %14, align 8
  %106 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @ieee80211_ctl_rate(i32 %107, i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* @RT2661_TX_MORE_FRAG, align 4
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %94
  %115 = load i32, i32* @RT2661_TX_NEED_ACK, align 4
  %116 = load i32, i32* %20, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %20, align 4
  br label %118

118:                                              ; preds = %114, %94
  %119 = load %struct.rt2661_softc*, %struct.rt2661_softc** %8, align 8
  %120 = load %struct.rt2661_tx_desc*, %struct.rt2661_tx_desc** %16, align 8
  %121 = load i32, i32* %20, align 4
  %122 = load %struct.mbuf*, %struct.mbuf** %18, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @rt2661_setup_tx_desc(%struct.rt2661_softc* %119, %struct.rt2661_tx_desc* %120, i32 %121, i32 0, i32 %125, i32 %126, i32* %38, i32 1, i32 %127)
  %129 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %130 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rt2661_tx_data*, %struct.rt2661_tx_data** %17, align 8
  %133 = getelementptr inbounds %struct.rt2661_tx_data, %struct.rt2661_tx_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %136 = call i32 @bus_dmamap_sync(i32 %131, i32 %134, i32 %135)
  %137 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %138 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %141 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %144 = call i32 @bus_dmamap_sync(i32 %139, i32 %142, i32 %143)
  %145 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %146 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %150 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, 1
  %153 = load i32, i32* @RT2661_TX_RING_COUNT, align 4
  %154 = sext i32 %153 to i64
  %155 = urem i64 %152, %154
  %156 = load %struct.rt2661_tx_ring*, %struct.rt2661_tx_ring** %15, align 8
  %157 = getelementptr inbounds %struct.rt2661_tx_ring, %struct.rt2661_tx_ring* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %158

158:                                              ; preds = %118, %85, %46
  %159 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node*, %struct.mbuf*, i32, i32) #2

declare dso_local i32 @if_inc_counter(i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, i32*, i32*, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #2

declare dso_local i32 @ieee80211_ctl_rate(i32, i32) #2

declare dso_local i32 @rt2661_setup_tx_desc(%struct.rt2661_softc*, %struct.rt2661_tx_desc*, i32, i32, i32, i32, i32*, i32, i32) #2

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
