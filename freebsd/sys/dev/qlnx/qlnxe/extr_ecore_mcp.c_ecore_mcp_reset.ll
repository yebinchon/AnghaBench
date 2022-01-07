; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.ecore_ptt = type { i32 }

@CHIP_MCP_RESP_ITER_US = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@EMUL_MCP_RESP_ITER_US = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"The MFW is not responsive. Avoid sending MCP_RESET mailbox command.\0A\00", align 1
@ECORE_ABORTED = common dso_local global i32 0, align 4
@MISCS_REG_GENERIC_POR_0 = common dso_local global i32 0, align 4
@drv_mb_header = common dso_local global i32 0, align 4
@DRV_MSG_CODE_MCP_RESET = common dso_local global i64 0, align 8
@ECORE_MCP_RESET_RETRIES = common dso_local global i64 0, align 8
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"MCP was reset after %d usec\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to reset MCP\0A\00", align 1
@ECORE_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_reset(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %11 = load i64, i64* @CHIP_MCP_RESP_ITER_US, align 8
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @CHIP_REV_IS_EMUL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @EMUL_MCP_RESP_ITER_US, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %29 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %28, i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ECORE_ABORTED, align 4
  store i32 %30, i32* %3, align 4
  br label %99

31:                                               ; preds = %20
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @OSAL_SPIN_LOCK(i32* %35)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %39 = load i32, i32* @MISCS_REG_GENERIC_POR_0, align 4
  %40 = call i64 @ecore_rd(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %43 = call i32 @ecore_mcp_reread_offsets(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42)
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %51 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %52 = load i32, i32* @drv_mb_header, align 4
  %53 = load i64, i64* @DRV_MSG_CODE_MCP_RESET, align 8
  %54 = load i64, i64* %7, align 8
  %55 = or i64 %53, %54
  %56 = call i32 @DRV_MB_WR(%struct.ecore_hwfn* %50, %struct.ecore_ptt* %51, i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %72, %31
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @OSAL_UDELAY(i64 %58)
  br label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %63 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %64 = load i32, i32* @MISCS_REG_GENERIC_POR_0, align 4
  %65 = call i64 @ecore_rd(%struct.ecore_hwfn* %62, %struct.ecore_ptt* %63, i32 %64)
  %66 = icmp eq i64 %61, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* @ECORE_MCP_RESET_RETRIES, align 8
  %71 = icmp slt i64 %68, %70
  br label %72

72:                                               ; preds = %67, %60
  %73 = phi i1 [ false, %60 ], [ %71, %67 ]
  br i1 %73, label %57, label %74

74:                                               ; preds = %72
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %77 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %78 = load i32, i32* @MISCS_REG_GENERIC_POR_0, align 4
  %79 = call i64 @ecore_rd(%struct.ecore_hwfn* %76, %struct.ecore_ptt* %77, i32 %78)
  %80 = icmp ne i64 %75, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %83 = load i32, i32* @ECORE_MSG_SP, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %8, align 8
  %86 = mul nsw i64 %84, %85
  %87 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  br label %92

88:                                               ; preds = %74
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %90 = call i32 @DP_ERR(%struct.ecore_hwfn* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %94 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = call i32 @OSAL_SPIN_UNLOCK(i32* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %92, %27
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_mcp_reread_offsets(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DRV_MB_WR(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64) #1

declare dso_local i32 @OSAL_UDELAY(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
