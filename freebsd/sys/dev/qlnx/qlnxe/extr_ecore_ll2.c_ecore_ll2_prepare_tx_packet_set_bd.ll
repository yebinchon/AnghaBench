; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_prepare_tx_packet_set_bd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_prepare_tx_packet_set_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_tx_bd = type { i32, i64, i32, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ecore_hwfn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_ll2_info = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.ecore_chain }
%struct.ecore_chain = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ecore_ll2_tx_packet = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.core_tx_bd* }
%struct.ecore_ll2_tx_pkt_info = type { i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, i32, i32 }

@OSAL_NULL = common dso_local global %struct.core_tx_bd* null, align 8
@ECORE_LL2_ROCE = common dso_local global i64 0, align 8
@CORE_ROCE = common dso_local global i32 0, align 4
@CORE_RROCE = common dso_local global i32 0, align 4
@CORE_TX_DEST_NW = common dso_local global i32 0, align 4
@CORE_TX_DEST_LB = common dso_local global i32 0, align 4
@CORE_TX_DEST_DROP = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@IWARP_LL2_IN_ORDER_TX_QUEUE = common dso_local global i64 0, align 8
@ECORE_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_FCOE = common dso_local global i64 0, align 8
@CORE_TX_BD_L4_HDR_OFFSET_W = common dso_local global i32 0, align 4
@CORE_TX_BD_TX_DST = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_START_BD = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_NBDS = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_ROCE_FLAV = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_IP_CSUM = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_L4_CSUM = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_IP_LEN = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_DISABLE_STAG_INSERTION = common dso_local global i32 0, align 4
@ECORE_MSG_TX_QUEUED = common dso_local global i32 0, align 4
@ECORE_MSG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [116 x i8] c"LL2 [q 0x%02x cid 0x%08x type 0x%08x] Tx Producer at [0x%04x] - set with a %04x bytes %02x BDs buffer at %08x:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ll2_info*, %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_pkt_info*)* @ecore_ll2_prepare_tx_packet_set_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ll2_prepare_tx_packet_set_bd(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1, %struct.ecore_ll2_tx_packet* %2, %struct.ecore_ll2_tx_pkt_info* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ll2_info*, align 8
  %7 = alloca %struct.ecore_ll2_tx_packet*, align 8
  %8 = alloca %struct.ecore_ll2_tx_pkt_info*, align 8
  %9 = alloca %struct.ecore_chain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.core_tx_bd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.core_tx_bd**, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %6, align 8
  store %struct.ecore_ll2_tx_packet* %2, %struct.ecore_ll2_tx_packet** %7, align 8
  store %struct.ecore_ll2_tx_pkt_info* %3, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %17 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  store %struct.ecore_chain* %19, %struct.ecore_chain** %9, align 8
  %20 = load %struct.ecore_chain*, %struct.ecore_chain** %9, align 8
  %21 = call i64 @ecore_chain_get_prod_idx(%struct.ecore_chain* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.core_tx_bd*, %struct.core_tx_bd** @OSAL_NULL, align 8
  store %struct.core_tx_bd* %22, %struct.core_tx_bd** %11, align 8
  store i64 0, i64* %14, align 8
  %23 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %24 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ECORE_LL2_ROCE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @CORE_ROCE, align 4
  br label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @CORE_RROCE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %35 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %43 [
    i32 128, label %37
    i32 129, label %39
    i32 130, label %41
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @CORE_TX_DEST_NW, align 4
  store i32 %38, i32* %13, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @CORE_TX_DEST_LB, align 4
  store i32 %40, i32* %13, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @CORE_TX_DEST_DROP, align 4
  store i32 %42, i32* %13, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @CORE_TX_DEST_LB, align 4
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37
  %46 = load %struct.ecore_chain*, %struct.ecore_chain** %9, align 8
  %47 = call i64 @ecore_chain_produce(%struct.ecore_chain* %46)
  %48 = inttoptr i64 %47 to %struct.core_tx_bd*
  store %struct.core_tx_bd* %48, %struct.core_tx_bd** %11, align 8
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %50 = call i64 @ECORE_IS_IWARP_PERSONALITY(%struct.ecore_hwfn* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ECORE_LL2_TYPE_OOO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64, i64* @IWARP_LL2_IN_ORDER_TX_QUEUE, align 8
  %61 = call i32 @OSAL_CPU_TO_LE16(i64 %60)
  %62 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %63 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %89

64:                                               ; preds = %52, %45
  %65 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %66 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @OSAL_CPU_TO_LE16(i64 %67)
  %69 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %70 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %73 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i64 @OSAL_TEST_BIT(i32 %71, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %64
  %79 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ECORE_LL2_TYPE_FCOE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %87 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %86, i32 0, i32 3
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %78, %64
  br label %89

89:                                               ; preds = %88, %59
  %90 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %91 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @CORE_TX_BD_L4_HDR_OFFSET_W, align 4
  %94 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %95 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @OSAL_CPU_TO_LE16(i64 %96)
  %98 = call i32 @SET_FIELD(i64 %92, i32 %93, i32 %97)
  %99 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %100 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @CORE_TX_BD_TX_DST, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @SET_FIELD(i64 %101, i32 %102, i32 %103)
  %105 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %106 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %14, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i32, i32* @CORE_TX_BD_DATA_START_BD, align 4
  %112 = call i32 @SET_FIELD(i64 %110, i32 %111, i32 1)
  %113 = load i64, i64* %14, align 8
  %114 = load i32, i32* @CORE_TX_BD_DATA_NBDS, align 4
  %115 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %116 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @SET_FIELD(i64 %113, i32 %114, i32 %117)
  %119 = load i64, i64* %14, align 8
  %120 = load i32, i32* @CORE_TX_BD_DATA_ROCE_FLAV, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @SET_FIELD(i64 %119, i32 %120, i32 %121)
  %123 = load i64, i64* %14, align 8
  %124 = load i32, i32* @CORE_TX_BD_DATA_IP_CSUM, align 4
  %125 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %126 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @SET_FIELD(i64 %123, i32 %124, i32 %131)
  %133 = load i64, i64* %14, align 8
  %134 = load i32, i32* @CORE_TX_BD_DATA_L4_CSUM, align 4
  %135 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %136 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @SET_FIELD(i64 %133, i32 %134, i32 %141)
  %143 = load i64, i64* %14, align 8
  %144 = load i32, i32* @CORE_TX_BD_DATA_IP_LEN, align 4
  %145 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %146 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @SET_FIELD(i64 %143, i32 %144, i32 %151)
  %153 = load i64, i64* %14, align 8
  %154 = load i32, i32* @CORE_TX_BD_DATA_DISABLE_STAG_INSERTION, align 4
  %155 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %156 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i32 @SET_FIELD(i64 %153, i32 %154, i32 %161)
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @OSAL_CPU_TO_LE16(i64 %163)
  %165 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %166 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %169 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %168, i32 0, i32 4
  %170 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %171 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = bitcast %struct.TYPE_12__* %169 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @DMA_REGPAIR_LE(i64 %174, i32 %172)
  %176 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %177 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @OSAL_CPU_TO_LE16(i64 %178)
  %180 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %181 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %183 = load i32, i32* @ECORE_MSG_TX_QUEUED, align 4
  %184 = load i32, i32* @ECORE_MSG_LL2, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %187 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %190 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %193 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %198 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %197, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %201 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %204 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @OSAL_LE32_TO_CPU(i32 %206)
  %208 = load %struct.core_tx_bd*, %struct.core_tx_bd** %11, align 8
  %209 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @OSAL_LE32_TO_CPU(i32 %211)
  %213 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %182, i32 %185, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %188, i32 %191, i64 %195, i64 %196, i64 %199, i32 %202, i32 %207, i32 %212)
  %214 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %215 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %219 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %89
  br label %269

223:                                              ; preds = %89
  %224 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %225 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %15, align 8
  br label %229

229:                                              ; preds = %266, %223
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.ecore_ll2_tx_pkt_info*, %struct.ecore_ll2_tx_pkt_info** %8, align 8
  %232 = getelementptr inbounds %struct.ecore_ll2_tx_pkt_info, %struct.ecore_ll2_tx_pkt_info* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = icmp ult i64 %230, %234
  br i1 %235, label %236, label %269

236:                                              ; preds = %229
  %237 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %7, align 8
  %238 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %237, i32 0, i32 0
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i64, i64* %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  store %struct.core_tx_bd** %242, %struct.core_tx_bd*** %16, align 8
  %243 = load %struct.ecore_chain*, %struct.ecore_chain** %9, align 8
  %244 = call i64 @ecore_chain_produce(%struct.ecore_chain* %243)
  %245 = inttoptr i64 %244 to %struct.core_tx_bd*
  %246 = load %struct.core_tx_bd**, %struct.core_tx_bd*** %16, align 8
  store %struct.core_tx_bd* %245, %struct.core_tx_bd** %246, align 8
  %247 = load %struct.core_tx_bd**, %struct.core_tx_bd*** %16, align 8
  %248 = load %struct.core_tx_bd*, %struct.core_tx_bd** %247, align 8
  %249 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  store i32 0, i32* %250, align 4
  %251 = load %struct.core_tx_bd**, %struct.core_tx_bd*** %16, align 8
  %252 = load %struct.core_tx_bd*, %struct.core_tx_bd** %251, align 8
  %253 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %252, i32 0, i32 1
  store i64 0, i64* %253, align 8
  %254 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %7, align 8
  %255 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %254, i32 0, i32 0
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = load i64, i64* %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  store i64 0, i64* %259, align 8
  %260 = load %struct.ecore_ll2_tx_packet*, %struct.ecore_ll2_tx_packet** %7, align 8
  %261 = getelementptr inbounds %struct.ecore_ll2_tx_packet, %struct.ecore_ll2_tx_packet* %260, i32 0, i32 0
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = load i64, i64* %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 0
  store i64 0, i64* %265, align 8
  br label %266

266:                                              ; preds = %236
  %267 = load i64, i64* %15, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %15, align 8
  br label %229

269:                                              ; preds = %222, %229
  ret void
}

declare dso_local i64 @ecore_chain_get_prod_idx(%struct.ecore_chain*) #1

declare dso_local i64 @ecore_chain_produce(%struct.ecore_chain*) #1

declare dso_local i64 @ECORE_IS_IWARP_PERSONALITY(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i64) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @OSAL_LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
