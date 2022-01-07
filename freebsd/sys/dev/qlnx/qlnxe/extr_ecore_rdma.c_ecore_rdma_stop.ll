; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_close_func_ramrod_data = type { i64, i32 }
%struct.ecore_sp_init_data = type { i32, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_close_func_ramrod_data }
%struct.ecore_ptt = type { i32 }

@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"RDMA stop\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to acquire PTT\0A\00", align 1
@PRS_REG_ROCE_DEST_QP_MAX_PF = common dso_local global i64 0, align 8
@PRS_REG_LIGHT_L2_ETHERTYPE_EN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [209 x i8] c"On Everest 4 Big Bear Board revision A0 when RoCE driver is loaded L2 performance is sub-optimal (all traffic is routed to engine 0). For optimal L2 results either remove RoCE driver or use board revision B0\0A\00", align 1
@NIG_REG_LLH_ENG_CLS_ENG_ID_TBL = common dso_local global i64 0, align 8
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_FUNC_CLOSE = common dso_local global i32 0, align 4
@ECORE_RDMA_CNQ_RAM = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"RDMA stop done, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_stop(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.rdma_close_func_ramrod_data*, align 8
  %6 = alloca %struct.ecore_sp_init_data, align 4
  %7 = alloca %struct.ecore_spq_entry*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %12, %struct.ecore_hwfn** %4, align 8
  %13 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %16 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %14, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = call i32 @ecore_rdma_deactivate(%struct.ecore_hwfn* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ECORE_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %2, align 4
  br label %160

24:                                               ; preds = %1
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %25)
  store %struct.ecore_ptt* %26, %struct.ecore_ptt** %8, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %28 = icmp ne %struct.ecore_ptt* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %31 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %32 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %30, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %160

34:                                               ; preds = %24
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ecore_wr(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36, i64 %39, i32 0)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %45 = load i64, i64* @PRS_REG_ROCE_DEST_QP_MAX_PF, align 8
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44, i64 %45, i32 0)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %49 = load i64, i64* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 8
  %50 = call i32 @ecore_rd(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %53 = load i64, i64* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 8
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 65534
  %56 = call i32 @ecore_wr(%struct.ecore_hwfn* %51, %struct.ecore_ptt* %52, i64 %53, i32 %55)
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ECORE_IS_BB_A0(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %34
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ECORE_IS_CMT(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @DP_ERR(i32 %71, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %74 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %75 = load i64, i64* @NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, align 8
  %76 = call i32 @ecore_wr(%struct.ecore_hwfn* %73, %struct.ecore_ptt* %74, i64 %75, i32 1431655765)
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %78 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %79 = load i64, i64* @NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, align 8
  %80 = add nsw i64 %79, 4
  %81 = call i32 @ecore_wr(%struct.ecore_hwfn* %77, %struct.ecore_ptt* %78, i64 %80, i32 1431655765)
  br label %82

82:                                               ; preds = %68, %62, %34
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %84 = call i64 @IS_IWARP(%struct.ecore_hwfn* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %88 = call i32 @ecore_iwarp_stop(%struct.ecore_hwfn* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ECORE_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %94 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %95 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %93, %struct.ecore_ptt* %94)
  store i32 0, i32* %2, align 4
  br label %160

96:                                               ; preds = %86
  br label %108

97:                                               ; preds = %82
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %99 = call i32 @ecore_roce_stop(%struct.ecore_hwfn* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ECORE_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %105 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %106 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %104, %struct.ecore_ptt* %105)
  store i32 0, i32* %2, align 4
  br label %160

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %110 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %111 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %109, %struct.ecore_ptt* %110)
  %112 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %6, i32 0, i32 8)
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %114 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %6, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %119 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %6, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %121 = load i32, i32* @RDMA_RAMROD_FUNC_CLOSE, align 4
  %122 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %123 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %120, %struct.ecore_spq_entry** %7, i32 %121, i32 %126, %struct.ecore_sp_init_data* %6)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @ECORE_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %108
  br label %152

132:                                              ; preds = %108
  %133 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %134 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store %struct.rdma_close_func_ramrod_data* %135, %struct.rdma_close_func_ramrod_data** %5, align 8
  %136 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %137 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.rdma_close_func_ramrod_data*, %struct.rdma_close_func_ramrod_data** %5, align 8
  %142 = getelementptr inbounds %struct.rdma_close_func_ramrod_data, %struct.rdma_close_func_ramrod_data* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %144 = load i32, i32* @ECORE_RDMA_CNQ_RAM, align 4
  %145 = call i64 @RESC_START(%struct.ecore_hwfn* %143, i32 %144)
  %146 = load %struct.rdma_close_func_ramrod_data*, %struct.rdma_close_func_ramrod_data** %5, align 8
  %147 = getelementptr inbounds %struct.rdma_close_func_ramrod_data, %struct.rdma_close_func_ramrod_data* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %149 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %150 = load i32, i32* @OSAL_NULL, align 4
  %151 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %148, %struct.ecore_spq_entry* %149, i32 %150)
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %132, %131
  %153 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %154 = call i32 @ecore_rdma_free(%struct.ecore_hwfn* %153)
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %156 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %155, i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %152, %103, %92, %29, %22
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_rdma_deactivate(%struct.ecore_hwfn*) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i64 @ECORE_IS_BB_A0(i32) #1

declare dso_local i64 @ECORE_IS_CMT(i32) #1

declare dso_local i32 @DP_ERR(i32, i8*) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_stop(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_roce_stop(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32) #1

declare dso_local i32 @ecore_rdma_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
