; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_pf_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_pf_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i64, i64, i32, %struct.ecore_vf_queue*, %struct.ecore_iov_vf_mbx }
%struct.ecore_vf_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ecore_iov_vf_mbx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfpf_update_coalesce }
%struct.vfpf_update_coalesce = type { i64, i64, i64 }
%struct.ecore_queue_cid = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@ECORE_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Rx queue_id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Tx queue_id = %d\0A\00", align 1
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"VF[%d]: Setting coalesce for VF rx_coal = %d, tx_coal = %d at queue = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"VF[%d]: Unable to set rx queue = %d coalesce\0A\00", align 1
@MAX_QUEUES_PER_QZONE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"VF[%d]: Unable to set tx queue coalesce\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CHANNEL_TLV_COALESCE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_pf_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_pf_set_coalesce(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_update_coalesce*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_queue_cid*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ecore_vf_queue*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %17, i32 0, i32 4
  store %struct.ecore_iov_vf_mbx* %18, %struct.ecore_iov_vf_mbx** %7, align 8
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.vfpf_update_coalesce* %24, %struct.vfpf_update_coalesce** %9, align 8
  %25 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %9, align 8
  %26 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %9, align 8
  %29 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %9, align 8
  %32 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %38 = call i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn* %34, %struct.ecore_vf_info* %35, i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %3
  %41 = load i64, i64* %12, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %46 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @DP_ERR(%struct.ecore_hwfn* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48)
  br label %181

50:                                               ; preds = %40, %3
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %55 = call i32 @ecore_iov_validate_txq(%struct.ecore_hwfn* %51, %struct.ecore_vf_info* %52, i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %62 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @DP_ERR(%struct.ecore_hwfn* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %65)
  br label %181

67:                                               ; preds = %57, %50
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %69 = load i32, i32* @ECORE_MSG_IOV, align 4
  %70 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %68, i32 %69, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73, i64 %74, i64 %75)
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %67
  %80 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %80, i32 0, i32 3
  %82 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %82, i64 %83
  %85 = call %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue* %84)
  store %struct.ecore_queue_cid* %85, %struct.ecore_queue_cid** %11, align 8
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %87 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %11, align 8
  %90 = call i32 @ecore_set_rxq_coalesce(%struct.ecore_hwfn* %86, %struct.ecore_ptt* %87, i64 %88, %struct.ecore_queue_cid* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ECORE_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %79
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %96 = load i32, i32* @ECORE_MSG_IOV, align 4
  %97 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %98 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %100, i32 0, i32 3
  %102 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %102, i64 %103
  %105 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %95, i32 %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %106)
  br label %181

108:                                              ; preds = %79
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %111 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %67
  %113 = load i64, i64* %13, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %179

115:                                              ; preds = %112
  %116 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %117 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %116, i32 0, i32 3
  %118 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %118, i64 %119
  store %struct.ecore_vf_queue* %120, %struct.ecore_vf_queue** %16, align 8
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %172, %115
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @MAX_QUEUES_PER_QZONE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %175

125:                                              ; preds = %121
  %126 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %16, align 8
  %127 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @OSAL_NULL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %172

137:                                              ; preds = %125
  %138 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %16, align 8
  %139 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %137
  br label %172

148:                                              ; preds = %137
  %149 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %150 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %16, align 8
  %153 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @ecore_set_txq_coalesce(%struct.ecore_hwfn* %149, %struct.ecore_ptt* %150, i64 %151, i64 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @ECORE_SUCCESS, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %148
  %165 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %166 = load i32, i32* @ECORE_MSG_IOV, align 4
  %167 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %168 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %165, i32 %166, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  br label %181

171:                                              ; preds = %148
  br label %172

172:                                              ; preds = %171, %147, %136
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %121

175:                                              ; preds = %121
  %176 = load i64, i64* %13, align 8
  %177 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %178 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %175, %112
  %180 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %179, %164, %94, %60, %43
  %182 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %183 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %184 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %185 = load i32, i32* @CHANNEL_TLV_COALESCE_UPDATE, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn* %182, %struct.ecore_ptt* %183, %struct.ecore_vf_info* %184, i32 %185, i32 4, i32 %186)
  ret void
}

declare dso_local i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, i64) #1

declare dso_local i32 @ecore_iov_validate_txq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue*) #1

declare dso_local i32 @ecore_set_rxq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_set_txq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i32 @ecore_iov_prepare_resp(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
