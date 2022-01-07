; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_deregister_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_deregister_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RDMA_RETURN_NIG_DRAIN_REQ = common dso_local global i64 0, align 8
@ECORE_RDMA_DEREGISTER_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"De-registered itid=%d\0A\00", align 1
@RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"itid=%d, fw_ret_code=%d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"deregister failed after three attempts. itid=%d, fw_ret_code=%d\0A\00", align 1
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_deregister_tid(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca %struct.ecore_hwfn*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %9, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ecore_rdma_send_deregister_tid_ramrod(%struct.ecore_hwfn* %12, i32 %13, i64* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ECORE_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @RDMA_RETURN_NIG_DRAIN_REQ, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %73

25:                                               ; preds = %20
  %26 = load i32, i32* @ECORE_RDMA_DEREGISTER_TIMEOUT_MSEC, align 4
  %27 = call i32 @OSAL_MSLEEP(i32 %26)
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ecore_rdma_send_deregister_tid_ramrod(%struct.ecore_hwfn* %28, i32 %29, i64* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %99

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @RDMA_RETURN_NIG_DRAIN_REQ, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %73

41:                                               ; preds = %36
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %43 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %42)
  store %struct.ecore_ptt* %43, %struct.ecore_ptt** %8, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %45 = icmp ne %struct.ecore_ptt* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %47, i32* %3, align 4
  br label %99

48:                                               ; preds = %41
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %51 = call i32 @ecore_mcp_drain(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ECORE_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %58 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %99

60:                                               ; preds = %48
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %63 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62)
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ecore_rdma_send_deregister_tid_ramrod(%struct.ecore_hwfn* %64, i32 %65, i64* %7)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ECORE_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %99

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %40, %24
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @RDMA_RETURN_OK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %79 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %78, i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %82, i32* %3, align 4
  br label %99

83:                                               ; preds = %73
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %88, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %90)
  %92 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %92, i32* %3, align 4
  br label %99

93:                                               ; preds = %83
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %94, i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %95, i64 %96)
  %98 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %87, %77, %70, %55, %46, %34, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ecore_rdma_send_deregister_tid_ramrod(%struct.ecore_hwfn*, i32, i64*) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_mcp_drain(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
