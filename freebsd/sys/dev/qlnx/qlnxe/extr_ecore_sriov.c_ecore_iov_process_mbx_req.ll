; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_process_mbx_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_process_mbx_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_iov_vf_mbx = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.ecore_vf_info = type { i32, %struct.TYPE_9__, i32, i32, %struct.ecore_iov_vf_mbx }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [66 x i8] c"VF[%02x]: Trying to process mailbox message when none is pending\0A\00", align 1
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"VF[%02x]: Processing mailbox message [type %04x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"VF [%02x] - considered malicious, but wanted to RELEASE. TODO\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"VF [%02x] - considered malicious; Ignoring TLV [%04x]\0A\00", align 1
@PFVF_STATUS_MALICIOUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"VF[%02x]: unknown TLV. type %04x length %04x padding %08x reply address %llu\0A\00", align 1
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"VF[%02x]: Can't respond to TLV - no valid reply address\0A\00", align 1
@VF_PF_RESPONSE_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_process_mbx_req(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %8 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %9, i32 %10, i32 1)
  store %struct.ecore_vf_info* %11, %struct.ecore_vf_info** %8, align 8
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %13 = icmp ne %struct.ecore_vf_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %282

15:                                               ; preds = %3
  %16 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %17 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %16, i32 0, i32 4
  store %struct.ecore_iov_vf_mbx* %17, %struct.ecore_iov_vf_mbx** %7, align 8
  %18 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %19 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %25 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %23, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %282

28:                                               ; preds = %15
  %29 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %30 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %31, i32 0, i32 2
  %33 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %34 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = bitcast %struct.TYPE_11__* %32 to i8*
  %38 = bitcast %struct.TYPE_11__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load i32, i32* @ECORE_MSG_IOV, align 4
  %41 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %42 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %45 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %39, i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %48)
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %51 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %52 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @OSAL_IOV_VF_MSG_TYPE(%struct.ecore_hwfn* %50, i32 %53, i32 %58)
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %61 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %62 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %63 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ecore_iov_lock_vf_pf_channel(%struct.ecore_hwfn* %60, %struct.ecore_vf_info* %61, i32 %66)
  %68 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %69 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ecore_iov_tlv_supported(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %167

75:                                               ; preds = %28
  %76 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %77 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %167, label %80

80:                                               ; preds = %75
  %81 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %82 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %166 [
    i32 143, label %86
    i32 130, label %91
    i32 129, label %96
    i32 137, label %101
    i32 136, label %106
    i32 135, label %111
    i32 134, label %116
    i32 132, label %121
    i32 128, label %126
    i32 133, label %131
    i32 142, label %136
    i32 139, label %141
    i32 138, label %146
    i32 131, label %151
    i32 140, label %156
    i32 141, label %161
  ]

86:                                               ; preds = %80
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %88 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %89 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %90 = call i32 @ecore_iov_vf_mbx_acquire(%struct.ecore_hwfn* %87, %struct.ecore_ptt* %88, %struct.ecore_vf_info* %89)
  br label %166

91:                                               ; preds = %80
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %93 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %94 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %95 = call i32 @ecore_iov_vf_mbx_start_vport(%struct.ecore_hwfn* %92, %struct.ecore_ptt* %93, %struct.ecore_vf_info* %94)
  br label %166

96:                                               ; preds = %80
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %98 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %99 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %100 = call i32 @ecore_iov_vf_mbx_stop_vport(%struct.ecore_hwfn* %97, %struct.ecore_ptt* %98, %struct.ecore_vf_info* %99)
  br label %166

101:                                              ; preds = %80
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %103 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %104 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %105 = call i32 @ecore_iov_vf_mbx_start_rxq(%struct.ecore_hwfn* %102, %struct.ecore_ptt* %103, %struct.ecore_vf_info* %104)
  br label %166

106:                                              ; preds = %80
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %108 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %109 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %110 = call i32 @ecore_iov_vf_mbx_start_txq(%struct.ecore_hwfn* %107, %struct.ecore_ptt* %108, %struct.ecore_vf_info* %109)
  br label %166

111:                                              ; preds = %80
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %113 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %114 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %115 = call i32 @ecore_iov_vf_mbx_stop_rxqs(%struct.ecore_hwfn* %112, %struct.ecore_ptt* %113, %struct.ecore_vf_info* %114)
  br label %166

116:                                              ; preds = %80
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %118 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %119 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %120 = call i32 @ecore_iov_vf_mbx_stop_txqs(%struct.ecore_hwfn* %117, %struct.ecore_ptt* %118, %struct.ecore_vf_info* %119)
  br label %166

121:                                              ; preds = %80
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %123 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %124 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %125 = call i32 @ecore_iov_vf_mbx_update_rxqs(%struct.ecore_hwfn* %122, %struct.ecore_ptt* %123, %struct.ecore_vf_info* %124)
  br label %166

126:                                              ; preds = %80
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %129 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %130 = call i32 @ecore_iov_vf_mbx_vport_update(%struct.ecore_hwfn* %127, %struct.ecore_ptt* %128, %struct.ecore_vf_info* %129)
  br label %166

131:                                              ; preds = %80
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %133 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %134 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %135 = call i32 @ecore_iov_vf_mbx_ucast_filter(%struct.ecore_hwfn* %132, %struct.ecore_ptt* %133, %struct.ecore_vf_info* %134)
  br label %166

136:                                              ; preds = %80
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %138 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %139 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %140 = call i32 @ecore_iov_vf_mbx_close(%struct.ecore_hwfn* %137, %struct.ecore_ptt* %138, %struct.ecore_vf_info* %139)
  br label %166

141:                                              ; preds = %80
  %142 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %143 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %144 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %145 = call i32 @ecore_iov_vf_mbx_int_cleanup(%struct.ecore_hwfn* %142, %struct.ecore_ptt* %143, %struct.ecore_vf_info* %144)
  br label %166

146:                                              ; preds = %80
  %147 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %148 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %149 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %150 = call i32 @ecore_iov_vf_mbx_release(%struct.ecore_hwfn* %147, %struct.ecore_ptt* %148, %struct.ecore_vf_info* %149)
  br label %166

151:                                              ; preds = %80
  %152 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %153 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %154 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %155 = call i32 @ecore_iov_vf_mbx_update_tunn_param(%struct.ecore_hwfn* %152, %struct.ecore_ptt* %153, %struct.ecore_vf_info* %154)
  br label %166

156:                                              ; preds = %80
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %158 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %159 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %160 = call i32 @ecore_iov_vf_pf_set_coalesce(%struct.ecore_hwfn* %157, %struct.ecore_ptt* %158, %struct.ecore_vf_info* %159)
  br label %166

161:                                              ; preds = %80
  %162 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %163 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %164 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %165 = call i32 @ecore_iov_vf_pf_get_coalesce(%struct.ecore_hwfn* %162, %struct.ecore_ptt* %163, %struct.ecore_vf_info* %164)
  br label %166

166:                                              ; preds = %80, %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %96, %91, %86
  br label %273

167:                                              ; preds = %75, %28
  %168 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %169 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @ecore_iov_tlv_supported(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %212

175:                                              ; preds = %167
  %176 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %177 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 138
  br i1 %181, label %182, label %189

182:                                              ; preds = %175
  %183 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %184 = load i32, i32* @ECORE_MSG_IOV, align 4
  %185 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %186 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %183, i32 %184, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  br label %201

189:                                              ; preds = %175
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %191 = load i32, i32* @ECORE_MSG_IOV, align 4
  %192 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %193 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %196 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %190, i32 %191, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %194, i32 %199)
  br label %201

201:                                              ; preds = %189, %182
  %202 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %203 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %204 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %205 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %206 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @PFVF_STATUS_MALICIOUS, align 4
  %211 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %202, %struct.ecore_ptt* %203, %struct.ecore_vf_info* %204, i32 %209, i32 4, i32 %210)
  br label %272

212:                                              ; preds = %167
  %213 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %214 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %215 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %218 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %223 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %228 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %232 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_NOTICE(%struct.ecore_hwfn* %213, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %216, i32 %221, i32 %226, i32 %230, i64 %234)
  %236 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %237 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %264

242:                                              ; preds = %212
  %243 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %244 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %248 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %246, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %242
  %254 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %255 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %256 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %257 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %258 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  %263 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %254, %struct.ecore_ptt* %255, %struct.ecore_vf_info* %256, i32 %261, i32 4, i32 %262)
  br label %271

264:                                              ; preds = %242, %212
  %265 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %266 = load i32, i32* @ECORE_MSG_IOV, align 4
  %267 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %268 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %265, i32 %266, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %264, %253
  br label %272

272:                                              ; preds = %271, %201
  br label %273

273:                                              ; preds = %272, %166
  %274 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %275 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %276 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %277 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @ecore_iov_unlock_vf_pf_channel(%struct.ecore_hwfn* %274, %struct.ecore_vf_info* %275, i32 %280)
  br label %282

282:                                              ; preds = %273, %22, %14
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @OSAL_IOV_VF_MSG_TYPE(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_iov_lock_vf_pf_channel(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

declare dso_local i64 @ecore_iov_tlv_supported(i32) #1

declare dso_local i32 @ecore_iov_vf_mbx_acquire(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_start_vport(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_stop_vport(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_start_rxq(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_start_txq(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_stop_rxqs(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_stop_txqs(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_update_rxqs(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_vport_update(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_ucast_filter(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_close(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_int_cleanup(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_release(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_mbx_update_tunn_param(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_pf_set_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_vf_pf_get_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #1

declare dso_local i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32, i32) #1

declare dso_local i32 @ecore_iov_unlock_vf_pf_channel(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
