; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_alloc_qset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_sge_alloc_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__, i32*, i32, i32*, i32* }
%struct.TYPE_25__ = type { i32, %struct.sge_qset* }
%struct.sge_qset = type { i64, %struct.TYPE_19__, %struct.TYPE_20__*, %struct.TYPE_24__*, %struct.TYPE_23__, i32, %struct.TYPE_26__*, %struct.port_info*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__, %struct.TYPE_22__, i32*, i32* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.qset_params = type { i64, i32, i64, i64, i64, i64* }
%struct.port_info = type { %struct.TYPE_21__* }

@MTX_DEF = common dso_local global i32 0, align 4
@cxgb_txq_buf_ring_size = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@TXQ_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate mbuf ring\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to allocate ifq\0A\00", align 1
@mp_ncpus = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"error %d from alloc ring fl0\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"error %d from alloc ring fl1\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"error %d from alloc ring rspq\0A\00", align 1
@RSPQ_NAME_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"t3 rspq lock %d:%d\00", align 1
@TXQ_CTRL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"error %d from alloc ring tx %i\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@restart_ctrlq = common dso_local global i32 0, align 4
@sge_txq_reclaim_handler = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i64 0, align 8
@TX_MAX_SEGS = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@zone_pack = common dso_local global i32 0, align 4
@EXT_PACKET = common dso_local global i32 0, align 4
@MJUM16BYTES = common dso_local global i64 0, align 8
@zone_jumbo16 = common dso_local global i32 0, align 4
@EXT_JUMBO16 = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i64 0, align 8
@zone_jumbo9 = common dso_local global i32 0, align 4
@EXT_JUMBO9 = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i64 0, align 8
@zone_jumbop = common dso_local global i32 0, align 4
@EXT_JUMBOP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"can't deal with jumbo_buf_size %d.\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"error %d from t3_sge_init_rspcntxt\0A\00", align 1
@SGE_RXQ_PER_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"error %d from t3_sge_init_flcntxt for index i=%d\0A\00", align 1
@USE_GTS = common dso_local global i32 0, align 4
@SGE_CNTXT_ETH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"error %d from t3_sge_init_ecntxt\0A\00", align 1
@SGE_CNTXT_OFLD = common dso_local global i32 0, align 4
@SGE_CNTXT_CTRL = common dso_local global i32 0, align 4
@A_SG_GTS = common dso_local global i32 0, align 4
@restart_offloadq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_alloc_qset(%struct.TYPE_26__* %0, i64 %1, i32 %2, i32 %3, %struct.qset_params* %4, i32 %5, %struct.port_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qset_params*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.port_info*, align 8
  %16 = alloca %struct.sge_qset*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.qset_params* %4, %struct.qset_params** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.port_info* %6, %struct.port_info** %15, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 1
  %23 = load %struct.sge_qset*, %struct.sge_qset** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %23, i64 %24
  store %struct.sge_qset* %25, %struct.sge_qset** %16, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %27 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %26, i32 0, i32 5
  %28 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %29 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @MTX_INIT(i32* %27, i32 %30, i32* null, i32 %31)
  %33 = load %struct.port_info*, %struct.port_info** %15, align 8
  %34 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %35 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %34, i32 0, i32 7
  store %struct.port_info* %33, %struct.port_info** %35, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %37 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %38 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %37, i32 0, i32 6
  store %struct.TYPE_26__* %36, %struct.TYPE_26__** %38, align 8
  %39 = load i32, i32* @cxgb_txq_buf_ring_size, align 4
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %43 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %42, i32 0, i32 5
  %44 = call i32* @buf_ring_alloc(i32 %39, i32 %40, i32 %41, i32* %43)
  %45 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %46 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %45, i32 0, i32 3
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = load i64, i64* @TXQ_ETH, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 17
  store i32* %44, i32** %50, align 8
  %51 = icmp eq i32* %44, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %7
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %821

57:                                               ; preds = %7
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = load i32, i32* @M_NOWAIT, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = call i32* @malloc(i32 4, i32 %58, i32 %61)
  %63 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %64 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %63, i32 0, i32 3
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %64, align 8
  %66 = load i64, i64* @TXQ_ETH, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 16
  store i32* %62, i32** %68, align 8
  %69 = icmp eq i32* %62, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %821

75:                                               ; preds = %57
  %76 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %77 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %76, i32 0, i32 3
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = load i64, i64* @TXQ_ETH, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 16
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.port_info*, %struct.port_info** %15, align 8
  %84 = getelementptr inbounds %struct.port_info, %struct.port_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = call i32 @ifq_init(i32* %82, %struct.TYPE_21__* %85)
  %87 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %88 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %87, i32 0, i32 3
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = load i64, i64* @TXQ_ETH, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 15
  %93 = call i32 @callout_init(%struct.TYPE_22__* %92, i32 1)
  %94 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %95 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %94, i32 0, i32 3
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = load i64, i64* @TXQ_ETH, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 14
  %100 = call i32 @callout_init(%struct.TYPE_22__* %99, i32 1)
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @mp_ncpus, align 8
  %103 = urem i64 %101, %102
  %104 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %105 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %104, i32 0, i32 3
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = load i64, i64* @TXQ_ETH, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  store i64 %103, i64* %110, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* @mp_ncpus, align 8
  %113 = urem i64 %111, %112
  %114 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %115 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %114, i32 0, i32 3
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = load i64, i64* @TXQ_ETH, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 14
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  store i64 %113, i64* %120, align 8
  %121 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @init_qset_cntxt(%struct.sge_qset* %121, i64 %122)
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %126 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %128 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %129 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %132 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %131, i32 0, i32 2
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %137 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %136, i32 0, i32 2
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 11
  %141 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %142 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %141, i32 0, i32 2
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 10
  %146 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %147 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %146, i32 0, i32 2
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 9
  %151 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %152 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %151, i32 0, i32 2
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %160 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %159, i32 0, i32 2
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 7
  %164 = call i32 @alloc_ring(%struct.TYPE_26__* %127, i64 %130, i32 4, i64 4, i32* %135, i32* %140, i32* %145, i32* %150, i32* %155, i32* %158, i32* %163)
  store i32 %164, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %75
  %167 = load i32, i32* %18, align 4
  %168 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  br label %821

169:                                              ; preds = %75
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %171 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %172 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %175 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %174, i32 0, i32 2
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 3
  %179 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %180 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %179, i32 0, i32 2
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 11
  %184 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %185 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %184, i32 0, i32 2
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 10
  %189 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %190 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %189, i32 0, i32 2
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i64 1
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 9
  %194 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %195 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %194, i32 0, i32 2
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %203 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %202, i32 0, i32 2
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 7
  %207 = call i32 @alloc_ring(%struct.TYPE_26__* %170, i64 %173, i32 4, i64 4, i32* %178, i32* %183, i32* %188, i32* %193, i32* %198, i32* %201, i32* %206)
  store i32 %207, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %169
  %210 = load i32, i32* %18, align 4
  %211 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %210)
  br label %821

212:                                              ; preds = %169
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %214 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %215 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %218 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 4
  %220 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %221 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 10
  %223 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %224 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 9
  %226 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %227 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 8
  %229 = call i32 @alloc_ring(%struct.TYPE_26__* %213, i64 %216, i32 4, i64 0, i32* %219, i32* %222, i32* null, i32* %225, i32* %228, i32* null, i32* null)
  store i32 %229, i32* %18, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %212
  %232 = load i32, i32* %18, align 4
  %233 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %232)
  br label %821

234:                                              ; preds = %212
  %235 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %236 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @RSPQ_NAME_LEN, align 4
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @device_get_unit(i32 %242)
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @snprintf(i32 %238, i32 %239, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %243, i32 %244)
  %246 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %247 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 7
  %249 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %250 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @MTX_DEF, align 4
  %254 = call i32 @MTX_INIT(i32* %248, i32 %252, i32* null, i32 %253)
  store i32 0, i32* %17, align 4
  br label %255

255:                                              ; preds = %356, %234
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %359

259:                                              ; preds = %255
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* @TXQ_CTRL, align 4
  %262 = icmp eq i32 %260, %261
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i64 0, i64 4
  store i64 %264, i64* %19, align 8
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %266 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %267 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %266, i32 0, i32 5
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %19, align 8
  %274 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %275 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %274, i32 0, i32 3
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %275, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 4
  %281 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %282 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %281, i32 0, i32 3
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %282, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 13
  %288 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %289 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %288, i32 0, i32 3
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %289, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 12
  %295 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %296 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %295, i32 0, i32 3
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %296, align 8
  %298 = load i32, i32* %17, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 11
  %302 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %303 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %302, i32 0, i32 3
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %303, align 8
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 10
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %313 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %312, i32 0, i32 3
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %313, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 9
  %319 = call i32 @alloc_ring(%struct.TYPE_26__* %265, i64 %272, i32 4, i64 %273, i32* %280, i32* %287, i32* %294, i32* %301, i32* %308, i32* %311, i32* %318)
  store i32 %319, i32* %18, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %259
  %322 = load i32, i32* %18, align 4
  %323 = load i32, i32* %17, align 4
  %324 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %322, i32 %323)
  br label %821

325:                                              ; preds = %259
  %326 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %327 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %326, i32 0, i32 3
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %327, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 8
  %333 = load i32, i32* @INT_MAX, align 4
  %334 = call i32 @mbufq_init(i32* %332, i32 %333)
  %335 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %336 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %335, i32 0, i32 3
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %336, align 8
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  store i32 1, i32* %341, align 8
  %342 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %343 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %342, i32 0, i32 5
  %344 = load i64*, i64** %343, align 8
  %345 = load i32, i32* %17, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %350 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %349, i32 0, i32 3
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %350, align 8
  %352 = load i32, i32* %17, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 3
  store i64 %348, i64* %355, align 8
  br label %356

356:                                              ; preds = %325
  %357 = load i32, i32* %17, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %17, align 4
  br label %255

359:                                              ; preds = %255
  %360 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %361 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %360, i32 0, i32 3
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %361, align 8
  %363 = load i32, i32* @TXQ_CTRL, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 7
  %367 = load i32, i32* @restart_ctrlq, align 4
  %368 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %369 = call i32 @TASK_INIT(i32* %366, i32 0, i32 %367, %struct.sge_qset* %368)
  %370 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %371 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %370, i32 0, i32 3
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %371, align 8
  %373 = load i64, i64* @TXQ_ETH, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 6
  %376 = load i32, i32* @sge_txq_reclaim_handler, align 4
  %377 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %378 = call i32 @TASK_INIT(i32* %375, i32 0, i32 %376, %struct.sge_qset* %377)
  %379 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %380 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %379, i32 0, i32 3
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %380, align 8
  %382 = load i64, i64* @TXQ_OFLD, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 6
  %385 = load i32, i32* @sge_txq_reclaim_handler, align 4
  %386 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %387 = call i32 @TASK_INIT(i32* %384, i32 0, i32 %385, %struct.sge_qset* %386)
  %388 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %389 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %388, i32 0, i32 2
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i64 1
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %391, i32 0, i32 0
  store i32 1, i32* %392, align 8
  %393 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %394 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %393, i32 0, i32 2
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i64 0
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %396, i32 0, i32 0
  store i32 1, i32* %397, align 8
  %398 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %399 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %398, i32 0, i32 4
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %402 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %401, i32 0, i32 2
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 2
  store i64 %400, i64* %405, align 8
  %406 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %407 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %410 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %409, i32 0, i32 2
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i64 1
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 2
  store i64 %408, i64* %413, align 8
  %414 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %415 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 0
  store i32 1, i32* %416, align 8
  %417 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %418 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 5
  store i64 0, i64* %419, align 8
  %420 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %421 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %420, i32 0, i32 2
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %424 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %424, i32 0, i32 3
  store i64 %422, i64* %425, align 8
  %426 = load i32, i32* %11, align 4
  %427 = load i64, i64* @TX_MAX_SEGS, align 8
  %428 = add nsw i64 %427, 1
  %429 = call i64 @sgl_len(i64 %428)
  %430 = add nsw i64 %429, 3
  %431 = call i32 @flits_to_desc(i64 %430)
  %432 = mul nsw i32 %426, %431
  %433 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %434 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %433, i32 0, i32 3
  %435 = load %struct.TYPE_24__*, %struct.TYPE_24__** %434, align 8
  %436 = load i64, i64* @TXQ_ETH, align 8
  %437 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 1
  store i32 %432, i32* %438, align 4
  %439 = load i64, i64* @MCLBYTES, align 8
  %440 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %441 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %440, i32 0, i32 2
  %442 = load %struct.TYPE_20__*, %struct.TYPE_20__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %442, i64 0
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 1
  store i64 %439, i64* %444, align 8
  %445 = load i32, i32* @zone_pack, align 4
  %446 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %447 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %446, i32 0, i32 2
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i64 0
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %449, i32 0, i32 6
  store i32 %445, i32* %450, align 4
  %451 = load i32, i32* @EXT_PACKET, align 4
  %452 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %453 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %452, i32 0, i32 2
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i64 0
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %455, i32 0, i32 5
  store i32 %451, i32* %456, align 8
  %457 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %458 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @MJUM16BYTES, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %475

462:                                              ; preds = %359
  %463 = load i32, i32* @zone_jumbo16, align 4
  %464 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %465 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %464, i32 0, i32 2
  %466 = load %struct.TYPE_20__*, %struct.TYPE_20__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i64 1
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 6
  store i32 %463, i32* %468, align 4
  %469 = load i32, i32* @EXT_JUMBO16, align 4
  %470 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %471 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %470, i32 0, i32 2
  %472 = load %struct.TYPE_20__*, %struct.TYPE_20__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i64 1
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 5
  store i32 %469, i32* %474, align 8
  br label %522

475:                                              ; preds = %359
  %476 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %477 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @MJUM9BYTES, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %494

481:                                              ; preds = %475
  %482 = load i32, i32* @zone_jumbo9, align 4
  %483 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %484 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %483, i32 0, i32 2
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i64 1
  %487 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %486, i32 0, i32 6
  store i32 %482, i32* %487, align 4
  %488 = load i32, i32* @EXT_JUMBO9, align 4
  %489 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %490 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %489, i32 0, i32 2
  %491 = load %struct.TYPE_20__*, %struct.TYPE_20__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %491, i64 1
  %493 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %492, i32 0, i32 5
  store i32 %488, i32* %493, align 8
  br label %521

494:                                              ; preds = %475
  %495 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %496 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @MJUMPAGESIZE, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %513

500:                                              ; preds = %494
  %501 = load i32, i32* @zone_jumbop, align 4
  %502 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %503 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %502, i32 0, i32 2
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i64 1
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 6
  store i32 %501, i32* %506, align 4
  %507 = load i32, i32* @EXT_JUMBOP, align 4
  %508 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %509 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %508, i32 0, i32 2
  %510 = load %struct.TYPE_20__*, %struct.TYPE_20__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %510, i64 1
  %512 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %511, i32 0, i32 5
  store i32 %507, i32* %512, align 8
  br label %520

513:                                              ; preds = %494
  %514 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %515 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = inttoptr i64 %516 to i8*
  %518 = call i32 @KASSERT(i32 0, i8* %517)
  %519 = load i32, i32* @EDOOFUS, align 4
  store i32 %519, i32* %18, align 4
  br label %821

520:                                              ; preds = %500
  br label %521

521:                                              ; preds = %520, %481
  br label %522

522:                                              ; preds = %521, %462
  %523 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %524 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %527 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %526, i32 0, i32 2
  %528 = load %struct.TYPE_20__*, %struct.TYPE_20__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i64 1
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 1
  store i64 %525, i64* %530, align 8
  %531 = load %struct.port_info*, %struct.port_info** %15, align 8
  %532 = getelementptr inbounds %struct.port_info, %struct.port_info* %531, i32 0, i32 0
  %533 = load %struct.TYPE_21__*, %struct.TYPE_21__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @IFCAP_LRO, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  %539 = xor i1 %538, true
  %540 = xor i1 %539, true
  %541 = zext i1 %540 to i32
  %542 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %543 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %542, i32 0, i32 4
  %544 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %543, i32 0, i32 0
  store i32 %541, i32* %544, align 8
  %545 = load %struct.port_info*, %struct.port_info** %15, align 8
  %546 = getelementptr inbounds %struct.port_info, %struct.port_info* %545, i32 0, i32 0
  %547 = load %struct.TYPE_21__*, %struct.TYPE_21__** %546, align 8
  %548 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %549 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %548, i32 0, i32 4
  %550 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %550, i32 0, i32 0
  store %struct.TYPE_21__* %547, %struct.TYPE_21__** %551, align 8
  %552 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %553 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 0
  %555 = call i32 @mtx_lock_spin(i32* %554)
  %556 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %557 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %558 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* %12, align 4
  %562 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %563 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %563, i32 0, i32 4
  %565 = load i32, i32* %564, align 8
  %566 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %567 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %567, i32 0, i32 3
  %569 = load i64, i64* %568, align 8
  %570 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %571 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %570, i32 0, i32 2
  %572 = load %struct.TYPE_20__*, %struct.TYPE_20__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %572, i64 0
  %574 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %573, i32 0, i32 1
  %575 = load i64, i64* %574, align 8
  %576 = call i32 @t3_sge_init_rspcntxt(%struct.TYPE_26__* %556, i32 %560, i32 %561, i32 %565, i64 %569, i64 %575, i32 1, i32 0)
  %577 = sub nsw i32 0, %576
  store i32 %577, i32* %18, align 4
  %578 = load i32, i32* %18, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %583

580:                                              ; preds = %522
  %581 = load i32, i32* %18, align 4
  %582 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %581)
  br label %816

583:                                              ; preds = %522
  store i32 0, i32* %17, align 4
  br label %584

584:                                              ; preds = %634, %583
  %585 = load i32, i32* %17, align 4
  %586 = load i32, i32* @SGE_RXQ_PER_SET, align 4
  %587 = icmp slt i32 %585, %586
  br i1 %587, label %588, label %637

588:                                              ; preds = %584
  %589 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %590 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %591 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %590, i32 0, i32 2
  %592 = load %struct.TYPE_20__*, %struct.TYPE_20__** %591, align 8
  %593 = load i32, i32* %17, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %595, i32 0, i32 4
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %599 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %598, i32 0, i32 2
  %600 = load %struct.TYPE_20__*, %struct.TYPE_20__** %599, align 8
  %601 = load i32, i32* %17, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %600, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %603, i32 0, i32 3
  %605 = load i32, i32* %604, align 8
  %606 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %607 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %606, i32 0, i32 2
  %608 = load %struct.TYPE_20__*, %struct.TYPE_20__** %607, align 8
  %609 = load i32, i32* %17, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %608, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %611, i32 0, i32 2
  %613 = load i64, i64* %612, align 8
  %614 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %615 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %614, i32 0, i32 2
  %616 = load %struct.TYPE_20__*, %struct.TYPE_20__** %615, align 8
  %617 = load i32, i32* %17, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %619, i32 0, i32 1
  %621 = load i64, i64* %620, align 8
  %622 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %623 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 8
  %625 = call i32 @t3_sge_init_flcntxt(%struct.TYPE_26__* %589, i32 %597, i32 0, i32 %605, i64 %613, i64 %621, i32 %624, i32 1, i32 0)
  %626 = sub nsw i32 0, %625
  store i32 %626, i32* %18, align 4
  %627 = load i32, i32* %18, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %588
  %630 = load i32, i32* %18, align 4
  %631 = load i32, i32* %17, align 4
  %632 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %630, i32 %631)
  br label %816

633:                                              ; preds = %588
  br label %634

634:                                              ; preds = %633
  %635 = load i32, i32* %17, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %17, align 4
  br label %584

637:                                              ; preds = %584
  %638 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %639 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %640 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %639, i32 0, i32 3
  %641 = load %struct.TYPE_24__*, %struct.TYPE_24__** %640, align 8
  %642 = load i64, i64* @TXQ_ETH, align 8
  %643 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %641, i64 %642
  %644 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %643, i32 0, i32 5
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* @USE_GTS, align 4
  %647 = load i32, i32* @SGE_CNTXT_ETH, align 4
  %648 = load i64, i64* %10, align 8
  %649 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %650 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %649, i32 0, i32 3
  %651 = load %struct.TYPE_24__*, %struct.TYPE_24__** %650, align 8
  %652 = load i64, i64* @TXQ_ETH, align 8
  %653 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %651, i64 %652
  %654 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %653, i32 0, i32 4
  %655 = load i32, i32* %654, align 8
  %656 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %657 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %656, i32 0, i32 3
  %658 = load %struct.TYPE_24__*, %struct.TYPE_24__** %657, align 8
  %659 = load i64, i64* @TXQ_ETH, align 8
  %660 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %658, i64 %659
  %661 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %660, i32 0, i32 3
  %662 = load i64, i64* %661, align 8
  %663 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %664 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %663, i32 0, i32 3
  %665 = load %struct.TYPE_24__*, %struct.TYPE_24__** %664, align 8
  %666 = load i64, i64* @TXQ_ETH, align 8
  %667 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %665, i64 %666
  %668 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = call i32 @t3_sge_init_ecntxt(%struct.TYPE_26__* %638, i32 %645, i32 %646, i32 %647, i64 %648, i32 %655, i64 %662, i32 %669, i32 1, i32 0)
  %671 = sub nsw i32 0, %670
  store i32 %671, i32* %18, align 4
  %672 = load i32, i32* %18, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %674, label %677

674:                                              ; preds = %637
  %675 = load i32, i32* %18, align 4
  %676 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %675)
  br label %816

677:                                              ; preds = %637
  %678 = load i32, i32* %14, align 4
  %679 = icmp sgt i32 %678, 1
  br i1 %679, label %680, label %714

680:                                              ; preds = %677
  %681 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %682 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %683 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %682, i32 0, i32 3
  %684 = load %struct.TYPE_24__*, %struct.TYPE_24__** %683, align 8
  %685 = load i64, i64* @TXQ_OFLD, align 8
  %686 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %684, i64 %685
  %687 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %686, i32 0, i32 5
  %688 = load i32, i32* %687, align 4
  %689 = load i32, i32* @USE_GTS, align 4
  %690 = load i32, i32* @SGE_CNTXT_OFLD, align 4
  %691 = load i64, i64* %10, align 8
  %692 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %693 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %692, i32 0, i32 3
  %694 = load %struct.TYPE_24__*, %struct.TYPE_24__** %693, align 8
  %695 = load i64, i64* @TXQ_OFLD, align 8
  %696 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %694, i64 %695
  %697 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %696, i32 0, i32 4
  %698 = load i32, i32* %697, align 8
  %699 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %700 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %699, i32 0, i32 3
  %701 = load %struct.TYPE_24__*, %struct.TYPE_24__** %700, align 8
  %702 = load i64, i64* @TXQ_OFLD, align 8
  %703 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %701, i64 %702
  %704 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %703, i32 0, i32 3
  %705 = load i64, i64* %704, align 8
  %706 = call i32 @t3_sge_init_ecntxt(%struct.TYPE_26__* %681, i32 %688, i32 %689, i32 %690, i64 %691, i32 %698, i64 %705, i32 0, i32 1, i32 0)
  %707 = sub nsw i32 0, %706
  store i32 %707, i32* %18, align 4
  %708 = load i32, i32* %18, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %713

710:                                              ; preds = %680
  %711 = load i32, i32* %18, align 4
  %712 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %711)
  br label %816

713:                                              ; preds = %680
  br label %714

714:                                              ; preds = %713, %677
  %715 = load i32, i32* %14, align 4
  %716 = icmp sgt i32 %715, 2
  br i1 %716, label %717, label %761

717:                                              ; preds = %714
  %718 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %719 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %720 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %719, i32 0, i32 3
  %721 = load %struct.TYPE_24__*, %struct.TYPE_24__** %720, align 8
  %722 = load i32, i32* @TXQ_CTRL, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %724, i32 0, i32 5
  %726 = load i32, i32* %725, align 4
  %727 = load i32, i32* @SGE_CNTXT_CTRL, align 4
  %728 = load i64, i64* %10, align 8
  %729 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %730 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %729, i32 0, i32 3
  %731 = load %struct.TYPE_24__*, %struct.TYPE_24__** %730, align 8
  %732 = load i32, i32* @TXQ_CTRL, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %731, i64 %733
  %735 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %734, i32 0, i32 4
  %736 = load i32, i32* %735, align 8
  %737 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %738 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %737, i32 0, i32 3
  %739 = load %struct.TYPE_24__*, %struct.TYPE_24__** %738, align 8
  %740 = load i32, i32* @TXQ_CTRL, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %739, i64 %741
  %743 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %742, i32 0, i32 3
  %744 = load i64, i64* %743, align 8
  %745 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %746 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %745, i32 0, i32 3
  %747 = load %struct.TYPE_24__*, %struct.TYPE_24__** %746, align 8
  %748 = load i32, i32* @TXQ_CTRL, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %747, i64 %749
  %751 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %750, i32 0, i32 2
  %752 = load i32, i32* %751, align 8
  %753 = call i32 @t3_sge_init_ecntxt(%struct.TYPE_26__* %718, i32 %726, i32 0, i32 %727, i64 %728, i32 %736, i64 %744, i32 %752, i32 1, i32 0)
  %754 = sub nsw i32 0, %753
  store i32 %754, i32* %18, align 4
  %755 = load i32, i32* %18, align 4
  %756 = icmp ne i32 %755, 0
  br i1 %756, label %757, label %760

757:                                              ; preds = %717
  %758 = load i32, i32* %18, align 4
  %759 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %758)
  br label %816

760:                                              ; preds = %717
  br label %761

761:                                              ; preds = %760, %714
  %762 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %763 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %762, i32 0, i32 0
  %764 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %763, i32 0, i32 0
  %765 = call i32 @mtx_unlock_spin(i32* %764)
  %766 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %767 = load %struct.qset_params*, %struct.qset_params** %13, align 8
  %768 = call i32 @t3_update_qset_coalesce(%struct.sge_qset* %766, %struct.qset_params* %767)
  %769 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %770 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %771 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %770, i32 0, i32 2
  %772 = load %struct.TYPE_20__*, %struct.TYPE_20__** %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %772, i64 0
  %774 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %775 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %774, i32 0, i32 2
  %776 = load %struct.TYPE_20__*, %struct.TYPE_20__** %775, align 8
  %777 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %776, i64 0
  %778 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %777, i32 0, i32 2
  %779 = load i64, i64* %778, align 8
  %780 = call i32 @refill_fl(%struct.TYPE_26__* %769, %struct.TYPE_20__* %773, i64 %779)
  %781 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %782 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %783 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %782, i32 0, i32 2
  %784 = load %struct.TYPE_20__*, %struct.TYPE_20__** %783, align 8
  %785 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %784, i64 1
  %786 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %787 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %786, i32 0, i32 2
  %788 = load %struct.TYPE_20__*, %struct.TYPE_20__** %787, align 8
  %789 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %788, i64 1
  %790 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %789, i32 0, i32 2
  %791 = load i64, i64* %790, align 8
  %792 = call i32 @refill_fl(%struct.TYPE_26__* %781, %struct.TYPE_20__* %785, i64 %791)
  %793 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %794 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %795 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %794, i32 0, i32 1
  %796 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %797 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %797, i32 0, i32 3
  %799 = load i64, i64* %798, align 8
  %800 = sub nsw i64 %799, 1
  %801 = call i32 @refill_rspq(%struct.TYPE_26__* %793, %struct.TYPE_19__* %795, i64 %800)
  %802 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %803 = load i32, i32* @A_SG_GTS, align 4
  %804 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %805 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %804, i32 0, i32 1
  %806 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %805, i32 0, i32 2
  %807 = load i32, i32* %806, align 8
  %808 = call i32 @V_RSPQ(i32 %807)
  %809 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %810 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %809, i32 0, i32 1
  %811 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %810, i32 0, i32 1
  %812 = load i32, i32* %811, align 4
  %813 = call i32 @V_NEWTIMER(i32 %812)
  %814 = or i32 %808, %813
  %815 = call i32 @t3_write_reg(%struct.TYPE_26__* %802, i32 %803, i32 %814)
  store i32 0, i32* %8, align 4
  br label %828

816:                                              ; preds = %757, %710, %674, %629, %580
  %817 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %818 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %817, i32 0, i32 0
  %819 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %818, i32 0, i32 0
  %820 = call i32 @mtx_unlock_spin(i32* %819)
  br label %821

821:                                              ; preds = %816, %513, %321, %231, %209, %166, %70, %52
  %822 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %823 = call i32 @TXQ_LOCK(%struct.sge_qset* %822)
  %824 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %825 = load %struct.sge_qset*, %struct.sge_qset** %16, align 8
  %826 = call i32 @t3_free_qset(%struct.TYPE_26__* %824, %struct.sge_qset* %825)
  %827 = load i32, i32* %18, align 4
  store i32 %827, i32* %8, align 4
  br label %828

828:                                              ; preds = %821, %761
  %829 = load i32, i32* %8, align 4
  ret i32 %829
}

declare dso_local i32 @MTX_INIT(i32*, i32, i32*, i32) #1

declare dso_local i32* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ifq_init(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @callout_init(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @init_qset_cntxt(%struct.sge_qset*, i64) #1

declare dso_local i32 @alloc_ring(%struct.TYPE_26__*, i64, i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.sge_qset*) #1

declare dso_local i32 @flits_to_desc(i64) #1

declare dso_local i64 @sgl_len(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @t3_sge_init_rspcntxt(%struct.TYPE_26__*, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @t3_sge_init_flcntxt(%struct.TYPE_26__*, i32, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @t3_sge_init_ecntxt(%struct.TYPE_26__*, i32, i32, i32, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @t3_update_qset_coalesce(%struct.sge_qset*, %struct.qset_params*) #1

declare dso_local i32 @refill_fl(%struct.TYPE_26__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @refill_rspq(%struct.TYPE_26__*, %struct.TYPE_19__*, i64) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @TXQ_LOCK(%struct.sge_qset*) #1

declare dso_local i32 @t3_free_qset(%struct.TYPE_26__*, %struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
