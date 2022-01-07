; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_eth_vport_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_sp_eth_vport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_start_params = type { i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.vport_start_ramrod_data = type { i32, i32, i32, i64, %struct.eth_vport_tpa_param, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eth_vport_tpa_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vport_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_VPORT_START = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_UCAST_DROP_ALL = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_MCAST_DROP_ALL = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_ILLEGAL_VLAN_MODE = common dso_local global i32 0, align 4
@ETH_TX_ERR_ASSERT_MALICIOUS = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_PACKET_TOO_SMALL = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_ANTI_SPOOFING_ERR = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_ILLEGAL_INBAND_TAGS = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_VLAN_INSERTION_W_INBAND_TAG = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_MTU_VIOLATION = common dso_local global i32 0, align 4
@ETH_TX_ERR_VALS_ILLEGAL_CONTROL_FRAME = common dso_local global i32 0, align 4
@ETH_TPA_MAX_AGGS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_eth_vport_start(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_start_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_sp_vport_start_params*, align 8
  %6 = alloca %struct.vport_start_ramrod_data*, align 8
  %7 = alloca %struct.ecore_spq_entry*, align 8
  %8 = alloca %struct.ecore_sp_init_data, align 4
  %9 = alloca %struct.eth_vport_tpa_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_sp_vport_start_params* %1, %struct.ecore_sp_vport_start_params** %5, align 8
  %14 = load i8*, i8** @OSAL_NULL, align 8
  %15 = bitcast i8* %14 to %struct.vport_start_ramrod_data*
  store %struct.vport_start_ramrod_data* %15, %struct.vport_start_ramrod_data** %6, align 8
  %16 = load i8*, i8** @OSAL_NULL, align 8
  %17 = bitcast i8* %16 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %17, %struct.ecore_spq_entry** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %21 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %20, i32 0, i32 20
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %19, i32 %22, i32* %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %3, align 4
  br label %275

29:                                               ; preds = %2
  %30 = bitcast %struct.ecore_sp_init_data* %8 to %struct.eth_vport_tpa_param*
  %31 = call i32 @OSAL_MEMSET(%struct.eth_vport_tpa_param* %30, i32 0, i32 56)
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %32)
  %34 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 13
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %35, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 12
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %40 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 11
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load i32, i32* @ETH_RAMROD_VPORT_START, align 4
  %43 = load i32, i32* @PROTOCOLID_ETH, align 4
  %44 = bitcast %struct.ecore_sp_init_data* %8 to %struct.eth_vport_tpa_param*
  %45 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %41, %struct.ecore_spq_entry** %7, i32 %42, i32 %43, %struct.eth_vport_tpa_param* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @ECORE_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %29
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %3, align 4
  br label %275

51:                                               ; preds = %29
  %52 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %53 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.vport_start_ramrod_data* %54, %struct.vport_start_ramrod_data** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %57 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %56, i32 0, i32 13
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @OSAL_CPU_TO_LE16(i32 %60)
  %62 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %63 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %62, i32 0, i32 12
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %65 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %64, i32 0, i32 18
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %68 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %70 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %69, i32 0, i32 17
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %73 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %75 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %74, i32 0, i32 16
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %78 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %80 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %79, i32 0, i32 15
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %83 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %85 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %84, i32 0, i32 14
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %88 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ETH_VPORT_RX_MODE_UCAST_DROP_ALL, align 4
  %91 = call i32 @SET_FIELD(i32 %89, i32 %90, i32 1)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @ETH_VPORT_RX_MODE_MCAST_DROP_ALL, align 4
  %94 = call i32 @SET_FIELD(i32 %92, i32 %93, i32 1)
  %95 = load i32, i32* %10, align 4
  %96 = call i8* @OSAL_CPU_TO_LE16(i32 %95)
  %97 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %98 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @ETH_TX_ERR_VALS_ILLEGAL_VLAN_MODE, align 4
  %102 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %103 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %102, i32 0, i32 13
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %51
  %107 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %109

108:                                              ; preds = %51
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = call i32 @SET_FIELD(i32 %100, i32 %101, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @ETH_TX_ERR_VALS_PACKET_TOO_SMALL, align 4
  %114 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %115 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %114, i32 0, i32 12
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %121

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = call i32 @SET_FIELD(i32 %112, i32 %113, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @ETH_TX_ERR_VALS_ANTI_SPOOFING_ERR, align 4
  %126 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %127 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %133

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = call i32 @SET_FIELD(i32 %124, i32 %125, i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @ETH_TX_ERR_VALS_ILLEGAL_INBAND_TAGS, align 4
  %138 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %139 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %145

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = call i32 @SET_FIELD(i32 %136, i32 %137, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @ETH_TX_ERR_VALS_VLAN_INSERTION_W_INBAND_TAG, align 4
  %150 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %151 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %150, i32 0, i32 9
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %157

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ]
  %159 = call i32 @SET_FIELD(i32 %148, i32 %149, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @ETH_TX_ERR_VALS_MTU_VIOLATION, align 4
  %162 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %163 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %169

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ]
  %171 = call i32 @SET_FIELD(i32 %160, i32 %161, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @ETH_TX_ERR_VALS_ILLEGAL_CONTROL_FRAME, align 4
  %174 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %175 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @ETH_TX_ERR_ASSERT_MALICIOUS, align 4
  br label %181

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32 [ %179, %178 ], [ 0, %180 ]
  %183 = call i32 @SET_FIELD(i32 %172, i32 %173, i32 %182)
  %184 = load i32, i32* %11, align 4
  %185 = call i8* @OSAL_CPU_TO_LE16(i32 %184)
  %186 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %187 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  %189 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %190 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %189, i32 0, i32 4
  store %struct.eth_vport_tpa_param* %190, %struct.eth_vport_tpa_param** %9, align 8
  %191 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %192 = call i32 @OSAL_MEMSET(%struct.eth_vport_tpa_param* %191, i32 0, i32 56)
  %193 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %194 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %197 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %196, i32 0, i32 10
  store i32 %195, i32* %197, align 4
  %198 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %199 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  switch i32 %200, label %231 [
    i32 128, label %201
  ]

201:                                              ; preds = %181
  %202 = load i32, i32* @ETH_TPA_MAX_AGGS_NUM, align 4
  %203 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %204 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %203, i32 0, i32 9
  store i32 %202, i32* %204, align 4
  %205 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %206 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %205, i32 0, i32 0
  store i32 -1, i32* %206, align 4
  %207 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %208 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %209, 2
  %211 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %212 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %214 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sdiv i32 %215, 2
  %217 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %218 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  %219 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %220 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %219, i32 0, i32 3
  store i32 1, i32* %220, align 4
  %221 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %222 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %221, i32 0, i32 4
  store i32 1, i32* %222, align 4
  %223 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %224 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %223, i32 0, i32 5
  store i32 1, i32* %224, align 4
  %225 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %226 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %225, i32 0, i32 6
  store i32 1, i32* %226, align 4
  %227 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %228 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %227, i32 0, i32 7
  store i32 1, i32* %228, align 4
  %229 = load %struct.eth_vport_tpa_param*, %struct.eth_vport_tpa_param** %9, align 8
  %230 = getelementptr inbounds %struct.eth_vport_tpa_param, %struct.eth_vport_tpa_param* %229, i32 0, i32 8
  store i32 1, i32* %230, align 4
  br label %232

231:                                              ; preds = %181
  br label %232

232:                                              ; preds = %231, %201
  %233 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %234 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %237 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %236, i32 0, i32 3
  store i64 %235, i64* %237, align 8
  %238 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %239 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @CHIP_REV_IS_SLOW(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %232
  %244 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %245 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %244, i32 0, i32 3
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %243, %232
  %247 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %248 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %255 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %257 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  %260 = xor i1 %259, true
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %264 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.ecore_sp_vport_start_params*, %struct.ecore_sp_vport_start_params** %5, align 8
  %266 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @ecore_concrete_to_sw_fid(i32 %267)
  %269 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %270 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 8
  %271 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %272 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %273 = load i8*, i8** @OSAL_NULL, align 8
  %274 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %271, %struct.ecore_spq_entry* %272, i8* %273)
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %246, %49, %27
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @ecore_fw_vport(%struct.ecore_hwfn*, i32, i32*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.eth_vport_tpa_param*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.eth_vport_tpa_param*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @ecore_concrete_to_sw_fid(i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
