; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_final_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_final_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@FINAL_CLEANUP_POLL_CNT = common dso_local global i32 0, align 4
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Skipping final cleanup for non-ASIC\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@GTT_BAR0_MAP_REG_USDM_RAM = common dso_local global i32 0, align 4
@X_FINAL_CLEANUP_AGG_INT = common dso_local global i32 0, align 4
@SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT = common dso_local global i32 0, align 4
@SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT = common dso_local global i32 0, align 4
@SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT = common dso_local global i32 0, align 4
@SDM_COMP_TYPE_AGG_INT = common dso_local global i32 0, align 4
@SDM_OP_GEN_COMP_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Unexpected; Found final cleanup notification before initiating final cleanup\0A\00", align 1
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Sending final cleanup for PFVF[%d] [Command %08x]\0A\00", align 1
@XSDM_REG_OPERATION_GEN = common dso_local global i32 0, align 4
@FINAL_CLEANUP_POLL_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to receive FW final cleanup notification\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_final_cleanup(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @FINAL_CLEANUP_POLL_CNT, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CHIP_REV_IS_TEDIBEAR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @CHIP_REV_IS_SLOW(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %4
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %29 = call i32 @DP_INFO(%struct.ecore_hwfn* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %30, i32* %5, align 4
  br label %113

31:                                               ; preds = %21
  %32 = load i32, i32* @GTT_BAR0_MAP_REG_USDM_RAM, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @USTORM_FLR_FINAL_ACK_OFFSET(i32 %35)
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 16
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = load i32, i32* @X_FINAL_CLEANUP_AGG_INT, align 4
  %45 = load i32, i32* @SDM_AGG_INT_COMP_PARAMS_AGG_INT_INDEX_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_ENABLE_SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SDM_AGG_INT_COMP_PARAMS_AGG_VECTOR_BIT_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @SDM_COMP_TYPE_AGG_INT, align 4
  %59 = load i32, i32* @SDM_OP_GEN_COMP_TYPE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @REG_RD(%struct.ecore_hwfn* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %43
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %69 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %68, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @REG_WR(%struct.ecore_hwfn* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %67, %43
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %75 = load i32, i32* @ECORE_MSG_IOV, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %74, i32 %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %81 = load i32, i32* @XSDM_REG_OPERATION_GEN, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ecore_wr(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %95, %73
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i64 @REG_RD(%struct.ecore_hwfn* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %12, align 4
  %92 = icmp ne i32 %90, 0
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i32, i32* @FINAL_CLEANUP_POLL_TIME, align 4
  %97 = call i32 @OSAL_MSLEEP(i32 %96)
  br label %84

98:                                               ; preds = %93
  %99 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @REG_RD(%struct.ecore_hwfn* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %104, i32* %13, align 4
  br label %108

105:                                              ; preds = %98
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %107 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %106, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %103
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @REG_WR(%struct.ecore_hwfn* %109, i32 %110, i32 0)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %108, %27
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @CHIP_REV_IS_TEDIBEAR(i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @USTORM_FLR_FINAL_ACK_OFFSET(i32) #1

declare dso_local i64 @REG_RD(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
