; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i64, i64, i64, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32*, %struct.ifnet*, i32, i8*, i32, i32, i32, i8**, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ifnet = type { i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, %struct.hn_softc* }
%struct.TYPE_11__ = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hnvf\00", align 1
@hn_xpnt_vf = common dso_local global i64 0, align 8
@hn_xpnt_vf_accbpf = common dso_local global i64 0, align 8
@HN_XVFFLAG_ACCBPF = common dso_local global i32 0, align 4
@hn_tx_agg_size = common dso_local global i32 0, align 4
@hn_tx_agg_pkts = common dso_local global i32 0, align 4
@hn_tx_taskq_mode = common dso_local global i64 0, align 8
@HN_TX_TASKQ_M_INDEP = common dso_local global i64 0, align 8
@hn_tx_taskq_cnt = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"hn_tx\00", align 1
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s tx%d\00", align 1
@HN_TX_TASKQ_M_GLOBAL = common dso_local global i64 0, align 8
@hn_tx_taskque = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"hn_mgmt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s mgmt\00", align 1
@hn_link_taskfunc = common dso_local global i32 0, align 4
@hn_netchg_init_taskfunc = common dso_local global i32 0, align 4
@hn_netchg_status_taskfunc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"hn_vf\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s vf\00", align 1
@hn_xpnt_vf_init_taskfunc = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@hn_ifmedia_upd = common dso_local global i32 0, align 4
@hn_ifmedia_sts = common dso_local global i32 0, align 4
@hn_chan_cnt = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@HN_RING_CNT_DEF_MAX = common dso_local global i32 0, align 4
@hn_tx_ring_cnt = common dso_local global i32 0, align 4
@hn_cpu_index = common dso_local global i32 0, align 4
@HN_XACT_REQ_SIZE = common dso_local global i32 0, align 4
@HN_XACT_RESP_SIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"RNDIS mtu %u\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"nvs_version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"NVS version\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ndis_version\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@hn_ndis_version_sysctl = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"NDIS version\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@hn_caps_sysctl = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"hwassist\00", align 1
@hn_hwassist_sysctl = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"tso_max\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"max TSO size\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"tso_maxsegcnt\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"max # of TSO segments\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"tso_maxsegsz\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"max size of TSO segment\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rxfilter\00", align 1
@hn_rxfilter_sysctl = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"rss_hash\00", align 1
@hn_rss_hash_sysctl = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"RSS hash\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"rss_hashcap\00", align 1
@hn_rss_hcap_sysctl = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [22 x i8] c"RSS hash capabilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"mbuf_hash\00", align 1
@hn_rss_mbuf_sysctl = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [19 x i8] c"RSS hash for mbufs\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"rss_ind_size\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"RSS indirect entry count\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"rss_key\00", align 1
@CTLTYPE_OPAQUE = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@hn_rss_key_sysctl = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"RSS key\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"rss_ind\00", align 1
@hn_rss_ind_sysctl = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [19 x i8] c"RSS indirect table\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"rndis_agg_size\00", align 1
@.str.37 = private unnamed_addr constant [57 x i8] c"RNDIS offered packet transmission aggregation size limit\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"rndis_agg_pkts\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"RNDIS offered packet transmission aggregation count limit\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"rndis_agg_align\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"RNDIS packet transmission aggregation alignment\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"agg_size\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@hn_txagg_size_sysctl = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"Packet transmission aggregation size, 0 -- disable, -1 -- auto\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"agg_pkts\00", align 1
@hn_txagg_pkts_sysctl = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [66 x i8] c"Packet transmission aggregation packets, 0 -- disable, -1 -- auto\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@hn_polling_sysctl = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [52 x i8] c"Polling frequency: [100,1000000], 0 disable polling\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"vf\00", align 1
@hn_vf_sysctl = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [24 x i8] c"Virtual Function's name\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"rxvf\00", align 1
@hn_rxvf_sysctl = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [34 x i8] c"activated Virtual Function's name\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"vf_xpnt_enabled\00", align 1
@hn_xpnt_vf_enabled_sysctl = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [23 x i8] c"Transparent VF enabled\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"vf_xpnt_accbpf\00", align 1
@hn_xpnt_vf_accbpf_sysctl = common dso_local global i32 0, align 4
@.str.56 = private unnamed_addr constant [32 x i8] c"Accurate BPF for transparent VF\00", align 1
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@hn_ioctl = common dso_local global i32 0, align 4
@hn_init = common dso_local global i32 0, align 4
@hn_transmit = common dso_local global i32 0, align 4
@hn_xmit_qflush = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@HN_CAP_VLAN = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@HN_CSUM_IP_MASK = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@HN_CSUM_IP6_MASK = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@HN_CAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_IP_TSO = common dso_local global i32 0, align 4
@HN_CAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@hn_tso_maxlen = common dso_local global i32 0, align 4
@HN_TX_DATA_SEGCNT_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.57 = private unnamed_addr constant [24 x i8] c"TSO segcnt %u segsz %u\0A\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"fixup mtu %u -> %u\0A\00", align 1
@ifnet_event = common dso_local global i32 0, align 4
@hn_ifnet_event = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@ifaddr_event = common dso_local global i32 0, align 4
@hn_ifaddr_event = common dso_local global i32 0, align 4
@ifnet_link_event = common dso_local global i32 0, align 4
@hn_ifnet_lnkevent = common dso_local global i32 0, align 4
@ether_ifattach_event = common dso_local global i32 0, align 4
@hn_ifnet_attevent = common dso_local global i32 0, align 4
@ifnet_departure_event = common dso_local global i32 0, align 4
@hn_ifnet_detevent = common dso_local global i32 0, align 4
@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@HN_LRO_LENLIM_MULTIRX_DEF = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@hn_start = common dso_local global i32 0, align 4
@hn_use_if_start = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hn_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.hn_softc* @device_get_softc(i32 %16)
  store %struct.hn_softc* %17, %struct.hn_softc** %4, align 8
  %18 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store %struct.ifnet* null, %struct.ifnet** %9, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 31
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @vmbus_get_channel(i32 %25)
  %27 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 18
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %30 = call i32 @HN_LOCK_INIT(%struct.hn_softc* %29)
  %31 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %32 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %31, i32 0, i32 30
  %33 = call i32 @rm_init(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @hn_xpnt_vf, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load i64, i64* @hn_xpnt_vf_accbpf, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @HN_XVFFLAG_ACCBPF, align 4
  %41 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %42 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %41, i32 0, i32 29
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %36, %1
  %46 = load i32, i32* @hn_tx_agg_size, align 4
  %47 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %48 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %47, i32 0, i32 28
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @hn_tx_agg_pkts, align 4
  %50 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %51 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %50, i32 0, i32 27
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @hn_tx_taskq_mode, align 8
  %53 = load i64, i64* @HN_TX_TASKQ_M_INDEP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %45
  %56 = load i32, i32* @hn_tx_taskq_cnt, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = call i8** @malloc(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %64 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %63, i32 0, i32 26
  store i8** %62, i8*** %64, align 8
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %96, %55
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @hn_tx_taskq_cnt, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %72 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %73 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %72, i32 0, i32 26
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = call i8* @taskqueue_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71, i8** %77)
  %79 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %80 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %79, i32 0, i32 26
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %86 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %85, i32 0, i32 26
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i32, i32* @PI_NET, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_get_nameunit(i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = call i32 (i8**, i32, i32, i8*, i32, ...) @taskqueue_start_threads(i8** %90, i32 1, i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %69
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %65

99:                                               ; preds = %65
  br label %109

100:                                              ; preds = %45
  %101 = load i64, i64* @hn_tx_taskq_mode, align 8
  %102 = load i64, i64* @HN_TX_TASKQ_M_GLOBAL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i8**, i8*** @hn_tx_taskque, align 8
  %106 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %107 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %106, i32 0, i32 26
  store i8** %105, i8*** %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i32, i32* @M_WAITOK, align 4
  %111 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %112 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %113 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %112, i32 0, i32 13
  %114 = call i8* @taskqueue_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111, i8** %113)
  %115 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %116 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %115, i32 0, i32 13
  store i8* %114, i8** %116, align 8
  %117 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %118 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %117, i32 0, i32 13
  %119 = load i32, i32* @PI_NET, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @device_get_nameunit(i32 %120)
  %122 = call i32 (i8**, i32, i32, i8*, i32, ...) @taskqueue_start_threads(i8** %118, i32 1, i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %124 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %123, i32 0, i32 25
  %125 = load i32, i32* @hn_link_taskfunc, align 4
  %126 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %127 = call i32 @TASK_INIT(i32* %124, i32 0, i32 %125, %struct.hn_softc* %126)
  %128 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %129 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %128, i32 0, i32 24
  %130 = load i32, i32* @hn_netchg_init_taskfunc, align 4
  %131 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %132 = call i32 @TASK_INIT(i32* %129, i32 0, i32 %130, %struct.hn_softc* %131)
  %133 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %134 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %133, i32 0, i32 13
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %137 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %136, i32 0, i32 23
  %138 = load i32, i32* @hn_netchg_status_taskfunc, align 4
  %139 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %140 = call i32 @TIMEOUT_TASK_INIT(i8* %135, i32* %137, i32 0, i32 %138, %struct.hn_softc* %139)
  %141 = load i64, i64* @hn_xpnt_vf, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %109
  %144 = load i32, i32* @M_WAITOK, align 4
  %145 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %146 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %147 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %146, i32 0, i32 22
  %148 = call i8* @taskqueue_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %144, i32 %145, i8** %147)
  %149 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %150 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %149, i32 0, i32 22
  store i8* %148, i8** %150, align 8
  %151 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %152 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %151, i32 0, i32 22
  %153 = load i32, i32* @PI_NET, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @device_get_nameunit(i32 %154)
  %156 = call i32 (i8**, i32, i32, i8*, i32, ...) @taskqueue_start_threads(i8** %152, i32 1, i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  %157 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %158 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %157, i32 0, i32 22
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %161 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %160, i32 0, i32 21
  %162 = load i32, i32* @hn_xpnt_vf_init_taskfunc, align 4
  %163 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %164 = call i32 @TIMEOUT_TASK_INIT(i8* %159, i32* %161, i32 0, i32 %162, %struct.hn_softc* %163)
  br label %165

165:                                              ; preds = %143, %109
  %166 = load i32, i32* @IFT_ETHER, align 4
  %167 = call %struct.ifnet* @if_alloc(i32 %166)
  %168 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %169 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %168, i32 0, i32 20
  store %struct.ifnet* %167, %struct.ifnet** %169, align 8
  store %struct.ifnet* %167, %struct.ifnet** %9, align 8
  %170 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %171 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 16
  store %struct.hn_softc* %170, %struct.hn_softc** %172, align 8
  %173 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @device_get_name(i32 %174)
  %176 = load i32, i32* %3, align 4
  %177 = call i32 @device_get_unit(i32 %176)
  %178 = call i32 @if_initname(%struct.ifnet* %173, i32 %175, i32 %177)
  %179 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %180 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %179, i32 0, i32 16
  %181 = load i32, i32* @hn_ifmedia_upd, align 4
  %182 = load i32, i32* @hn_ifmedia_sts, align 4
  %183 = call i32 @ifmedia_init(%struct.TYPE_9__* %180, i32 0, i32 %181, i32 %182)
  %184 = load i32, i32* @hn_chan_cnt, align 4
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp sle i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %165
  %188 = load i32, i32* @mp_ncpus, align 4
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @HN_RING_CNT_DEF_MAX, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @HN_RING_CNT_DEF_MAX, align 4
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %192, %187
  br label %202

195:                                              ; preds = %165
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @mp_ncpus, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* @mp_ncpus, align 4
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %199, %195
  br label %202

202:                                              ; preds = %201, %194
  %203 = load i32, i32* @hn_tx_ring_cnt, align 4
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp sle i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206, %202
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @atomic_fetchadd_int(i32* @hn_cpu_index, i32 %213)
  %215 = load i32, i32* @mp_ncpus, align 4
  %216 = srem i32 %214, %215
  %217 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %218 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @hn_create_tx_data(%struct.hn_softc* %219, i32 %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %212
  br label %804

225:                                              ; preds = %212
  %226 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @hn_create_rx_data(%struct.hn_softc* %226, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  br label %804

232:                                              ; preds = %225
  %233 = load i32, i32* %3, align 4
  %234 = call i32 @bus_get_dma_tag(i32 %233)
  %235 = load i32, i32* @HN_XACT_REQ_SIZE, align 4
  %236 = load i32, i32* @HN_XACT_RESP_SIZE, align 4
  %237 = call i32* @vmbus_xact_ctx_create(i32 %234, i32 %235, i32 %236, i32 0)
  %238 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %239 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %238, i32 0, i32 19
  store i32* %237, i32** %239, align 8
  %240 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %241 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %240, i32 0, i32 19
  %242 = load i32*, i32** %241, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %232
  %245 = load i32, i32* @ENXIO, align 4
  store i32 %245, i32* %10, align 4
  br label %804

246:                                              ; preds = %232
  %247 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %248 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %247, i32 0, i32 18
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %251 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %250, i32 0, i32 19
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @vmbus_chan_set_orphan(i32 %249, i32* %252)
  %254 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %255 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @vmbus_chan_is_revoked(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %246
  %260 = load i32, i32* @ENXIO, align 4
  store i32 %260, i32* %10, align 4
  br label %804

261:                                              ; preds = %246
  %262 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %263 = load i64, i64* @ETHERMTU, align 8
  %264 = call i32 @hn_synth_attach(%struct.hn_softc* %262, i64 %263)
  store i32 %264, i32* %10, align 4
  %265 = load i32, i32* %10, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %804

268:                                              ; preds = %261
  %269 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %270 = call i32 @hn_rndis_get_eaddr(%struct.hn_softc* %269, i32* %21)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %804

274:                                              ; preds = %268
  %275 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %276 = call i32 @hn_rndis_get_mtu(%struct.hn_softc* %275, i64* %13)
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = load i64, i64* @ETHERMTU, align 8
  store i64 %280, i64* %13, align 8
  br label %289

281:                                              ; preds = %274
  %282 = load i64, i64* @bootverbose, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* %3, align 4
  %286 = load i64, i64* %13, align 8
  %287 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %286)
  br label %288

288:                                              ; preds = %284, %281
  br label %289

289:                                              ; preds = %288, %279
  %290 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %291 = call i32 @hn_fixup_tx_data(%struct.hn_softc* %290)
  %292 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %293 = call i32 @hn_fixup_rx_data(%struct.hn_softc* %292)
  %294 = load i32, i32* %3, align 4
  %295 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %294)
  store %struct.sysctl_ctx_list* %295, %struct.sysctl_ctx_list** %6, align 8
  %296 = load i32, i32* %3, align 4
  %297 = call i32 @device_get_sysctl_tree(i32 %296)
  %298 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %297)
  store %struct.sysctl_oid_list* %298, %struct.sysctl_oid_list** %5, align 8
  %299 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %300 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %301 = load i32, i32* @OID_AUTO, align 4
  %302 = load i32, i32* @CTLFLAG_RD, align 4
  %303 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %304 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %303, i32 0, i32 2
  %305 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %299, %struct.sysctl_oid_list* %300, i32 %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %302, i64* %304, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %306 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %307 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %308 = load i32, i32* @OID_AUTO, align 4
  %309 = load i32, i32* @CTLTYPE_STRING, align 4
  %310 = load i32, i32* @CTLFLAG_RD, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %313 = or i32 %311, %312
  %314 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %315 = load i32, i32* @hn_ndis_version_sysctl, align 4
  %316 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %306, %struct.sysctl_oid_list* %307, i32 %308, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %313, %struct.hn_softc* %314, i32 0, i32 %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %317 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %318 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %319 = load i32, i32* @OID_AUTO, align 4
  %320 = load i32, i32* @CTLTYPE_STRING, align 4
  %321 = load i32, i32* @CTLFLAG_RD, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %324 = or i32 %322, %323
  %325 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %326 = load i32, i32* @hn_caps_sysctl, align 4
  %327 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %317, %struct.sysctl_oid_list* %318, i32 %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %324, %struct.hn_softc* %325, i32 0, i32 %326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %328 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %329 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %330 = load i32, i32* @OID_AUTO, align 4
  %331 = load i32, i32* @CTLTYPE_STRING, align 4
  %332 = load i32, i32* @CTLFLAG_RD, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %335 = or i32 %333, %334
  %336 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %337 = load i32, i32* @hn_hwassist_sysctl, align 4
  %338 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %328, %struct.sysctl_oid_list* %329, i32 %330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %335, %struct.hn_softc* %336, i32 0, i32 %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %339 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %340 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %341 = load i32, i32* @OID_AUTO, align 4
  %342 = load i32, i32* @CTLFLAG_RD, align 4
  %343 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %344 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %343, i32 0, i32 0
  %345 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %339, %struct.sysctl_oid_list* %340, i32 %341, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %342, i64* %344, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %346 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %347 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %348 = load i32, i32* @OID_AUTO, align 4
  %349 = load i32, i32* @CTLFLAG_RD, align 4
  %350 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %351 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %350, i32 0, i32 1
  %352 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %346, %struct.sysctl_oid_list* %347, i32 %348, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %349, i64* %351, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %353 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %354 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %355 = load i32, i32* @OID_AUTO, align 4
  %356 = load i32, i32* @CTLFLAG_RD, align 4
  %357 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %358 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %357, i32 0, i32 2
  %359 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %353, %struct.sysctl_oid_list* %354, i32 %355, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %356, i64* %358, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %360 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %361 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %362 = load i32, i32* @OID_AUTO, align 4
  %363 = load i32, i32* @CTLTYPE_STRING, align 4
  %364 = load i32, i32* @CTLFLAG_RD, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %367 = or i32 %365, %366
  %368 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %369 = load i32, i32* @hn_rxfilter_sysctl, align 4
  %370 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %360, %struct.sysctl_oid_list* %361, i32 %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 %367, %struct.hn_softc* %368, i32 0, i32 %369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %371 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %372 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %373 = load i32, i32* @OID_AUTO, align 4
  %374 = load i32, i32* @CTLTYPE_STRING, align 4
  %375 = load i32, i32* @CTLFLAG_RD, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %378 = or i32 %376, %377
  %379 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %380 = load i32, i32* @hn_rss_hash_sysctl, align 4
  %381 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %371, %struct.sysctl_oid_list* %372, i32 %373, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %378, %struct.hn_softc* %379, i32 0, i32 %380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %382 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %383 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %384 = load i32, i32* @OID_AUTO, align 4
  %385 = load i32, i32* @CTLTYPE_STRING, align 4
  %386 = load i32, i32* @CTLFLAG_RD, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %389 = or i32 %387, %388
  %390 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %391 = load i32, i32* @hn_rss_hcap_sysctl, align 4
  %392 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %382, %struct.sysctl_oid_list* %383, i32 %384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %389, %struct.hn_softc* %390, i32 0, i32 %391, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %393 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %394 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %395 = load i32, i32* @OID_AUTO, align 4
  %396 = load i32, i32* @CTLTYPE_STRING, align 4
  %397 = load i32, i32* @CTLFLAG_RD, align 4
  %398 = or i32 %396, %397
  %399 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %400 = or i32 %398, %399
  %401 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %402 = load i32, i32* @hn_rss_mbuf_sysctl, align 4
  %403 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %393, %struct.sysctl_oid_list* %394, i32 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 %400, %struct.hn_softc* %401, i32 0, i32 %402, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  %404 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %405 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %406 = load i32, i32* @OID_AUTO, align 4
  %407 = load i32, i32* @CTLFLAG_RD, align 4
  %408 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %409 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %408, i32 0, i32 17
  %410 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %404, %struct.sysctl_oid_list* %405, i32 %406, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %407, i32* %409, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %411 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %412 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %413 = load i32, i32* @OID_AUTO, align 4
  %414 = load i32, i32* @CTLTYPE_OPAQUE, align 4
  %415 = load i32, i32* @CTLFLAG_RW, align 4
  %416 = or i32 %414, %415
  %417 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %418 = or i32 %416, %417
  %419 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %420 = load i32, i32* @hn_rss_key_sysctl, align 4
  %421 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %411, %struct.sysctl_oid_list* %412, i32 %413, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i32 %418, %struct.hn_softc* %419, i32 0, i32 %420, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %422 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %423 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %424 = load i32, i32* @OID_AUTO, align 4
  %425 = load i32, i32* @CTLTYPE_OPAQUE, align 4
  %426 = load i32, i32* @CTLFLAG_RW, align 4
  %427 = or i32 %425, %426
  %428 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %429 = or i32 %427, %428
  %430 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %431 = load i32, i32* @hn_rss_ind_sysctl, align 4
  %432 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %422, %struct.sysctl_oid_list* %423, i32 %424, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 %429, %struct.hn_softc* %430, i32 0, i32 %431, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  %433 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %434 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %435 = load i32, i32* @OID_AUTO, align 4
  %436 = load i32, i32* @CTLFLAG_RD, align 4
  %437 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %438 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %437, i32 0, i32 3
  %439 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %433, %struct.sysctl_oid_list* %434, i32 %435, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 %436, i64* %438, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.37, i64 0, i64 0))
  %440 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %441 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %442 = load i32, i32* @OID_AUTO, align 4
  %443 = load i32, i32* @CTLFLAG_RD, align 4
  %444 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %445 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %444, i32 0, i32 4
  %446 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %440, %struct.sysctl_oid_list* %441, i32 %442, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i32 %443, i64* %445, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.39, i64 0, i64 0))
  %447 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %448 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %449 = load i32, i32* @OID_AUTO, align 4
  %450 = load i32, i32* @CTLFLAG_RD, align 4
  %451 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %452 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %451, i32 0, i32 5
  %453 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %447, %struct.sysctl_oid_list* %448, i32 %449, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i32 %450, i64* %452, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i64 0, i64 0))
  %454 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %455 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %456 = load i32, i32* @OID_AUTO, align 4
  %457 = load i32, i32* @CTLTYPE_INT, align 4
  %458 = load i32, i32* @CTLFLAG_RW, align 4
  %459 = or i32 %457, %458
  %460 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %461 = or i32 %459, %460
  %462 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %463 = load i32, i32* @hn_txagg_size_sysctl, align 4
  %464 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %454, %struct.sysctl_oid_list* %455, i32 %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i32 %461, %struct.hn_softc* %462, i32 0, i32 %463, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0))
  %465 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %466 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %467 = load i32, i32* @OID_AUTO, align 4
  %468 = load i32, i32* @CTLTYPE_INT, align 4
  %469 = load i32, i32* @CTLFLAG_RW, align 4
  %470 = or i32 %468, %469
  %471 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %472 = or i32 %470, %471
  %473 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %474 = load i32, i32* @hn_txagg_pkts_sysctl, align 4
  %475 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %465, %struct.sysctl_oid_list* %466, i32 %467, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i32 %472, %struct.hn_softc* %473, i32 0, i32 %474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.46, i64 0, i64 0))
  %476 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %477 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %478 = load i32, i32* @OID_AUTO, align 4
  %479 = load i32, i32* @CTLTYPE_UINT, align 4
  %480 = load i32, i32* @CTLFLAG_RW, align 4
  %481 = or i32 %479, %480
  %482 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %483 = or i32 %481, %482
  %484 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %485 = load i32, i32* @hn_polling_sysctl, align 4
  %486 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %476, %struct.sysctl_oid_list* %477, i32 %478, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i32 %483, %struct.hn_softc* %484, i32 0, i32 %485, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.48, i64 0, i64 0))
  %487 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %488 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %489 = load i32, i32* @OID_AUTO, align 4
  %490 = load i32, i32* @CTLTYPE_STRING, align 4
  %491 = load i32, i32* @CTLFLAG_RD, align 4
  %492 = or i32 %490, %491
  %493 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %494 = or i32 %492, %493
  %495 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %496 = load i32, i32* @hn_vf_sysctl, align 4
  %497 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %487, %struct.sysctl_oid_list* %488, i32 %489, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32 %494, %struct.hn_softc* %495, i32 0, i32 %496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0))
  %498 = load i64, i64* @hn_xpnt_vf, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %512, label %500

500:                                              ; preds = %289
  %501 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %502 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %503 = load i32, i32* @OID_AUTO, align 4
  %504 = load i32, i32* @CTLTYPE_STRING, align 4
  %505 = load i32, i32* @CTLFLAG_RD, align 4
  %506 = or i32 %504, %505
  %507 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %508 = or i32 %506, %507
  %509 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %510 = load i32, i32* @hn_rxvf_sysctl, align 4
  %511 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %501, %struct.sysctl_oid_list* %502, i32 %503, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 %508, %struct.hn_softc* %509, i32 0, i32 %510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0))
  br label %535

512:                                              ; preds = %289
  %513 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %514 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %515 = load i32, i32* @OID_AUTO, align 4
  %516 = load i32, i32* @CTLTYPE_INT, align 4
  %517 = load i32, i32* @CTLFLAG_RD, align 4
  %518 = or i32 %516, %517
  %519 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %520 = or i32 %518, %519
  %521 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %522 = load i32, i32* @hn_xpnt_vf_enabled_sysctl, align 4
  %523 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %513, %struct.sysctl_oid_list* %514, i32 %515, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i32 %520, %struct.hn_softc* %521, i32 0, i32 %522, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0))
  %524 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %525 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %526 = load i32, i32* @OID_AUTO, align 4
  %527 = load i32, i32* @CTLTYPE_INT, align 4
  %528 = load i32, i32* @CTLFLAG_RW, align 4
  %529 = or i32 %527, %528
  %530 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %531 = or i32 %529, %530
  %532 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %533 = load i32, i32* @hn_xpnt_vf_accbpf_sysctl, align 4
  %534 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %524, %struct.sysctl_oid_list* %525, i32 %526, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i32 %531, %struct.hn_softc* %532, i32 0, i32 %533, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  br label %535

535:                                              ; preds = %512, %500
  %536 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %537 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %536, i32 0, i32 16
  %538 = load i32, i32* @IFM_ETHER, align 4
  %539 = load i32, i32* @IFM_AUTO, align 4
  %540 = or i32 %538, %539
  %541 = call i32 @ifmedia_add(%struct.TYPE_9__* %537, i32 %540, i32 0, i32* null)
  %542 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %543 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %542, i32 0, i32 16
  %544 = load i32, i32* @IFM_ETHER, align 4
  %545 = load i32, i32* @IFM_AUTO, align 4
  %546 = or i32 %544, %545
  %547 = call i32 @ifmedia_set(%struct.TYPE_9__* %543, i32 %546)
  %548 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %549 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %548, i32 0, i32 16
  %550 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %549, i32 0, i32 0
  %551 = load %struct.TYPE_8__*, %struct.TYPE_8__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %555 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %554, i32 0, i32 16
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i32 0, i32 1
  store i32 %553, i32* %556, align 8
  %557 = call i32 @IF_Gbps(i32 10)
  %558 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %559 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %558, i32 0, i32 15
  store i32 %557, i32* %559, align 4
  %560 = load i32, i32* @IFF_BROADCAST, align 4
  %561 = load i32, i32* @IFF_SIMPLEX, align 4
  %562 = or i32 %560, %561
  %563 = load i32, i32* @IFF_MULTICAST, align 4
  %564 = or i32 %562, %563
  %565 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %566 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %565, i32 0, i32 3
  store i32 %564, i32* %566, align 8
  %567 = load i32, i32* @hn_ioctl, align 4
  %568 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %569 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %568, i32 0, i32 14
  store i32 %567, i32* %569, align 8
  %570 = load i32, i32* @hn_init, align 4
  %571 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %572 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %571, i32 0, i32 13
  store i32 %570, i32* %572, align 4
  %573 = load i32, i32* @hn_transmit, align 4
  %574 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %575 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %574, i32 0, i32 10
  store i32 %573, i32* %575, align 8
  %576 = load i32, i32* @hn_xmit_qflush, align 4
  %577 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %578 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %577, i32 0, i32 9
  store i32 %576, i32* %578, align 4
  %579 = load i32, i32* @IFCAP_RXCSUM, align 4
  %580 = load i32, i32* @IFCAP_LRO, align 4
  %581 = or i32 %579, %580
  %582 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %583 = or i32 %581, %582
  %584 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %585 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %584, i32 0, i32 4
  %586 = load i32, i32* %585, align 4
  %587 = or i32 %586, %583
  store i32 %587, i32* %585, align 4
  %588 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %589 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %588, i32 0, i32 6
  %590 = load i32, i32* %589, align 8
  %591 = load i32, i32* @HN_CAP_VLAN, align 4
  %592 = and i32 %590, %591
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %602

594:                                              ; preds = %535
  %595 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %596 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %597 = or i32 %595, %596
  %598 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %599 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %598, i32 0, i32 4
  %600 = load i32, i32* %599, align 4
  %601 = or i32 %600, %597
  store i32 %601, i32* %599, align 4
  br label %602

602:                                              ; preds = %594, %535
  %603 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %604 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %603, i32 0, i32 15
  %605 = load %struct.TYPE_10__*, %struct.TYPE_10__** %604, align 8
  %606 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %605, i64 0
  %607 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %610 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %609, i32 0, i32 5
  store i32 %608, i32* %610, align 8
  %611 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %612 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %611, i32 0, i32 5
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* @HN_CSUM_IP_MASK, align 4
  %615 = and i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %623

617:                                              ; preds = %602
  %618 = load i32, i32* @IFCAP_TXCSUM, align 4
  %619 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %620 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %619, i32 0, i32 4
  %621 = load i32, i32* %620, align 4
  %622 = or i32 %621, %618
  store i32 %622, i32* %620, align 4
  br label %623

623:                                              ; preds = %617, %602
  %624 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %625 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %624, i32 0, i32 5
  %626 = load i32, i32* %625, align 8
  %627 = load i32, i32* @HN_CSUM_IP6_MASK, align 4
  %628 = and i32 %626, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %636

630:                                              ; preds = %623
  %631 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %632 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %633 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %632, i32 0, i32 4
  %634 = load i32, i32* %633, align 4
  %635 = or i32 %634, %631
  store i32 %635, i32* %633, align 4
  br label %636

636:                                              ; preds = %630, %623
  %637 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %638 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %637, i32 0, i32 6
  %639 = load i32, i32* %638, align 8
  %640 = load i32, i32* @HN_CAP_TSO4, align 4
  %641 = and i32 %639, %640
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %654

643:                                              ; preds = %636
  %644 = load i32, i32* @IFCAP_TSO4, align 4
  %645 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %646 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %645, i32 0, i32 4
  %647 = load i32, i32* %646, align 4
  %648 = or i32 %647, %644
  store i32 %648, i32* %646, align 4
  %649 = load i32, i32* @CSUM_IP_TSO, align 4
  %650 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %651 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %650, i32 0, i32 5
  %652 = load i32, i32* %651, align 8
  %653 = or i32 %652, %649
  store i32 %653, i32* %651, align 8
  br label %654

654:                                              ; preds = %643, %636
  %655 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %656 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %655, i32 0, i32 6
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* @HN_CAP_TSO6, align 4
  %659 = and i32 %657, %658
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %672

661:                                              ; preds = %654
  %662 = load i32, i32* @IFCAP_TSO6, align 4
  %663 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %664 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %663, i32 0, i32 4
  %665 = load i32, i32* %664, align 4
  %666 = or i32 %665, %662
  store i32 %666, i32* %664, align 4
  %667 = load i32, i32* @CSUM_IP6_TSO, align 4
  %668 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %669 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %668, i32 0, i32 5
  %670 = load i32, i32* %669, align 8
  %671 = or i32 %670, %667
  store i32 %671, i32* %669, align 8
  br label %672

672:                                              ; preds = %661, %654
  %673 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %674 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %673, i32 0, i32 4
  %675 = load i32, i32* %674, align 4
  %676 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %677 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %676, i32 0, i32 6
  store i32 %675, i32* %677, align 4
  %678 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %679 = load i32, i32* @IFCAP_TSO6, align 4
  %680 = or i32 %678, %679
  %681 = xor i32 %680, -1
  %682 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %683 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %682, i32 0, i32 6
  %684 = load i32, i32* %683, align 4
  %685 = and i32 %684, %681
  store i32 %685, i32* %683, align 4
  %686 = load i32, i32* @HN_CSUM_IP6_MASK, align 4
  %687 = load i32, i32* @CSUM_IP6_TSO, align 4
  %688 = or i32 %686, %687
  %689 = xor i32 %688, -1
  %690 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %691 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %690, i32 0, i32 5
  %692 = load i32, i32* %691, align 8
  %693 = and i32 %692, %689
  store i32 %693, i32* %691, align 8
  %694 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %695 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %694, i32 0, i32 4
  %696 = load i32, i32* %695, align 4
  %697 = load i32, i32* @IFCAP_TSO6, align 4
  %698 = load i32, i32* @IFCAP_TSO4, align 4
  %699 = or i32 %697, %698
  %700 = and i32 %696, %699
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %717

702:                                              ; preds = %672
  %703 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %704 = call i32 @HN_LOCK(%struct.hn_softc* %703)
  %705 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %706 = load i32, i32* @hn_tso_maxlen, align 4
  %707 = load i64, i64* @ETHERMTU, align 8
  %708 = call i32 @hn_set_tso_maxsize(%struct.hn_softc* %705, i32 %706, i64 %707)
  %709 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %710 = call i32 @HN_UNLOCK(%struct.hn_softc* %709)
  %711 = load i64, i64* @HN_TX_DATA_SEGCNT_MAX, align 8
  %712 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %713 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %712, i32 0, i32 1
  store i64 %711, i64* %713, align 8
  %714 = load i64, i64* @PAGE_SIZE, align 8
  %715 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %716 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %715, i32 0, i32 2
  store i64 %714, i64* %716, align 8
  br label %717

717:                                              ; preds = %702, %672
  %718 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %719 = call i32 @ether_ifattach(%struct.ifnet* %718, i32* %21)
  %720 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %721 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %720, i32 0, i32 4
  %722 = load i32, i32* %721, align 4
  %723 = load i32, i32* @IFCAP_TSO6, align 4
  %724 = load i32, i32* @IFCAP_TSO4, align 4
  %725 = or i32 %723, %724
  %726 = and i32 %722, %725
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %740

728:                                              ; preds = %717
  %729 = load i64, i64* @bootverbose, align 8
  %730 = icmp ne i64 %729, 0
  br i1 %730, label %731, label %740

731:                                              ; preds = %728
  %732 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %733 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %734 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %733, i32 0, i32 1
  %735 = load i64, i64* %734, align 8
  %736 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %737 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %736, i32 0, i32 2
  %738 = load i64, i64* %737, align 8
  %739 = call i32 @if_printf(%struct.ifnet* %732, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i64 %735, i64 %738)
  br label %740

740:                                              ; preds = %731, %728, %717
  %741 = load i64, i64* %13, align 8
  %742 = load i64, i64* @ETHERMTU, align 8
  %743 = icmp slt i64 %741, %742
  br i1 %743, label %744, label %754

744:                                              ; preds = %740
  %745 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %746 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %747 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %746, i32 0, i32 7
  %748 = load i64, i64* %747, align 8
  %749 = load i64, i64* %13, align 8
  %750 = call i32 @if_printf(%struct.ifnet* %745, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i64 0, i64 0), i64 %748, i64 %749)
  %751 = load i64, i64* %13, align 8
  %752 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %753 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %752, i32 0, i32 7
  store i64 %751, i64* %753, align 8
  br label %754

754:                                              ; preds = %744, %740
  %755 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %756 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %755, i32 0, i32 8
  store i32 4, i32* %756, align 8
  %757 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %758 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %757, i32 0, i32 13
  %759 = load i8*, i8** %758, align 8
  %760 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %761 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %760, i32 0, i32 14
  store i8* %759, i8** %761, align 8
  %762 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %763 = call i32 @hn_update_link_status(%struct.hn_softc* %762)
  %764 = load i64, i64* @hn_xpnt_vf, align 8
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %781, label %766

766:                                              ; preds = %754
  %767 = load i32, i32* @ifnet_event, align 4
  %768 = load i32, i32* @hn_ifnet_event, align 4
  %769 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %770 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %771 = call i8* @EVENTHANDLER_REGISTER(i32 %767, i32 %768, %struct.hn_softc* %769, i32 %770)
  %772 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %773 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %772, i32 0, i32 12
  store i8* %771, i8** %773, align 8
  %774 = load i32, i32* @ifaddr_event, align 4
  %775 = load i32, i32* @hn_ifaddr_event, align 4
  %776 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %777 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %778 = call i8* @EVENTHANDLER_REGISTER(i32 %774, i32 %775, %struct.hn_softc* %776, i32 %777)
  %779 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %780 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %779, i32 0, i32 11
  store i8* %778, i8** %780, align 8
  br label %789

781:                                              ; preds = %754
  %782 = load i32, i32* @ifnet_link_event, align 4
  %783 = load i32, i32* @hn_ifnet_lnkevent, align 4
  %784 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %785 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %786 = call i8* @EVENTHANDLER_REGISTER(i32 %782, i32 %783, %struct.hn_softc* %784, i32 %785)
  %787 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %788 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %787, i32 0, i32 10
  store i8* %786, i8** %788, align 8
  br label %789

789:                                              ; preds = %781, %766
  %790 = load i32, i32* @ether_ifattach_event, align 4
  %791 = load i32, i32* @hn_ifnet_attevent, align 4
  %792 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %793 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %794 = call i8* @EVENTHANDLER_REGISTER(i32 %790, i32 %791, %struct.hn_softc* %792, i32 %793)
  %795 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %796 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %795, i32 0, i32 9
  store i8* %794, i8** %796, align 8
  %797 = load i32, i32* @ifnet_departure_event, align 4
  %798 = load i32, i32* @hn_ifnet_detevent, align 4
  %799 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %800 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %801 = call i8* @EVENTHANDLER_REGISTER(i32 %797, i32 %798, %struct.hn_softc* %799, i32 %800)
  %802 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %803 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %802, i32 0, i32 8
  store i8* %801, i8** %803, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %818

804:                                              ; preds = %273, %267, %259, %244, %231, %224
  %805 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %806 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %805, i32 0, i32 7
  %807 = load i32, i32* %806, align 4
  %808 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %809 = and i32 %807, %808
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %814

811:                                              ; preds = %804
  %812 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %813 = call i32 @hn_synth_detach(%struct.hn_softc* %812)
  br label %814

814:                                              ; preds = %811, %804
  %815 = load i32, i32* %3, align 4
  %816 = call i32 @hn_detach(i32 %815)
  %817 = load i32, i32* %10, align 4
  store i32 %817, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %818

818:                                              ; preds = %814, %789
  %819 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %819)
  %820 = load i32, i32* %2, align 4
  ret i32 %820
}

declare dso_local %struct.hn_softc* @device_get_softc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vmbus_get_channel(i32) #1

declare dso_local i32 @HN_LOCK_INIT(%struct.hn_softc*) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i8** @malloc(i32, i32, i32) #1

declare dso_local i8* @taskqueue_create(i8*, i32, i32, i8**) #1

declare dso_local i32 @taskqueue_start_threads(i8**, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.hn_softc*) #1

declare dso_local i32 @TIMEOUT_TASK_INIT(i8*, i32*, i32, i32, %struct.hn_softc*) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ifmedia_init(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @hn_create_tx_data(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_create_rx_data(%struct.hn_softc*, i32) #1

declare dso_local i32* @vmbus_xact_ctx_create(i32, i32, i32, i32) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @vmbus_chan_set_orphan(i32, i32*) #1

declare dso_local i64 @vmbus_chan_is_revoked(i32) #1

declare dso_local i32 @hn_synth_attach(%struct.hn_softc*, i64) #1

declare dso_local i32 @hn_rndis_get_eaddr(%struct.hn_softc*, i32*) #1

declare dso_local i32 @hn_rndis_get_mtu(%struct.hn_softc*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @hn_fixup_tx_data(%struct.hn_softc*) #1

declare dso_local i32 @hn_fixup_rx_data(%struct.hn_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.hn_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @ifmedia_add(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @IF_Gbps(i32) #1

declare dso_local i32 @HN_LOCK(%struct.hn_softc*) #1

declare dso_local i32 @hn_set_tso_maxsize(%struct.hn_softc*, i32, i64) #1

declare dso_local i32 @HN_UNLOCK(%struct.hn_softc*) #1

declare dso_local i32 @ether_ifattach(%struct.ifnet*, i32*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*, i64, i64) #1

declare dso_local i32 @hn_update_link_status(%struct.hn_softc*) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.hn_softc*, i32) #1

declare dso_local i32 @hn_synth_detach(%struct.hn_softc*) #1

declare dso_local i32 @hn_detach(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
