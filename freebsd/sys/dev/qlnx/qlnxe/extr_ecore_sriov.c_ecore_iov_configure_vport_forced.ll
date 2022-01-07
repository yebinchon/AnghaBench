; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_configure_vport_forced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_configure_vport_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32, %struct.ecore_vf_queue*, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, i32 }
%struct.ecore_vf_queue = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ecore_filter_ucast = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i8*, i32, i32, i32 }
%struct.ecore_sp_vport_update_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i8*, i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@ECORE_FILTER_MAC = common dso_local global i32 0, align 4
@ECORE_FILTER_REPLACE = common dso_local global i8* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_queue_cid* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"PF failed to configure MAC for VF\0A\00", align 1
@VLAN_ADDR_FORCED = common dso_local global i32 0, align 4
@ECORE_FILTER_VLAN = common dso_local global i32 0, align 4
@ECORE_FILTER_FLUSH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"PF failed to configure VLAN for VF\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"PF failed to configure VF vport for vlan\0A\00", align 1
@ECORE_MAX_VF_CHAINS_PER_PF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to send Rx update fo queue[0x%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32)* @ecore_iov_configure_vport_forced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_filter_ucast, align 8
  %10 = alloca %struct.ecore_sp_vport_update_params, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ecore_vf_queue*, align 8
  %14 = alloca %struct.ecore_queue_cid*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %240

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = bitcast %struct.ecore_filter_ucast* %9 to %struct.ecore_sp_vport_update_params*
  %30 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %29, i32 0, i32 80)
  %31 = load i32, i32* @ECORE_FILTER_MAC, align 4
  %32 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 14
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** @ECORE_FILTER_REPLACE, align 8
  %34 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 12
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %38 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 13
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 15
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @OSAL_MEMCPY(i32 %42, i32 %48, i32 %49)
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %52 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %struct.ecore_filter_ucast* %9 to %struct.ecore_sp_vport_update_params*
  %56 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %57 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %58 = call i32 @ecore_sp_eth_filter_ucast(%struct.ecore_hwfn* %51, i32 %54, %struct.ecore_sp_vport_update_params* %55, i32 %56, %struct.ecore_queue_cid* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %28
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %63 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %62, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %240

65:                                               ; preds = %28
  %66 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %22
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %230

78:                                               ; preds = %72
  %79 = bitcast %struct.ecore_filter_ucast* %9 to %struct.ecore_sp_vport_update_params*
  %80 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %79, i32 0, i32 80)
  %81 = load i32, i32* @ECORE_FILTER_VLAN, align 4
  %82 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 14
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 13
  store i32 %87, i32* %88, align 8
  %89 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %78
  %100 = load i8*, i8** @ECORE_FILTER_REPLACE, align 8
  br label %103

101:                                              ; preds = %78
  %102 = load i8*, i8** @ECORE_FILTER_FLUSH, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i8* [ %100, %99 ], [ %102, %101 ]
  %105 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 12
  store i8* %104, i8** %105, align 8
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %107 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %108 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = bitcast %struct.ecore_filter_ucast* %9 to %struct.ecore_sp_vport_update_params*
  %111 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %112 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %113 = call i32 @ecore_sp_eth_filter_ucast(%struct.ecore_hwfn* %106, i32 %109, %struct.ecore_sp_vport_update_params* %110, i32 %111, %struct.ecore_queue_cid* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %103
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %118 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %117, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %240

120:                                              ; preds = %103
  %121 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %10, i32 0, i32 80)
  %122 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %123 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 11
  store i32 %124, i32* %125, align 4
  %126 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %127 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 10
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 2
  store i32 1, i32* %130, align 8
  %131 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 1, i32 0
  %136 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 3
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 4
  store i32 1, i32* %137, align 8
  %138 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 9
  store i64 %139, i64* %140, align 8
  %141 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 5
  store i32 1, i32* %141, align 4
  %142 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %120
  br label %151

146:                                              ; preds = %120
  %147 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %148 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  br label %151

151:                                              ; preds = %146, %145
  %152 = phi i32 [ 1, %145 ], [ %150, %146 ]
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 6
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %10, i32 0, i32 7
  store i32 %159, i32* %160, align 4
  %161 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %162 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %163 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %164 = call i32 @ecore_sp_vport_update(%struct.ecore_hwfn* %161, %struct.ecore_sp_vport_update_params* %10, i32 %162, %struct.ecore_queue_cid* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %151
  %168 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %169 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %168, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %4, align 4
  br label %240

171:                                              ; preds = %151
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %207, %171
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @ECORE_MAX_VF_CHAINS_PER_PF, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %210

176:                                              ; preds = %172
  %177 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %178 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %177, i32 0, i32 1
  %179 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %179, i64 %181
  store %struct.ecore_vf_queue* %182, %struct.ecore_vf_queue** %13, align 8
  %183 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  store %struct.ecore_queue_cid* %183, %struct.ecore_queue_cid** %14, align 8
  %184 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %13, align 8
  %185 = call %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue* %184)
  store %struct.ecore_queue_cid* %185, %struct.ecore_queue_cid** %14, align 8
  %186 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %187 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %188 = icmp eq %struct.ecore_queue_cid* %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %176
  br label %207

190:                                              ; preds = %176
  %191 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %192 = bitcast %struct.ecore_queue_cid** %14 to i8**
  %193 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %194 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** @OSAL_NULL, align 8
  %195 = call i32 @ecore_sp_eth_rx_queues_update(%struct.ecore_hwfn* %191, i8** %192, i32 1, i32 0, i32 1, i32 %193, %struct.ecore_queue_cid* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %200 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %201 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %199, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %4, align 4
  br label %240

206:                                              ; preds = %190
  br label %207

207:                                              ; preds = %206, %189
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %172

210:                                              ; preds = %172
  %211 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %9, i32 0, i32 8
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %216 = shl i32 1, %215
  %217 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %218 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %229

221:                                              ; preds = %210
  %222 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %223 = shl i32 1, %222
  %224 = xor i32 %223, -1
  %225 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %226 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %221, %214
  br label %230

230:                                              ; preds = %229, %72
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %235 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @ecore_iov_reconfigure_unicast_shadow(%struct.ecore_hwfn* %234, %struct.ecore_vf_info* %235, i32 %236)
  br label %238

238:                                              ; preds = %233, %230
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %238, %198, %167, %116, %61, %20
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32, i32, i32) #1

declare dso_local i32 @ecore_sp_eth_filter_ucast(%struct.ecore_hwfn*, i32, %struct.ecore_sp_vport_update_params*, i32, %struct.ecore_queue_cid*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_sp_vport_update(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, i32, %struct.ecore_queue_cid*) #1

declare dso_local %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue*) #1

declare dso_local i32 @ecore_sp_eth_rx_queues_update(%struct.ecore_hwfn*, i8**, i32, i32, i32, i32, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_iov_reconfigure_unicast_shadow(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
