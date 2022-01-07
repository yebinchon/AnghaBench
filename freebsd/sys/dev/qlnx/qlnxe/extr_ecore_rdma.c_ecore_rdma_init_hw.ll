; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Initializing HW\0A\00", align 1
@PRS_REG_ROCE_DEST_QP_MAX_PF = common dso_local global i64 0, align 8
@PRS_REG_SEARCH_ROCE = common dso_local global i32 0, align 4
@PRS_REG_LIGHT_L2_ETHERTYPE_EN = common dso_local global i64 0, align 8
@NIG_REG_LLH_ENG_CLS_ENG_ID_TBL = common dso_local global i64 0, align 8
@PROTOCOLID_ROCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"The first RoCE's cid should be even\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Initializing HW - Done\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_rdma_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_rdma_init_hw(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %8 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %9 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %7, i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = call i64 @IS_IWARP(%struct.ecore_hwfn* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %18 = call i32 @ecore_iwarp_init_hw(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17)
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %22 = load i64, i64* @PRS_REG_ROCE_DEST_QP_MAX_PF, align 8
  %23 = call i32 @ecore_wr(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i64 %22, i32 0)
  %24 = load i32, i32* @PRS_REG_SEARCH_ROCE, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %29 = load i64, i64* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 8
  %30 = call i32 @ecore_rd(%struct.ecore_hwfn* %27, %struct.ecore_ptt* %28, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %33 = load i64, i64* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 8
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 1
  %36 = call i32 @ecore_wr(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, i64 %33, i32 %35)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ECORE_IS_BB_A0(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %19
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ECORE_IS_CMT(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %51 = load i64, i64* @NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, align 8
  %52 = call i32 @ecore_wr(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50, i64 %51, i32 0)
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %55 = load i64, i64* @NIG_REG_LLH_ENG_CLS_ENG_ID_TBL, align 8
  %56 = add nsw i64 %55, 4
  %57 = call i32 @ecore_wr(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i64 %56, i32 0)
  br label %58

58:                                               ; preds = %48, %42, %19
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %60 = load i32, i32* @PROTOCOLID_ROCE, align 4
  %61 = call i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn* %59, i32 %60)
  %62 = srem i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %66 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %65, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %58
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %70 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %71 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %69, i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %64, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_init_hw(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

declare dso_local i64 @ECORE_IS_BB_A0(i32) #1

declare dso_local i64 @ECORE_IS_CMT(i32) #1

declare dso_local i32 @ecore_cxt_get_proto_cid_start(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
