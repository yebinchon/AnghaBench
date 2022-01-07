; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_tx_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_tx_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.TYPE_6__, i32, %struct.rt2560_tx_radiotap_header, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, %struct.rt2560_tx_data*, %struct.rt2560_tx_desc* }
%struct.rt2560_tx_data = type { i32, %struct.ieee80211_node*, %struct.mbuf* }
%struct.rt2560_tx_desc = type { i32 }
%struct.rt2560_tx_radiotap_header = type { i32, i32, i64 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211vap = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_bpf_params = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@RT2560_MAX_SCATTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_BPF_NOACK = common dso_local global i32 0, align 4
@RT2560_TX_ACK = common dso_local global i32 0, align 4
@IEEE80211_BPF_RTS = common dso_local global i32 0, align 4
@IEEE80211_BPF_CTS = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@IEEE80211_PROT_CTSONLY = common dso_local global i32 0, align 4
@RT2560_TX_LONG_RETRY = common dso_local global i32 0, align 4
@RT2560_TX_IFS_SIFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not map mbuf (error %d)\0A\00", align 1
@IEEE80211_BPF_CRYPTO = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"sending raw frame len=%u idx=%u rate=%u\0A\00", align 1
@RT2560_PRIO_RING_COUNT = common dso_local global i32 0, align 4
@RT2560_TXCSR0 = common dso_local global i32 0, align 4
@RT2560_KICK_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*, %struct.ieee80211_bpf_params*)* @rt2560_tx_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2560_tx_raw(%struct.rt2560_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2, %struct.ieee80211_bpf_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2560_softc*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.ieee80211_bpf_params*, align 8
  %10 = alloca %struct.ieee80211vap*, align 8
  %11 = alloca %struct.ieee80211com*, align 8
  %12 = alloca %struct.rt2560_tx_desc*, align 8
  %13 = alloca %struct.rt2560_tx_data*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.rt2560_tx_radiotap_header*, align 8
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %8, align 8
  store %struct.ieee80211_bpf_params* %3, %struct.ieee80211_bpf_params** %9, align 8
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %22, i32 0, i32 0
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %23, align 8
  store %struct.ieee80211vap* %24, %struct.ieee80211vap** %10, align 8
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %25, i32 0, i32 1
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %26, align 8
  store %struct.ieee80211com* %27, %struct.ieee80211com** %11, align 8
  %28 = load i32, i32* @RT2560_MAX_SCATTER, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca %struct.TYPE_7__, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %33 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %34, align 8
  %36 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %37 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %35, i64 %39
  store %struct.rt2560_tx_desc* %40, %struct.rt2560_tx_desc** %12, align 8
  %41 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %42 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %43, align 8
  %45 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %46 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %44, i64 %48
  store %struct.rt2560_tx_data* %49, %struct.rt2560_tx_data** %13, align 8
  %50 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @ieee80211_isratevalid(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %4
  %60 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %231

63:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %64 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_BPF_NOACK, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @RT2560_TX_ACK, align 4
  %72 = load i32, i32* %16, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_BPF_RTS, align 4
  %79 = load i32, i32* @IEEE80211_BPF_CTS, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %74
  %84 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %86 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %87 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %88 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IEEE80211_BPF_RTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  br label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @IEEE80211_PROT_CTSONLY, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @rt2560_sendprot(%struct.rt2560_softc* %84, %struct.mbuf* %85, %struct.ieee80211_node* %86, i32 %98, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %105 = call i32 @m_freem(%struct.mbuf* %104)
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %231

107:                                              ; preds = %97
  %108 = load i32, i32* @RT2560_TX_LONG_RETRY, align 4
  %109 = load i32, i32* @RT2560_TX_IFS_SIFS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %107, %74
  %114 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %115 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %13, align 8
  %119 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %122 = call i32 @bus_dmamap_load_mbuf_sg(i32 %117, i32 %120, %struct.mbuf* %121, %struct.TYPE_7__* %31, i32* %17, i32 0)
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %113
  %126 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %127 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = call i32 @device_printf(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %132 = call i32 @m_freem(%struct.mbuf* %131)
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %231

134:                                              ; preds = %113
  %135 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  %136 = call i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %134
  %139 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %140 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %139, i32 0, i32 2
  store %struct.rt2560_tx_radiotap_header* %140, %struct.rt2560_tx_radiotap_header** %21, align 8
  %141 = load %struct.rt2560_tx_radiotap_header*, %struct.rt2560_tx_radiotap_header** %21, align 8
  %142 = getelementptr inbounds %struct.rt2560_tx_radiotap_header, %struct.rt2560_tx_radiotap_header* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.rt2560_tx_radiotap_header*, %struct.rt2560_tx_radiotap_header** %21, align 8
  %145 = getelementptr inbounds %struct.rt2560_tx_radiotap_header, %struct.rt2560_tx_radiotap_header* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %147 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.rt2560_tx_radiotap_header*, %struct.rt2560_tx_radiotap_header** %21, align 8
  %150 = getelementptr inbounds %struct.rt2560_tx_radiotap_header, %struct.rt2560_tx_radiotap_header* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %152 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %151, i32 0, i32 0
  %153 = load %struct.ieee80211vap*, %struct.ieee80211vap** %152, align 8
  %154 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %155 = call i32 @ieee80211_radiotap_tx(%struct.ieee80211vap* %153, %struct.mbuf* %154)
  br label %156

156:                                              ; preds = %138, %134
  %157 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %158 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %13, align 8
  %159 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %158, i32 0, i32 2
  store %struct.mbuf* %157, %struct.mbuf** %159, align 8
  %160 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %161 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %13, align 8
  %162 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %161, i32 0, i32 1
  store %struct.ieee80211_node* %160, %struct.ieee80211_node** %162, align 8
  %163 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %164 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %12, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %167 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.ieee80211_bpf_params*, %struct.ieee80211_bpf_params** %9, align 8
  %172 = getelementptr inbounds %struct.ieee80211_bpf_params, %struct.ieee80211_bpf_params* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IEEE80211_BPF_CRYPTO, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %179 = load i32, i32* %178, align 16
  %180 = call i32 @rt2560_setup_tx_desc(%struct.rt2560_softc* %163, %struct.rt2560_tx_desc* %164, i32 %165, i32 %169, i32 %170, i32 %177, i32 %179)
  %181 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %182 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %13, align 8
  %186 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %189 = call i32 @bus_dmamap_sync(i32 %184, i32 %187, i32 %188)
  %190 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %191 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %195 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %199 = call i32 @bus_dmamap_sync(i32 %193, i32 %197, i32 %198)
  %200 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %201 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %202 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %206 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @DPRINTFN(%struct.rt2560_softc* %200, i32 10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %204, i64 %208, i32 %209)
  %211 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %212 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  %216 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %217 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  %221 = load i32, i32* @RT2560_PRIO_RING_COUNT, align 4
  %222 = sext i32 %221 to i64
  %223 = urem i64 %220, %222
  %224 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %225 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  store i64 %223, i64* %226, align 8
  %227 = load %struct.rt2560_softc*, %struct.rt2560_softc** %6, align 8
  %228 = load i32, i32* @RT2560_TXCSR0, align 4
  %229 = load i32, i32* @RT2560_KICK_PRIO, align 4
  %230 = call i32 @RAL_WRITE(%struct.rt2560_softc* %227, i32 %228, i32 %229)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %231

231:                                              ; preds = %156, %125, %103, %59
  %232 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ieee80211_isratevalid(i32, i32) #2

declare dso_local i32 @m_freem(%struct.mbuf*) #2

declare dso_local i32 @rt2560_sendprot(%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32, i32) #2

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.TYPE_7__*, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i64 @ieee80211_radiotap_active_vap(%struct.ieee80211vap*) #2

declare dso_local i32 @ieee80211_radiotap_tx(%struct.ieee80211vap*, %struct.mbuf*) #2

declare dso_local i32 @rt2560_setup_tx_desc(%struct.rt2560_softc*, %struct.rt2560_tx_desc*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @DPRINTFN(%struct.rt2560_softc*, i32, i8*, i32, i64, i32) #2

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
