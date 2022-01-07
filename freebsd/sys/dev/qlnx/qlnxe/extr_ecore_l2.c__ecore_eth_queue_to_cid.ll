; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c__ecore_eth_queue_to_cid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c__ecore_eth_queue_to_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_queue_cid_vf_params = type { i32, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.ecore_hwfn* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { i32, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.ecore_hwfn* }
%struct.ecore_queue_start_common_params = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_queue_cid_vf_params* null, align 8
@ECORE_QUEUE_CID_PF = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"opaque_fid: %04x CID %08x vport %02x [%02x] qzone %04x.%02x [%04x] stats %02x [%02x] SB %04x PI %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecore_queue_cid* (%struct.ecore_hwfn*, i32, i32, %struct.ecore_queue_start_common_params*, i32, %struct.ecore_queue_cid_vf_params*)* @_ecore_eth_queue_to_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecore_queue_cid* @_ecore_eth_queue_to_cid(%struct.ecore_hwfn* %0, i32 %1, i32 %2, %struct.ecore_queue_start_common_params* %3, i32 %4, %struct.ecore_queue_cid_vf_params* %5) #0 {
  %7 = alloca %struct.ecore_queue_cid*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_queue_start_common_params*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ecore_queue_cid_vf_params*, align 8
  %14 = alloca %struct.ecore_queue_cid*, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ecore_queue_start_common_params* %3, %struct.ecore_queue_start_common_params** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ecore_queue_cid_vf_params* %5, %struct.ecore_queue_cid_vf_params** %13, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ecore_queue_cid_vf_params* @OSAL_VZALLOC(i32 %18, i32 80)
  %20 = bitcast %struct.ecore_queue_cid_vf_params* %19 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %20, %struct.ecore_queue_cid** %14, align 8
  %21 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %22 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** @OSAL_NULL, align 8
  %23 = bitcast %struct.ecore_queue_cid_vf_params* %22 to %struct.ecore_queue_cid*
  %24 = icmp eq %struct.ecore_queue_cid* %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** @OSAL_NULL, align 8
  %27 = bitcast %struct.ecore_queue_cid_vf_params* %26 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %27, %struct.ecore_queue_cid** %7, align 8
  br label %235

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %31 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %34 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %36 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %37 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %36, i32 0, i32 11
  store %struct.ecore_hwfn* %35, %struct.ecore_hwfn** %37, align 8
  %38 = load %struct.ecore_queue_start_common_params*, %struct.ecore_queue_start_common_params** %11, align 8
  %39 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %42 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.ecore_queue_start_common_params*, %struct.ecore_queue_start_common_params** %11, align 8
  %45 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %48 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ecore_queue_start_common_params*, %struct.ecore_queue_start_common_params** %11, align 8
  %51 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %54 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.ecore_queue_start_common_params*, %struct.ecore_queue_start_common_params** %11, align 8
  %57 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %62 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %65 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ecore_queue_start_common_params*, %struct.ecore_queue_start_common_params** %11, align 8
  %67 = getelementptr inbounds %struct.ecore_queue_start_common_params, %struct.ecore_queue_start_common_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %70 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** %13, align 8
  %72 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** @OSAL_NULL, align 8
  %73 = icmp ne %struct.ecore_queue_cid_vf_params* %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %28
  %75 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** %13, align 8
  %76 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %79 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** %13, align 8
  %81 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %84 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** %13, align 8
  %86 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %89 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %28
  %91 = load i64, i64* @ECORE_QUEUE_CID_PF, align 8
  %92 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %93 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %74
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %96 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_VF(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %102 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %101, i32 0, i32 4
  %103 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %104 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %103, i32 0, i32 5
  %105 = bitcast %struct.TYPE_4__* %102 to i8*
  %106 = bitcast %struct.TYPE_4__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 4 %106, i64 12, i1 false)
  br label %165

107:                                              ; preds = %94
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %109 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %110 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %114 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %108, i32 %112, i32* %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @ECORE_SUCCESS, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %226

121:                                              ; preds = %107
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %123 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %124 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %128 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = call i32 @ecore_fw_l2_queue(%struct.ecore_hwfn* %122, i32 %126, i32* %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @ECORE_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %226

135:                                              ; preds = %121
  %136 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %137 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ECORE_QUEUE_CID_PF, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %143 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %144 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %148 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %142, i32 %146, i32* %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @ECORE_SUCCESS, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  br label %226

155:                                              ; preds = %141
  br label %164

156:                                              ; preds = %135
  %157 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %158 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %162 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  br label %164

164:                                              ; preds = %156, %155
  br label %165

165:                                              ; preds = %164, %100
  %166 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** %13, align 8
  %167 = icmp ne %struct.ecore_queue_cid_vf_params* %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %170 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %171 = bitcast %struct.ecore_queue_cid* %170 to %struct.ecore_queue_cid_vf_params*
  %172 = call i32 @ecore_eth_queue_qid_usage_add(%struct.ecore_hwfn* %169, %struct.ecore_queue_cid_vf_params* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  br label %226

175:                                              ; preds = %168
  br label %182

176:                                              ; preds = %165
  %177 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** %13, align 8
  %178 = getelementptr inbounds %struct.ecore_queue_cid_vf_params, %struct.ecore_queue_cid_vf_params* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %181 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %176, %175
  %183 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %184 = load i32, i32* @ECORE_MSG_SP, align 4
  %185 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %186 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %189 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %192 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %196 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %200 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %204 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %207 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %211 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %215 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %219 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %222 = getelementptr inbounds %struct.ecore_queue_cid, %struct.ecore_queue_cid* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %183, i32 %184, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %190, i32 %194, i32 %198, i32 %202, i32 %205, i32 %209, i32 %213, i32 %217, i32 %220, i32 %223)
  %225 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  store %struct.ecore_queue_cid* %225, %struct.ecore_queue_cid** %7, align 8
  br label %235

226:                                              ; preds = %174, %154, %134, %120
  %227 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %228 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %14, align 8
  %231 = bitcast %struct.ecore_queue_cid* %230 to %struct.ecore_queue_cid_vf_params*
  %232 = call i32 @OSAL_VFREE(i32 %229, %struct.ecore_queue_cid_vf_params* %231)
  %233 = load %struct.ecore_queue_cid_vf_params*, %struct.ecore_queue_cid_vf_params** @OSAL_NULL, align 8
  %234 = bitcast %struct.ecore_queue_cid_vf_params* %233 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %234, %struct.ecore_queue_cid** %7, align 8
  br label %235

235:                                              ; preds = %226, %182, %25
  %236 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %7, align 8
  ret %struct.ecore_queue_cid* %236
}

declare dso_local %struct.ecore_queue_cid_vf_params* @OSAL_VZALLOC(i32, i32) #1

declare dso_local i64 @IS_VF(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ecore_fw_vport(%struct.ecore_hwfn*, i32, i32*) #1

declare dso_local i32 @ecore_fw_l2_queue(%struct.ecore_hwfn*, i32, i32*) #1

declare dso_local i32 @ecore_eth_queue_qid_usage_add(%struct.ecore_hwfn*, %struct.ecore_queue_cid_vf_params*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OSAL_VFREE(i32, %struct.ecore_queue_cid_vf_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
