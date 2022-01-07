; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_pf_configure_vf_queue_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_pf_configure_vf_queue_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ecore_vf_info* }
%struct.ecore_vf_info = type { i64, i64, i32, %struct.ecore_vf_queue* }
%struct.ecore_vf_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ecore_queue_cid = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"VF[%d] - Can not set coalescing: VF is not active\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4
@ECORE_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Rx queue_id = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Tx queue_id = %d\0A\00", align 1
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"VF[%d]: Setting coalesce for VF rx_coal = %d, tx_coal = %d at queue = %d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"VF[%d]: Unable to set rx queue = %d coalesce\0A\00", align 1
@MAX_QUEUES_PER_QZONE = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"VF[%d]: Unable to set tx queue coalesce\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_pf_configure_vf_queue_coalesce(%struct.ecore_hwfn* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecore_queue_cid*, align 8
  %13 = alloca %struct.ecore_vf_info*, align 8
  %14 = alloca %struct.ecore_ptt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ecore_vf_queue*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @ecore_iov_is_valid_vfid(%struct.ecore_hwfn* %18, i64 %19, i32 1, i32 1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %23, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %193

27:                                               ; preds = %5
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %29 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %32, i64 %33
  store %struct.ecore_vf_info* %34, %struct.ecore_vf_info** %13, align 8
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %36 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %35)
  store %struct.ecore_ptt* %36, %struct.ecore_ptt** %14, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %14, align 8
  %38 = icmp ne %struct.ecore_ptt* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %40, i32* %6, align 4
  br label %193

41:                                               ; preds = %27
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %43 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %46 = call i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn* %42, %struct.ecore_vf_info* %43, i64 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %53 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %54 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @DP_ERR(%struct.ecore_hwfn* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %56)
  br label %188

58:                                               ; preds = %48, %41
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %60 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* @ECORE_IOV_VALIDATE_Q_ENABLE, align 4
  %63 = call i32 @ecore_iov_validate_txq(%struct.ecore_hwfn* %59, %struct.ecore_vf_info* %60, i64 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %70 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %71 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @DP_ERR(%struct.ecore_hwfn* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73)
  br label %188

75:                                               ; preds = %65, %58
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %77 = load i32, i32* @ECORE_MSG_IOV, align 4
  %78 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %79 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %76, i32 %77, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i32 %80, i64 %81, i64 %82, i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %75
  %88 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %89 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %88, i32 0, i32 3
  %90 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %90, i64 %91
  %93 = call %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue* %92)
  store %struct.ecore_queue_cid* %93, %struct.ecore_queue_cid** %12, align 8
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %95 = load %struct.ecore_ptt*, %struct.ecore_ptt** %14, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %12, align 8
  %98 = call i32 @ecore_set_rxq_coalesce(%struct.ecore_hwfn* %94, %struct.ecore_ptt* %95, i64 %96, %struct.ecore_queue_cid* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @ECORE_SUCCESS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %87
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %104 = load i32, i32* @ECORE_MSG_IOV, align 4
  %105 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %106 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %109 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %108, i32 0, i32 3
  %110 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %110, i64 %111
  %113 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %103, i32 %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %114)
  br label %188

116:                                              ; preds = %87
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %119 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %75
  %121 = load i64, i64* %9, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %187

123:                                              ; preds = %120
  %124 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %125 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %124, i32 0, i32 3
  %126 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %126, i64 %127
  store %struct.ecore_vf_queue* %128, %struct.ecore_vf_queue** %17, align 8
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %180, %123
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @MAX_QUEUES_PER_QZONE, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %183

133:                                              ; preds = %129
  %134 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %17, align 8
  %135 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @OSAL_NULL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %180

145:                                              ; preds = %133
  %146 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %17, align 8
  %147 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %145
  br label %180

156:                                              ; preds = %145
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %158 = load %struct.ecore_ptt*, %struct.ecore_ptt** %14, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load %struct.ecore_vf_queue*, %struct.ecore_vf_queue** %17, align 8
  %161 = getelementptr inbounds %struct.ecore_vf_queue, %struct.ecore_vf_queue* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @ecore_set_txq_coalesce(%struct.ecore_hwfn* %157, %struct.ecore_ptt* %158, i64 %159, i64 %167)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @ECORE_SUCCESS, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %156
  %173 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %174 = load i32, i32* @ECORE_MSG_IOV, align 4
  %175 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %176 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %173, i32 %174, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  br label %188

179:                                              ; preds = %156
  br label %180

180:                                              ; preds = %179, %155, %144
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %129

183:                                              ; preds = %129
  %184 = load i64, i64* %9, align 8
  %185 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %13, align 8
  %186 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %183, %120
  br label %188

188:                                              ; preds = %187, %172, %102, %68, %51
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %190 = load %struct.ecore_ptt*, %struct.ecore_ptt** %14, align 8
  %191 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %189, %struct.ecore_ptt* %190)
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %188, %39, %22
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @ecore_iov_is_valid_vfid(%struct.ecore_hwfn*, i64, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iov_validate_rxq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, i64) #1

declare dso_local i32 @ecore_iov_validate_txq(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

declare dso_local %struct.ecore_queue_cid* @ecore_iov_get_vf_rx_queue_cid(%struct.ecore_vf_queue*) #1

declare dso_local i32 @ecore_set_rxq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_set_txq_coalesce(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
