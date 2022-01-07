; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_initialize_vsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_initialize_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, i32, %struct.i40e_hw*, i32, i64, %struct.TYPE_13__, i64, i64, i32, i32, i32, %struct.ixl_rx_queue*, %struct.ixl_tx_queue*, %struct.ixl_pf* }
%struct.i40e_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.ixl_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i64, i32 }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32 }
%struct.ixl_pf = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i64, i32* }
%struct.i40e_vsi_context = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i64*, i32, i32, i32 }
%struct.i40e_hmc_obj_txq = type { i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.i40e_hmc_obj_rxq = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"i40e_aq_get_vsi_params() failed, error %d aq_error %d\0A\00", align 1
@IXL_DBG_SWITCH_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [162 x i8] c"get_vsi_params: seid: %d, uplinkseid: %d, vsi_number: %d, vsis_allocated: %d, vsis_unallocated: %d, flags: 0x%x, pfnum: %d, vfnum: %d, stat idx: %d, enabled: %d\0A\00", align 1
@I40E_AQ_VSI_PROP_QUEUE_MAP_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_QUE_MAP_CONTIG = common dso_local global i32 0, align 4
@I40E_AQ_VSI_TC_QUE_OFFSET_SHIFT = common dso_local global i32 0, align 4
@I40E_AQ_VSI_TC_QUE_OFFSET_MASK = common dso_local global i32 0, align 4
@I40E_AQ_VSI_TC_QUE_NUMBER_SHIFT = common dso_local global i32 0, align 4
@I40E_AQ_VSI_TC_QUE_NUMBER_MASK = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_MODE_ALL = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PVLAN_EMOD_NOTHING = common dso_local global i32 0, align 4
@I40E_AQ_VSI_TYPE_PF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"i40e_aq_update_vsi_params() failed, error %d, aq_error %d\0A\00", align 1
@IXL_TX_CTX_BASE_UNITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to clear TX context\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to set TX context\0A\00", align 1
@I40E_QTX_CTL_PF_QUEUE = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_MASK = common dso_local global i32 0, align 4
@I40E_RXQ_CTX_DBUFF_SHIFT = common dso_local global i32 0, align 4
@I40E_RXQ_CTX_HBUFF_SHIFT = common dso_local global i32 0, align 4
@IXL_RX_CTX_BASE_UNITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to clear RX context %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to set RX context %d\0A\00", align 1
@I40E_AQ_VSI_PROP_QUEUE_OPT_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_QUE_OPT_TCP_ENA = common dso_local global i32 0, align 4
@ixl_enable_iwarp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_initialize_vsi(%struct.ixl_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.ixl_tx_queue*, align 8
  %7 = alloca %struct.ixl_rx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.i40e_vsi_context, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tx_ring*, align 8
  %15 = alloca %struct.i40e_hmc_obj_txq, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rx_ring*, align 8
  %19 = alloca %struct.i40e_hmc_obj_rxq, align 8
  %20 = alloca i64, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %3, align 8
  %21 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %22 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %21, i32 0, i32 13
  %23 = load %struct.ixl_pf*, %struct.ixl_pf** %22, align 8
  store %struct.ixl_pf* %23, %struct.ixl_pf** %4, align 8
  %24 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %25 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_11__* @iflib_get_softc_ctx(i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %5, align 8
  %28 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %28, i32 0, i32 12
  %30 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %29, align 8
  store %struct.ixl_tx_queue* %30, %struct.ixl_tx_queue** %6, align 8
  %31 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %32 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %31, i32 0, i32 11
  %33 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %32, align 8
  store %struct.ixl_rx_queue* %33, %struct.ixl_rx_queue** %7, align 8
  %34 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %35 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iflib_get_dev(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %39 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %38, i32 0, i32 2
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %39, align 8
  store %struct.i40e_hw* %40, %struct.i40e_hw** %9, align 8
  store i32 0, i32* %12, align 4
  %41 = call i32 @memset(%struct.i40e_vsi_context* %10, i32 0, i32 192)
  %42 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %43 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 26
  store i32 %44, i32* %45, align 8
  %46 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %47 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %1
  %51 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %52 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %1
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %57 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %61 = call i32 @i40e_aq_get_vsi_params(%struct.i40e_hw* %60, %struct.i40e_vsi_context* %10, i32* null)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %68 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %2, align 4
  br label %403

73:                                               ; preds = %55
  %74 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %75 = load i32, i32* @IXL_DBG_SWITCH_INFO, align 4
  %76 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 26
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 22
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 25
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 24
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 20
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 23
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ixl_dbg(%struct.ixl_pf* %74, i32 %75, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.1, i64 0, i64 0), i32 %77, i64 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89, i32 %91, i32 %94, i32 %97)
  %99 = load i32, i32* @I40E_AQ_VSI_PROP_QUEUE_MAP_VALID, align 4
  %100 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @I40E_AQ_VSI_QUE_MAP_CONTIG, align 4
  %103 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %112 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @fls(i32 %114)
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %118 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @I40E_AQ_VSI_TC_QUE_OFFSET_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* @I40E_AQ_VSI_TC_QUE_OFFSET_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @I40E_AQ_VSI_TC_QUE_NUMBER_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* @I40E_AQ_VSI_TC_QUE_NUMBER_MASK, align 4
  %129 = and i32 %127, %128
  %130 = or i32 %124, %129
  %131 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* @I40E_AQ_VSI_PROP_VLAN_VALID, align 4
  %136 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* @I40E_AQ_VSI_PVLAN_MODE_ALL, align 4
  %141 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %144 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @if_getcapenable(i32 %145)
  %147 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %73
  %151 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_STR_BOTH, align 4
  %152 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %162

156:                                              ; preds = %73
  %157 = load i32, i32* @I40E_AQ_VSI_PVLAN_EMOD_NOTHING, align 4
  %158 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %150
  %163 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 22
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %166 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 8
  %167 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 21
  %168 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %169 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %168, i32 0, i32 5
  %170 = call i32 @bcopy(%struct.TYPE_12__* %167, %struct.TYPE_13__* %169, i32 8)
  %171 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %172 = call i32 @ixl_vsi_reset_stats(%struct.ixl_vsi* %171)
  %173 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %174 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %173, i32 0, i32 7
  store i64 0, i64* %174, align 8
  %175 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %176 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %175, i32 0, i32 6
  store i64 0, i64* %176, align 8
  %177 = load i32, i32* @I40E_AQ_VSI_TYPE_PF, align 4
  %178 = call i32 @htole16(i32 %177)
  %179 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %10, i32 0, i32 20
  store i32 %178, i32* %179, align 8
  %180 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %181 = call i32 @i40e_aq_update_vsi_params(%struct.i40e_hw* %180, %struct.i40e_vsi_context* %10, i32* null)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %162
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %188 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %186, i32 %190)
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %2, align 4
  br label %403

193:                                              ; preds = %162
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %288, %193
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %197 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %293

200:                                              ; preds = %194
  %201 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %6, align 8
  %202 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %201, i32 0, i32 0
  store %struct.tx_ring* %202, %struct.tx_ring** %14, align 8
  %203 = call i32 @bzero(%struct.i40e_hmc_obj_txq* %15, i32 48)
  %204 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.tx_ring*, %struct.tx_ring** %14, align 8
  %206 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @IXL_TX_CTX_BASE_UNITS, align 4
  %209 = sdiv i32 %207, %208
  %210 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 1
  store i32 %209, i32* %210, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 2
  store i32 %215, i32* %216, align 8
  %217 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 7
  store i64 0, i64* %217, align 8
  %218 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %219 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 6
  store i32 %223, i32* %224, align 8
  %225 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %226 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %200
  %230 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 3
  store i32 1, i32* %230, align 4
  %231 = load %struct.tx_ring*, %struct.tx_ring** %14, align 8
  %232 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 4
  %242 = add i64 %234, %241
  %243 = trunc i64 %242 to i32
  %244 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 4
  store i32 %243, i32* %244, align 8
  br label %248

245:                                              ; preds = %200
  %246 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 3
  store i32 0, i32* %246, align 4
  %247 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 4
  store i32 0, i32* %247, align 8
  br label %248

248:                                              ; preds = %245, %229
  %249 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %15, i32 0, i32 5
  store i64 0, i64* %249, align 8
  %250 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw* %250, i32 %251)
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32, i32* %8, align 4
  %257 = call i32 (i32, i8*, ...) @device_printf(i32 %256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %293

258:                                              ; preds = %248
  %259 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @i40e_set_lan_tx_queue_context(%struct.i40e_hw* %259, i32 %260, %struct.i40e_hmc_obj_txq* %15)
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %8, align 4
  %266 = call i32 (i32, i8*, ...) @device_printf(i32 %265, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %293

267:                                              ; preds = %258
  %268 = load i32, i32* @I40E_QTX_CTL_PF_QUEUE, align 4
  store i32 %268, i32* %16, align 4
  %269 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %270 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @I40E_QTX_CTL_PF_INDX_SHIFT, align 4
  %273 = shl i32 %271, %272
  %274 = load i32, i32* @I40E_QTX_CTL_PF_INDX_MASK, align 4
  %275 = and i32 %273, %274
  %276 = load i32, i32* %16, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %16, align 4
  %278 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @I40E_QTX_CTL(i32 %279)
  %281 = load i32, i32* %16, align 4
  %282 = call i32 @wr32(%struct.i40e_hw* %278, i32 %280, i32 %281)
  %283 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %284 = call i32 @ixl_flush(%struct.i40e_hw* %283)
  %285 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %286 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %6, align 8
  %287 = call i32 @ixl_init_tx_ring(%struct.ixl_vsi* %285, %struct.ixl_tx_queue* %286)
  br label %288

288:                                              ; preds = %267
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %13, align 4
  %291 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %6, align 8
  %292 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %291, i32 1
  store %struct.ixl_tx_queue* %292, %struct.ixl_tx_queue** %6, align 8
  br label %194

293:                                              ; preds = %264, %255, %194
  store i32 0, i32* %17, align 4
  br label %294

294:                                              ; preds = %396, %293
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %297 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %295, %298
  br i1 %299, label %300, label %401

300:                                              ; preds = %294
  %301 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %7, align 8
  %302 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %301, i32 0, i32 0
  store %struct.rx_ring* %302, %struct.rx_ring** %18, align 8
  %303 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %304 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = call i64 @iflib_get_rx_mbuf_sz(i32 %305)
  %307 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %308 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %307, i32 0, i32 0
  store i64 %306, i64* %308, align 8
  %309 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %310 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %313 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = mul nsw i64 %311, %315
  store i64 %316, i64* %20, align 8
  %317 = bitcast %struct.i40e_hmc_obj_rxq* %19 to %struct.i40e_vsi_context*
  %318 = call i32 @memset(%struct.i40e_vsi_context* %317, i32 0, i32 192)
  %319 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %320 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i32, i32* @I40E_RXQ_CTX_DBUFF_SHIFT, align 4
  %323 = zext i32 %322 to i64
  %324 = ashr i64 %321, %323
  %325 = trunc i64 %324 to i32
  %326 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 2
  store i32 %325, i32* %326, align 4
  %327 = load i32, i32* @I40E_RXQ_CTX_HBUFF_SHIFT, align 4
  %328 = ashr i32 0, %327
  %329 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 3
  store i32 %328, i32* %329, align 8
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* %20, align 8
  %334 = icmp slt i64 %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %300
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  br label %341

339:                                              ; preds = %300
  %340 = load i64, i64* %20, align 8
  br label %341

341:                                              ; preds = %339, %335
  %342 = phi i64 [ %338, %335 ], [ %340, %339 ]
  %343 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 19
  store i64 %342, i64* %343, align 8
  %344 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 18
  store i64 0, i64* %344, align 8
  %345 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 4
  store i32 1, i32* %345, align 4
  %346 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 17
  store i64 0, i64* %346, align 8
  %347 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %348 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @IXL_RX_CTX_BASE_UNITS, align 4
  %351 = sdiv i32 %349, %350
  %352 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 5
  store i32 %351, i32* %352, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 2
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 16
  store i32 %357, i32* %358, align 8
  %359 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 6
  store i32 1, i32* %359, align 4
  %360 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 7
  store i32 1, i32* %360, align 8
  %361 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 15
  store i64 0, i64* %361, align 8
  %362 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 14
  store i64 0, i64* %362, align 8
  %363 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 8
  store i32 1, i32* %363, align 4
  %364 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 9
  store i32 1, i32* %364, align 8
  %365 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 10
  store i32 1, i32* %365, align 4
  %366 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 11
  store i32 1, i32* %366, align 8
  %367 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 13
  store i64 0, i64* %367, align 8
  %368 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %19, i32 0, i32 12
  store i32 1, i32* %368, align 4
  %369 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %370 = load i32, i32* %17, align 4
  %371 = call i32 @i40e_clear_lan_rx_queue_context(%struct.i40e_hw* %369, i32 %370)
  store i32 %371, i32* %12, align 4
  %372 = load i32, i32* %12, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %341
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* %17, align 4
  %377 = call i32 (i32, i8*, ...) @device_printf(i32 %375, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %376)
  br label %401

378:                                              ; preds = %341
  %379 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %380 = load i32, i32* %17, align 4
  %381 = bitcast %struct.i40e_hmc_obj_rxq* %19 to %struct.i40e_vsi_context*
  %382 = call i32 @i40e_set_lan_rx_queue_context(%struct.i40e_hw* %379, i32 %380, %struct.i40e_vsi_context* %381)
  store i32 %382, i32* %12, align 4
  %383 = load i32, i32* %12, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %378
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* %17, align 4
  %388 = call i32 (i32, i8*, ...) @device_printf(i32 %386, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %387)
  br label %401

389:                                              ; preds = %378
  %390 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %391 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %390, i32 0, i32 2
  %392 = load %struct.i40e_hw*, %struct.i40e_hw** %391, align 8
  %393 = load i32, i32* %17, align 4
  %394 = call i32 @I40E_QRX_TAIL(i32 %393)
  %395 = call i32 @wr32(%struct.i40e_hw* %392, i32 %394, i32 0)
  br label %396

396:                                              ; preds = %389
  %397 = load i32, i32* %17, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %17, align 4
  %399 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %7, align 8
  %400 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %399, i32 1
  store %struct.ixl_rx_queue* %400, %struct.ixl_rx_queue** %7, align 8
  br label %294

401:                                              ; preds = %385, %374, %294
  %402 = load i32, i32* %12, align 4
  store i32 %402, i32* %2, align 4
  br label %403

403:                                              ; preds = %401, %184, %64
  %404 = load i32, i32* %2, align 4
  ret i32 %404
}

declare dso_local %struct.TYPE_11__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @memset(%struct.i40e_vsi_context*, i32, i32) #1

declare dso_local i32 @i40e_aq_get_vsi_params(%struct.i40e_hw*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ixl_dbg(%struct.ixl_pf*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ixl_vsi_reset_stats(%struct.ixl_vsi*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @i40e_aq_update_vsi_params(%struct.i40e_hw*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @bzero(%struct.i40e_hmc_obj_txq*, i32) #1

declare dso_local i32 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_set_lan_tx_queue_context(%struct.i40e_hw*, i32, %struct.i40e_hmc_obj_txq*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QTX_CTL(i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_init_tx_ring(%struct.ixl_vsi*, %struct.ixl_tx_queue*) #1

declare dso_local i64 @iflib_get_rx_mbuf_sz(i32) #1

declare dso_local i32 @i40e_clear_lan_rx_queue_context(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_set_lan_rx_queue_context(%struct.i40e_hw*, i32, %struct.i40e_vsi_context*) #1

declare dso_local i32 @I40E_QRX_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
