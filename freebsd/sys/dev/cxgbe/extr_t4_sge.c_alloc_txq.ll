; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32, i32, i32, i32, %struct.port_info* }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.sge_txq = type { i32, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.sge_eq }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sge_eq = type { i32, i64, i64, %struct.vi_info, %struct.vi_info, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@eth_tx = common dso_local global i32 0, align 4
@can_resume_eth_tx = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate mp_ring: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"eq_base mismatch\00", align 1
@IS_VF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"PF with non-zero eq_base\00", align 1
@tx_reclaim = common dso_local global i32 0, align 4
@TX_SGL_SEGS = common dso_local global i32 0, align 4
@CPL_TX_PKT_XT = common dso_local global i32 0, align 4
@CPL_TX_PKT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"tx queue\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ba\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"bus address of descriptor ring\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dmalen\00", align 1
@EQ_ESIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"desc ring size in bytes\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"abs_id\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"absolute id of the queue\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"cntxt_id\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"SGE context id of the queue\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"cidx\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@sysctl_uint16 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"consumer index\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pidx\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"producer index\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sidx\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"status page index\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_tc = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"traffic class (-1 means none)\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"txcsum\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"# of times hardware assisted with checksum\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"vlan_insertion\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"# of times hardware inserted 802.1Q tag\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"tso_wrs\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"# of TSO work requests\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"imm_wrs\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"# of work requests with immediate data\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"sgl_wrs\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"# of work requests with direct SGL\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"txpkt_wrs\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"# of txpkt work requests (one pkt/WR)\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"txpkts0_wrs\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"# of txpkts (type 0) work requests\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"txpkts1_wrs\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"# of txpkts (type 1) work requests\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"txpkts0_pkts\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"# of frames tx'd using type0 txpkts work requests\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"txpkts1_pkts\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"# of frames tx'd using type1 txpkts work requests\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"raw_wrs\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"# of raw work requests (non-packets)\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"r_enqueues\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"# of enqueues to the mp_ring for this queue\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"r_drops\00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"# of drops in the mp_ring for this queue\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"r_starts\00", align 1
@.str.49 = private unnamed_addr constant [58 x i8] c"# of normal consumer starts in the mp_ring for this queue\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"r_stalls\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"# of consumer stalls in the mp_ring for this queue\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"r_restarts\00", align 1
@.str.53 = private unnamed_addr constant [53 x i8] c"# of consumer restarts in the mp_ring for this queue\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"r_abdications\00", align 1
@.str.55 = private unnamed_addr constant [56 x i8] c"# of consumer abdications in the mp_ring for this queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vi_info*, %struct.sge_txq*, i32, %struct.sysctl_oid*)* @alloc_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_txq(%struct.vi_info* %0, %struct.sge_txq* %1, i32 %2, %struct.sysctl_oid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vi_info*, align 8
  %7 = alloca %struct.sge_txq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.sge_eq*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.vi_info* %0, %struct.vi_info** %6, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sysctl_oid* %3, %struct.sysctl_oid** %9, align 8
  %16 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %17 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %16, i32 0, i32 4
  %18 = load %struct.port_info*, %struct.port_info** %17, align 8
  store %struct.port_info* %18, %struct.port_info** %11, align 8
  %19 = load %struct.port_info*, %struct.port_info** %11, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 1
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  store %struct.adapter* %21, %struct.adapter** %12, align 8
  %22 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %23 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %22, i32 0, i32 18
  store %struct.sge_eq* %23, %struct.sge_eq** %13, align 8
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %25 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  store %struct.sysctl_oid_list* %25, %struct.sysctl_oid_list** %15, align 8
  %26 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %27 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %26, i32 0, i32 1
  %28 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %29 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %32 = load i32, i32* @eth_tx, align 4
  %33 = load i32, i32* @can_resume_eth_tx, align 4
  %34 = load i32, i32* @M_CXGBE, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32 @mp_ring_alloc(%struct.TYPE_9__** %27, i32 %30, %struct.sge_txq* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.adapter*, %struct.adapter** %12, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %424

46:                                               ; preds = %4
  %47 = load %struct.adapter*, %struct.adapter** %12, align 8
  %48 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %49 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %50 = call i32 @alloc_eq(%struct.adapter* %47, %struct.vi_info* %48, %struct.sge_eq* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %55 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @mp_ring_free(%struct.TYPE_9__* %56)
  %58 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %59 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %58, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %59, align 8
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %424

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %66 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %69 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = load %struct.adapter*, %struct.adapter** %12, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %90

75:                                               ; preds = %61
  %76 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %77 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.adapter*, %struct.adapter** %12, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %85 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @KASSERT(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %75, %64
  %91 = load %struct.adapter*, %struct.adapter** %12, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = load %struct.adapter*, %struct.adapter** %12, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IS_VF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %96, %90
  %104 = phi i1 [ true, %90 ], [ %102, %96 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @KASSERT(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %108 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %107, i32 0, i32 17
  %109 = load i32, i32* @tx_reclaim, align 4
  %110 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %111 = call i32 @TASK_INIT(i32* %108, i32 0, i32 %109, %struct.sge_eq* %110)
  %112 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %113 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %116 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %115, i32 0, i32 16
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @TX_SGL_SEGS, align 4
  %118 = load i32, i32* @M_WAITOK, align 4
  %119 = call i32 @sglist_alloc(i32 %117, i32 %118)
  %120 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %121 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %120, i32 0, i32 15
  store i32 %119, i32* %121, align 8
  %122 = load %struct.adapter*, %struct.adapter** %12, align 8
  %123 = getelementptr inbounds %struct.adapter, %struct.adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IS_VF, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %103
  %129 = load i32, i32* @CPL_TX_PKT_XT, align 4
  %130 = call i32 @V_TXPKT_OPCODE(i32 %129)
  %131 = load %struct.port_info*, %struct.port_info** %11, align 8
  %132 = getelementptr inbounds %struct.port_info, %struct.port_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @V_TXPKT_INTF(i32 %133)
  %135 = or i32 %130, %134
  %136 = call i8* @htobe32(i32 %135)
  %137 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %138 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %137, i32 0, i32 14
  store i8* %136, i8** %138, align 8
  br label %165

139:                                              ; preds = %103
  %140 = load i32, i32* @CPL_TX_PKT, align 4
  %141 = call i32 @V_TXPKT_OPCODE(i32 %140)
  %142 = load %struct.port_info*, %struct.port_info** %11, align 8
  %143 = getelementptr inbounds %struct.port_info, %struct.port_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @V_TXPKT_INTF(i32 %144)
  %146 = or i32 %141, %145
  %147 = load %struct.adapter*, %struct.adapter** %12, align 8
  %148 = getelementptr inbounds %struct.adapter, %struct.adapter* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @V_TXPKT_PF(i32 %149)
  %151 = or i32 %146, %150
  %152 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %153 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @V_TXPKT_VF(i32 %154)
  %156 = or i32 %151, %155
  %157 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %158 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @V_TXPKT_VF_VLD(i32 %159)
  %161 = or i32 %156, %160
  %162 = call i8* @htobe32(i32 %161)
  %163 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %164 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %163, i32 0, i32 14
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %139, %128
  %166 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %167 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %166, i32 0, i32 0
  store i32 -1, i32* %167, align 8
  %168 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %169 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @M_CXGBE, align 4
  %175 = load i32, i32* @M_ZERO, align 4
  %176 = load i32, i32* @M_WAITOK, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @malloc(i32 %173, i32 %174, i32 %177)
  %179 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %180 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %179, i32 0, i32 13
  store i32 %178, i32* %180, align 4
  %181 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @snprintf(i8* %181, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  %184 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %185 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %184, i32 0, i32 0
  %186 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %187 = load i32, i32* @OID_AUTO, align 4
  %188 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %189 = load i32, i32* @CTLFLAG_RD, align 4
  %190 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %185, %struct.sysctl_oid_list* %186, i32 %187, i8* %188, i32 %189, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %190, %struct.sysctl_oid** %9, align 8
  %191 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %192 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %191)
  store %struct.sysctl_oid_list* %192, %struct.sysctl_oid_list** %15, align 8
  %193 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %194 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %193, i32 0, i32 0
  %195 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %196 = load i32, i32* @OID_AUTO, align 4
  %197 = load i32, i32* @CTLFLAG_RD, align 4
  %198 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %199 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %198, i32 0, i32 5
  %200 = call i32 @SYSCTL_ADD_UAUTO(i32* %194, %struct.sysctl_oid_list* %195, i32 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %197, i32* %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %201 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %202 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %201, i32 0, i32 0
  %203 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %204 = load i32, i32* @OID_AUTO, align 4
  %205 = load i32, i32* @CTLFLAG_RD, align 4
  %206 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %207 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @EQ_ESIZE, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load %struct.adapter*, %struct.adapter** %12, align 8
  %212 = getelementptr inbounds %struct.adapter, %struct.adapter* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %210, %215
  %217 = call i32 @SYSCTL_ADD_INT(i32* %202, %struct.sysctl_oid_list* %203, i32 %204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %205, i32* null, i32 %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %218 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %219 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %218, i32 0, i32 0
  %220 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %221 = load i32, i32* @OID_AUTO, align 4
  %222 = load i32, i32* @CTLFLAG_RD, align 4
  %223 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %224 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %223, i32 0, i32 1
  %225 = call i32 @SYSCTL_ADD_UINT(i32* %219, %struct.sysctl_oid_list* %220, i32 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %222, i64* %224, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %226 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %227 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %226, i32 0, i32 0
  %228 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %229 = load i32, i32* @OID_AUTO, align 4
  %230 = load i32, i32* @CTLFLAG_RD, align 4
  %231 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %232 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %231, i32 0, i32 2
  %233 = call i32 @SYSCTL_ADD_UINT(i32* %227, %struct.sysctl_oid_list* %228, i32 %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %230, i64* %232, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %234 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %235 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %234, i32 0, i32 0
  %236 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %237 = load i32, i32* @OID_AUTO, align 4
  %238 = load i32, i32* @CTLTYPE_INT, align 4
  %239 = load i32, i32* @CTLFLAG_RD, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %242 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %241, i32 0, i32 4
  %243 = load i32, i32* @sysctl_uint16, align 4
  %244 = call i32 @SYSCTL_ADD_PROC(i32* %235, %struct.sysctl_oid_list* %236, i32 %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %240, %struct.vi_info* %242, i32 0, i32 %243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %245 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %246 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %245, i32 0, i32 0
  %247 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %248 = load i32, i32* @OID_AUTO, align 4
  %249 = load i32, i32* @CTLTYPE_INT, align 4
  %250 = load i32, i32* @CTLFLAG_RD, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %253 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %252, i32 0, i32 3
  %254 = load i32, i32* @sysctl_uint16, align 4
  %255 = call i32 @SYSCTL_ADD_PROC(i32* %246, %struct.sysctl_oid_list* %247, i32 %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %251, %struct.vi_info* %253, i32 0, i32 %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %256 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %257 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %256, i32 0, i32 0
  %258 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %259 = load i32, i32* @OID_AUTO, align 4
  %260 = load i32, i32* @CTLFLAG_RD, align 4
  %261 = load %struct.sge_eq*, %struct.sge_eq** %13, align 8
  %262 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @SYSCTL_ADD_INT(i32* %257, %struct.sysctl_oid_list* %258, i32 %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %260, i32* null, i32 %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %265 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %266 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %265, i32 0, i32 0
  %267 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %268 = load i32, i32* @OID_AUTO, align 4
  %269 = load i32, i32* @CTLTYPE_INT, align 4
  %270 = load i32, i32* @CTLFLAG_RW, align 4
  %271 = or i32 %269, %270
  %272 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* @sysctl_tc, align 4
  %275 = call i32 @SYSCTL_ADD_PROC(i32* %266, %struct.sysctl_oid_list* %267, i32 %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 %271, %struct.vi_info* %272, i32 %273, i32 %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %276 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %277 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %276, i32 0, i32 0
  %278 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %279 = load i32, i32* @OID_AUTO, align 4
  %280 = load i32, i32* @CTLFLAG_RD, align 4
  %281 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %282 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %281, i32 0, i32 12
  %283 = call i32 @SYSCTL_ADD_UQUAD(i32* %277, %struct.sysctl_oid_list* %278, i32 %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %280, i32* %282, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0))
  %284 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %285 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %284, i32 0, i32 0
  %286 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %287 = load i32, i32* @OID_AUTO, align 4
  %288 = load i32, i32* @CTLFLAG_RD, align 4
  %289 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %290 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %289, i32 0, i32 11
  %291 = call i32 @SYSCTL_ADD_UQUAD(i32* %285, %struct.sysctl_oid_list* %286, i32 %287, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %288, i32* %290, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0))
  %292 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %293 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %292, i32 0, i32 0
  %294 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %295 = load i32, i32* @OID_AUTO, align 4
  %296 = load i32, i32* @CTLFLAG_RD, align 4
  %297 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %298 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %297, i32 0, i32 10
  %299 = call i32 @SYSCTL_ADD_UQUAD(i32* %293, %struct.sysctl_oid_list* %294, i32 %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %296, i32* %298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %300 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %301 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %300, i32 0, i32 0
  %302 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %303 = load i32, i32* @OID_AUTO, align 4
  %304 = load i32, i32* @CTLFLAG_RD, align 4
  %305 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %306 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %305, i32 0, i32 9
  %307 = call i32 @SYSCTL_ADD_UQUAD(i32* %301, %struct.sysctl_oid_list* %302, i32 %303, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %304, i32* %306, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  %308 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %309 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %308, i32 0, i32 0
  %310 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %311 = load i32, i32* @OID_AUTO, align 4
  %312 = load i32, i32* @CTLFLAG_RD, align 4
  %313 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %314 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %313, i32 0, i32 8
  %315 = call i32 @SYSCTL_ADD_UQUAD(i32* %309, %struct.sysctl_oid_list* %310, i32 %311, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i32 %312, i32* %314, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  %316 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %317 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %316, i32 0, i32 0
  %318 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %319 = load i32, i32* @OID_AUTO, align 4
  %320 = load i32, i32* @CTLFLAG_RD, align 4
  %321 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %322 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %321, i32 0, i32 7
  %323 = call i32 @SYSCTL_ADD_UQUAD(i32* %317, %struct.sysctl_oid_list* %318, i32 %319, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32 %320, i32* %322, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0))
  %324 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %325 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %324, i32 0, i32 0
  %326 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %327 = load i32, i32* @OID_AUTO, align 4
  %328 = load i32, i32* @CTLFLAG_RD, align 4
  %329 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %330 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %329, i32 0, i32 6
  %331 = call i32 @SYSCTL_ADD_UQUAD(i32* %325, %struct.sysctl_oid_list* %326, i32 %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %328, i32* %330, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0))
  %332 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %333 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %332, i32 0, i32 0
  %334 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %335 = load i32, i32* @OID_AUTO, align 4
  %336 = load i32, i32* @CTLFLAG_RD, align 4
  %337 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %338 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %337, i32 0, i32 5
  %339 = call i32 @SYSCTL_ADD_UQUAD(i32* %333, %struct.sysctl_oid_list* %334, i32 %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 %336, i32* %338, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i64 0, i64 0))
  %340 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %341 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %340, i32 0, i32 0
  %342 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %343 = load i32, i32* @OID_AUTO, align 4
  %344 = load i32, i32* @CTLFLAG_RD, align 4
  %345 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %346 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %345, i32 0, i32 4
  %347 = call i32 @SYSCTL_ADD_UQUAD(i32* %341, %struct.sysctl_oid_list* %342, i32 %343, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 %344, i32* %346, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  %348 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %349 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %348, i32 0, i32 0
  %350 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %351 = load i32, i32* @OID_AUTO, align 4
  %352 = load i32, i32* @CTLFLAG_RD, align 4
  %353 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %354 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %353, i32 0, i32 3
  %355 = call i32 @SYSCTL_ADD_UQUAD(i32* %349, %struct.sysctl_oid_list* %350, i32 %351, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i32 %352, i32* %354, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i64 0, i64 0))
  %356 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %357 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %356, i32 0, i32 0
  %358 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %359 = load i32, i32* @OID_AUTO, align 4
  %360 = load i32, i32* @CTLFLAG_RD, align 4
  %361 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %362 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %361, i32 0, i32 2
  %363 = call i32 @SYSCTL_ADD_UQUAD(i32* %357, %struct.sysctl_oid_list* %358, i32 %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i32 %360, i32* %362, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0))
  %364 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %365 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %364, i32 0, i32 0
  %366 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %367 = load i32, i32* @OID_AUTO, align 4
  %368 = load i32, i32* @CTLFLAG_RD, align 4
  %369 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %370 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %369, i32 0, i32 1
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 5
  %373 = call i32 @SYSCTL_ADD_COUNTER_U64(i32* %365, %struct.sysctl_oid_list* %366, i32 %367, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i32 %368, i32* %372, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i64 0, i64 0))
  %374 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %375 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %374, i32 0, i32 0
  %376 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %377 = load i32, i32* @OID_AUTO, align 4
  %378 = load i32, i32* @CTLFLAG_RD, align 4
  %379 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %380 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %379, i32 0, i32 1
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 4
  %383 = call i32 @SYSCTL_ADD_COUNTER_U64(i32* %375, %struct.sysctl_oid_list* %376, i32 %377, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i32 %378, i32* %382, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0))
  %384 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %385 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %384, i32 0, i32 0
  %386 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %387 = load i32, i32* @OID_AUTO, align 4
  %388 = load i32, i32* @CTLFLAG_RD, align 4
  %389 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %390 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %389, i32 0, i32 1
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 3
  %393 = call i32 @SYSCTL_ADD_COUNTER_U64(i32* %385, %struct.sysctl_oid_list* %386, i32 %387, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i32 %388, i32* %392, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.49, i64 0, i64 0))
  %394 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %395 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %394, i32 0, i32 0
  %396 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %397 = load i32, i32* @OID_AUTO, align 4
  %398 = load i32, i32* @CTLFLAG_RD, align 4
  %399 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %400 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %399, i32 0, i32 1
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 2
  %403 = call i32 @SYSCTL_ADD_COUNTER_U64(i32* %395, %struct.sysctl_oid_list* %396, i32 %397, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 %398, i32* %402, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0))
  %404 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %405 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %404, i32 0, i32 0
  %406 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %407 = load i32, i32* @OID_AUTO, align 4
  %408 = load i32, i32* @CTLFLAG_RD, align 4
  %409 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %410 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %409, i32 0, i32 1
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 1
  %413 = call i32 @SYSCTL_ADD_COUNTER_U64(i32* %405, %struct.sysctl_oid_list* %406, i32 %407, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i32 %408, i32* %412, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.53, i64 0, i64 0))
  %414 = load %struct.vi_info*, %struct.vi_info** %6, align 8
  %415 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %414, i32 0, i32 0
  %416 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %15, align 8
  %417 = load i32, i32* @OID_AUTO, align 4
  %418 = load i32, i32* @CTLFLAG_RD, align 4
  %419 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %420 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %419, i32 0, i32 1
  %421 = load %struct.TYPE_9__*, %struct.TYPE_9__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = call i32 @SYSCTL_ADD_COUNTER_U64(i32* %415, %struct.sysctl_oid_list* %416, i32 %417, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i64 0, i64 0), i32 %418, i32* %422, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %424

424:                                              ; preds = %165, %53, %39
  %425 = load i32, i32* %5, align 4
  ret i32 %425
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @mp_ring_alloc(%struct.TYPE_9__**, i32, %struct.sge_txq*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @alloc_eq(%struct.adapter*, %struct.vi_info*, %struct.sge_eq*) #1

declare dso_local i32 @mp_ring_free(%struct.TYPE_9__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.sge_eq*) #1

declare dso_local i32 @sglist_alloc(i32, i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_TXPKT_OPCODE(i32) #1

declare dso_local i32 @V_TXPKT_INTF(i32) #1

declare dso_local i32 @V_TXPKT_PF(i32) #1

declare dso_local i32 @V_TXPKT_VF(i32) #1

declare dso_local i32 @V_TXPKT_VF_VLD(i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UAUTO(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.vi_info*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_COUNTER_U64(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
