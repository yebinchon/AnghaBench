; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_filter_ucast_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_filter_ucast_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_filter_ucast = type { i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.vport_filter_update_ramrod_data = type { %struct.eth_filter_cmd*, %struct.TYPE_4__ }
%struct.eth_filter_cmd = type { i64, i32, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vport_filter_update_ramrod_data }
%struct.ecore_spq_comp_cb = type { i32 }
%struct.ecore_sp_init_data = type { i32, %struct.ecore_spq_comp_cb*, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ETH_RAMROD_FILTERS_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Non-Asic - prevent Tx filters\0A\00", align 1
@ETH_FILTER_TYPE_MAC = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_VLAN = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_MAC = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_VLAN = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_MAC_VNI_PAIR = common dso_local global i64 0, align 8
@ETH_FILTER_TYPE_VNI = common dso_local global i64 0, align 8
@ETH_FILTER_ACTION_REMOVE = common dso_local global i32 0, align 4
@ETH_FILTER_ACTION_ADD = common dso_local global i8* null, align 8
@ETH_FILTER_ACTION_REMOVE_ALL = common dso_local global i32 0, align 4
@MAX_ETH_FILTER_ACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%d is not supported yet\0A\00", align 1
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_FILTER_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, %struct.ecore_filter_ucast*, %struct.vport_filter_update_ramrod_data**, %struct.ecore_spq_entry**, i32, %struct.ecore_spq_comp_cb*)* @ecore_filter_ucast_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_filter_ucast_common(%struct.ecore_hwfn* %0, i32 %1, %struct.ecore_filter_ucast* %2, %struct.vport_filter_update_ramrod_data** %3, %struct.ecore_spq_entry** %4, i32 %5, %struct.ecore_spq_comp_cb* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_filter_ucast*, align 8
  %12 = alloca %struct.vport_filter_update_ramrod_data**, align 8
  %13 = alloca %struct.ecore_spq_entry**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ecore_spq_comp_cb*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.vport_filter_update_ramrod_data*, align 8
  %19 = alloca %struct.eth_filter_cmd*, align 8
  %20 = alloca %struct.eth_filter_cmd*, align 8
  %21 = alloca %struct.ecore_sp_init_data, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ecore_filter_ucast* %2, %struct.ecore_filter_ucast** %11, align 8
  store %struct.vport_filter_update_ramrod_data** %3, %struct.vport_filter_update_ramrod_data*** %12, align 8
  store %struct.ecore_spq_entry** %4, %struct.ecore_spq_entry*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.ecore_spq_comp_cb* %6, %struct.ecore_spq_comp_cb** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %25 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %26 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %24, i32 %27, i8** %17)
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %23, align 4
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %23, align 4
  store i32 %33, i32* %8, align 4
  br label %371

34:                                               ; preds = %7
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %36 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %37 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %35, i32 %38, i8** %16)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* @ECORE_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %23, align 4
  store i32 %44, i32* %8, align 4
  br label %371

45:                                               ; preds = %34
  %46 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %21, i32 0, i32 24)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %48 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %47)
  %49 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %21, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %21, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %14, align 4
  %53 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %21, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %15, align 8
  %55 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %21, i32 0, i32 1
  store %struct.ecore_spq_comp_cb* %54, %struct.ecore_spq_comp_cb** %55, align 8
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %57 = load %struct.ecore_spq_entry**, %struct.ecore_spq_entry*** %13, align 8
  %58 = load i32, i32* @ETH_RAMROD_FILTERS_UPDATE, align 4
  %59 = load i32, i32* @PROTOCOLID_ETH, align 4
  %60 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %56, %struct.ecore_spq_entry** %57, i32 %58, i32 %59, %struct.ecore_sp_init_data* %21)
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* @ECORE_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %23, align 4
  store i32 %65, i32* %8, align 4
  br label %371

66:                                               ; preds = %45
  %67 = load %struct.ecore_spq_entry**, %struct.ecore_spq_entry*** %13, align 8
  %68 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %67, align 8
  %69 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.vport_filter_update_ramrod_data**, %struct.vport_filter_update_ramrod_data*** %12, align 8
  store %struct.vport_filter_update_ramrod_data* %70, %struct.vport_filter_update_ramrod_data** %71, align 8
  %72 = load %struct.vport_filter_update_ramrod_data**, %struct.vport_filter_update_ramrod_data*** %12, align 8
  %73 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %72, align 8
  store %struct.vport_filter_update_ramrod_data* %73, %struct.vport_filter_update_ramrod_data** %18, align 8
  %74 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %75 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %81 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %84 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %90 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %93 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @CHIP_REV_IS_SLOW(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %66
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %99 = load i32, i32* @ECORE_MSG_SP, align 4
  %100 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %98, i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %102 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %66
  %105 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %106 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %112 [
    i32 130, label %108
    i32 131, label %108
  ]

108:                                              ; preds = %104, %104
  %109 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %110 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32 2, i32* %111, align 8
  br label %116

112:                                              ; preds = %104
  %113 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %114 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %108
  %117 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %118 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %117, i32 0, i32 0
  %119 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %118, align 8
  %120 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %119, i64 0
  store %struct.eth_filter_cmd* %120, %struct.eth_filter_cmd** %19, align 8
  %121 = load %struct.vport_filter_update_ramrod_data*, %struct.vport_filter_update_ramrod_data** %18, align 8
  %122 = getelementptr inbounds %struct.vport_filter_update_ramrod_data, %struct.vport_filter_update_ramrod_data* %121, i32 0, i32 0
  %123 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %122, align 8
  %124 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %123, i64 1
  store %struct.eth_filter_cmd* %124, %struct.eth_filter_cmd** %20, align 8
  %125 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %126 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %164 [
    i32 134, label %128
    i32 129, label %132
    i32 133, label %136
    i32 138, label %140
    i32 135, label %144
    i32 136, label %148
    i32 137, label %152
    i32 132, label %156
    i32 128, label %160
  ]

128:                                              ; preds = %116
  %129 = load i64, i64* @ETH_FILTER_TYPE_MAC, align 8
  %130 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %131 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %164

132:                                              ; preds = %116
  %133 = load i64, i64* @ETH_FILTER_TYPE_VLAN, align 8
  %134 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %135 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %164

136:                                              ; preds = %116
  %137 = load i64, i64* @ETH_FILTER_TYPE_PAIR, align 8
  %138 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %139 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %164

140:                                              ; preds = %116
  %141 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC, align 8
  %142 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %143 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %164

144:                                              ; preds = %116
  %145 = load i64, i64* @ETH_FILTER_TYPE_INNER_VLAN, align 8
  %146 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %147 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %164

148:                                              ; preds = %116
  %149 = load i64, i64* @ETH_FILTER_TYPE_INNER_PAIR, align 8
  %150 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %151 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %164

152:                                              ; preds = %116
  %153 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR, align 8
  %154 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %155 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %164

156:                                              ; preds = %116
  %157 = load i64, i64* @ETH_FILTER_TYPE_MAC_VNI_PAIR, align 8
  %158 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %159 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %164

160:                                              ; preds = %116
  %161 = load i64, i64* @ETH_FILTER_TYPE_VNI, align 8
  %162 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %163 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %116, %160, %156, %152, %148, %144, %140, %136, %132, %128
  %165 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %166 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ETH_FILTER_TYPE_MAC, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %200, label %170

170:                                              ; preds = %164
  %171 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %172 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ETH_FILTER_TYPE_PAIR, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %200, label %176

176:                                              ; preds = %170
  %177 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %178 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %200, label %182

182:                                              ; preds = %176
  %183 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %184 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ETH_FILTER_TYPE_INNER_PAIR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %200, label %188

188:                                              ; preds = %182
  %189 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %190 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %196 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @ETH_FILTER_TYPE_MAC_VNI_PAIR, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %194, %188, %182, %176, %170, %164
  %201 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %202 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %201, i32 0, i32 7
  %203 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %204 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %203, i32 0, i32 6
  %205 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %206 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %205, i32 0, i32 5
  %207 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %208 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i8**
  %211 = call i32 @ecore_set_fw_mac_addr(i32* %202, i32* %204, i32* %206, i8** %210)
  br label %212

212:                                              ; preds = %200, %194
  %213 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %214 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @ETH_FILTER_TYPE_VLAN, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %236, label %218

218:                                              ; preds = %212
  %219 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %220 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ETH_FILTER_TYPE_PAIR, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %236, label %224

224:                                              ; preds = %218
  %225 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %226 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @ETH_FILTER_TYPE_INNER_VLAN, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %232 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @ETH_FILTER_TYPE_INNER_PAIR, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %230, %224, %218, %212
  %237 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %238 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @OSAL_CPU_TO_LE16(i32 %239)
  %241 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %242 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 4
  br label %243

243:                                              ; preds = %236, %230
  %244 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %245 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @ETH_FILTER_TYPE_INNER_MAC_VNI_PAIR, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %261, label %249

249:                                              ; preds = %243
  %250 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %251 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @ETH_FILTER_TYPE_MAC_VNI_PAIR, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %261, label %255

255:                                              ; preds = %249
  %256 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %257 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @ETH_FILTER_TYPE_VNI, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %255, %249, %243
  %262 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %263 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @OSAL_CPU_TO_LE32(i32 %264)
  %266 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %267 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %261, %255
  %269 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %270 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 131
  br i1 %272, label %273, label %317

273:                                              ; preds = %268
  %274 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %275 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %278 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  %279 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %280 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %283 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %282, i32 0, i32 7
  store i32 %281, i32* %283, align 8
  %284 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %285 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %288 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %287, i32 0, i32 6
  store i32 %286, i32* %288, align 4
  %289 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %290 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %293 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 8
  %294 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %295 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %298 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %297, i32 0, i32 4
  store i32 %296, i32* %298, align 4
  %299 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %300 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %303 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 8
  %304 = load i32, i32* @ETH_FILTER_ACTION_REMOVE, align 4
  %305 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %306 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 8
  %307 = load i8*, i8** %17, align 8
  %308 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %309 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %308, i32 0, i32 2
  store i8* %307, i8** %309, align 8
  %310 = load i8*, i8** @ETH_FILTER_ACTION_ADD, align 8
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %313 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 8
  %314 = load i8*, i8** %16, align 8
  %315 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %316 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %315, i32 0, i32 2
  store i8* %314, i8** %316, align 8
  br label %369

317:                                              ; preds = %268
  %318 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %319 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 130
  br i1 %321, label %322, label %336

322:                                              ; preds = %317
  %323 = load i8*, i8** %16, align 8
  %324 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %325 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %324, i32 0, i32 2
  store i8* %323, i8** %325, align 8
  %326 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %327 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %328 = call i32 @OSAL_MEMCPY(%struct.eth_filter_cmd* %326, %struct.eth_filter_cmd* %327, i32 48)
  %329 = load i32, i32* @ETH_FILTER_ACTION_REMOVE_ALL, align 4
  %330 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %331 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 8
  %332 = load i8*, i8** @ETH_FILTER_ACTION_ADD, align 8
  %333 = ptrtoint i8* %332 to i32
  %334 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %20, align 8
  %335 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 8
  br label %368

336:                                              ; preds = %317
  %337 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %338 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @ecore_filter_action(i32 %339)
  store i32 %340, i32* %22, align 4
  %341 = load i32, i32* %22, align 4
  %342 = load i32, i32* @MAX_ETH_FILTER_ACTION, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %351

344:                                              ; preds = %336
  %345 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %346 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %347 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %345, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %350, i32* %8, align 4
  br label %371

351:                                              ; preds = %336
  %352 = load i32, i32* %22, align 4
  %353 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %354 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 8
  %355 = load %struct.ecore_filter_ucast*, %struct.ecore_filter_ucast** %11, align 8
  %356 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @ECORE_FILTER_REMOVE, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %351
  %361 = load i8*, i8** %17, align 8
  br label %364

362:                                              ; preds = %351
  %363 = load i8*, i8** %16, align 8
  br label %364

364:                                              ; preds = %362, %360
  %365 = phi i8* [ %361, %360 ], [ %363, %362 ]
  %366 = load %struct.eth_filter_cmd*, %struct.eth_filter_cmd** %19, align 8
  %367 = getelementptr inbounds %struct.eth_filter_cmd, %struct.eth_filter_cmd* %366, i32 0, i32 2
  store i8* %365, i8** %367, align 8
  br label %368

368:                                              ; preds = %364, %322
  br label %369

369:                                              ; preds = %368, %273
  %370 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %370, i32* %8, align 4
  br label %371

371:                                              ; preds = %369, %344, %64, %43, %32
  %372 = load i32, i32* %8, align 4
  ret i32 %372
}

declare dso_local i32 @ecore_fw_vport(%struct.ecore_hwfn*, i32, i8**) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_set_fw_mac_addr(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

declare dso_local i32 @OSAL_MEMCPY(%struct.eth_filter_cmd*, %struct.eth_filter_cmd*, i32) #1

declare dso_local i32 @ecore_filter_action(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
