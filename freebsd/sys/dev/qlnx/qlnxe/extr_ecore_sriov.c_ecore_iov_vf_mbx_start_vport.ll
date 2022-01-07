; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_vport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_start_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32*, i32, %struct.ecore_iov_vf_mbx }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ecore_iov_vf_mbx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vfpf_vport_start_tlv }
%struct.vfpf_vport_start_tlv = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.ecore_sp_vport_start_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to get VF info, invalid vfid [%d]\0A\00", align 1
@VF_ENABLED = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"VF[%d] did not fill the address of SB %d\0A\00", align 1
@VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED = common dso_local global i32 0, align 4
@VFPF_BULLETIN_UNTAGGED_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"FPGA: Don't configure VF for Tx-switching [no pVFC]\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"OSAL_IOV_PRE_START_VPORT returned error %d\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"ecore_iov_vf_mbx_start_vport returned error %d\0A\00", align 1
@CHANNEL_TLV_VPORT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_start_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_start_vport(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_sp_vport_start_params, align 4
  %8 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %9 = alloca %struct.vfpf_vport_start_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_vf_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %16 = bitcast %struct.ecore_sp_vport_start_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 52, i1 false)
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %17, i32 0, i32 13
  store %struct.ecore_iov_vf_mbx* %18, %struct.ecore_iov_vf_mbx** %8, align 8
  %19 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %20, i32 %24, i32 1)
  store %struct.ecore_vf_info* %25, %struct.ecore_vf_info** %11, align 8
  %26 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %27 = icmp ne %struct.ecore_vf_info* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.ecore_hwfn*
  %34 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %35 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %33, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %247

38:                                               ; preds = %3
  %39 = load i32, i32* @VF_ENABLED, align 4
  %40 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %8, align 8
  %43 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.vfpf_vport_start_tlv* %45, %struct.vfpf_vport_start_tlv** %9, align 8
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %47 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %48 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %49 = call i32 @ecore_iov_enable_vf_traffic(%struct.ecore_hwfn* %46, %struct.ecore_ptt* %47, %struct.ecore_vf_info* %48)
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %94, %38
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %50
  %57 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %58 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %67 = load i32, i32* @ECORE_MSG_IOV, align 4
  %68 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %66, i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %71)
  br label %97

73:                                               ; preds = %56
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %75 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %76 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %77 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %83, i32 0, i32 11
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %91 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ecore_int_cau_conf_sb(%struct.ecore_hwfn* %74, %struct.ecore_ptt* %75, i32 %82, i32 %89, i32 %92, i32 1)
  br label %94

94:                                               ; preds = %73
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %50

97:                                               ; preds = %65, %50
  %98 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %99 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %102 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  %103 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %104 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %107 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %110 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED, align 4
  %117 = shl i32 1, %116
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %97
  %121 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %122 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %126 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* @VFPF_BULLETIN_UNTAGGED_DEFAULT, align 4
  %131 = shl i32 1, %130
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %120, %97
  %136 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %137 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 11
  store i32 %138, i32* %139, align 4
  %140 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %141 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 10
  store i32 %142, i32* %143, align 4
  %144 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 0
  store i32 1, i32* %144, align 4
  %145 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %146 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 9
  store i32 %147, i32* %148, align 4
  %149 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %150 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @CHIP_REV_IS_FPGA(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %135
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %156 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %155, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %157 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 0
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %135
  %159 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %11, align 8
  %160 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 8
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %168 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 7
  store i32 %169, i32* %170, align 4
  %171 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %172 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 6
  store i32 %173, i32* %174, align 4
  %175 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %176 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 5
  store i32 %177, i32* %178, align 4
  %179 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %9, align 8
  %180 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 4
  store i32 %181, i32* %182, align 4
  %183 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %184 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 3
  store i32 %185, i32* %186, align 4
  %187 = getelementptr inbounds %struct.ecore_sp_vport_start_params, %struct.ecore_sp_vport_start_params* %7, i32 0, i32 2
  store i32 1, i32* %187, align 4
  %188 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %189 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %190 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @OSAL_IOV_PRE_START_VPORT(%struct.ecore_hwfn* %188, i64 %191, %struct.ecore_sp_vport_start_params* %7)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @ECORE_SUCCESS, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %158
  %197 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @DP_ERR(%struct.ecore_hwfn* %197, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %200, i32* %10, align 4
  br label %240

201:                                              ; preds = %158
  %202 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %203 = call i32 @ecore_sp_eth_vport_start(%struct.ecore_hwfn* %202, %struct.ecore_sp_vport_start_params* %7)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* @ECORE_SUCCESS, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @DP_ERR(%struct.ecore_hwfn* %208, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %211, i32* %10, align 4
  br label %239

212:                                              ; preds = %201
  %213 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %214 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  %217 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %218 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn* %217, %struct.ecore_vf_info* %218, i32 %220)
  %222 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %223 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %224 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %227 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %230 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @OSAL_IOV_POST_START_VPORT(%struct.ecore_hwfn* %222, i64 %225, i32 %228, i32 %231)
  %233 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %234 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %235 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %236 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @__ecore_iov_spoofchk_set(%struct.ecore_hwfn* %233, %struct.ecore_vf_info* %234, i32 %237)
  br label %239

239:                                              ; preds = %212, %207
  br label %240

240:                                              ; preds = %239, %196
  %241 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %242 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %243 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %244 = load i32, i32* @CHANNEL_TLV_VPORT_START, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %241, %struct.ecore_ptt* %242, %struct.ecore_vf_info* %243, i32 %244, i32 4, i32 %245)
  br label %247

247:                                              ; preds = %240, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #2

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #2

declare dso_local i32 @ecore_iov_enable_vf_traffic(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*) #2

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32) #2

declare dso_local i32 @ecore_int_cau_conf_sb(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32) #2

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #2

declare dso_local i32 @OSAL_IOV_PRE_START_VPORT(%struct.ecore_hwfn*, i64, %struct.ecore_sp_vport_start_params*) #2

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32) #2

declare dso_local i32 @ecore_sp_eth_vport_start(%struct.ecore_hwfn*, %struct.ecore_sp_vport_start_params*) #2

declare dso_local i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #2

declare dso_local i32 @OSAL_IOV_POST_START_VPORT(%struct.ecore_hwfn*, i64, i32, i32) #2

declare dso_local i32 @__ecore_iov_spoofchk_set(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #2

declare dso_local i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
