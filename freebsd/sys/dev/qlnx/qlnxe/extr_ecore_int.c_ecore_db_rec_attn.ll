; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_db_rec_attn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_db_rec_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_DB_REC_COUNT = common dso_local global i32 0, align 4
@DORQ_REG_PF_USAGE_CNT = common dso_local global i32 0, align 4
@ECORE_DB_REC_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"DB recovery: doorbell usage failed to zero after %d usec. usage was %x\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@DORQ_REG_DPM_FORCE_ABORT = common dso_local global i32 0, align 4
@DORQ_REG_PF_OVFL_STICKY = common dso_local global i32 0, align 4
@DB_REC_REAL_DEAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_db_rec_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_db_rec_attn(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %8 = load i32, i32* @ECORE_DB_REC_COUNT, align 4
  store i32 %8, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %21 = load i32, i32* @DORQ_REG_PF_USAGE_CNT, align 4
  %22 = call i32 @ecore_rd(%struct.ecore_hwfn* %19, %struct.ecore_ptt* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @ECORE_DB_REC_INTERVAL, align 4
  %24 = call i32 @OSAL_UDELAY(i32 %23)
  br label %9

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ECORE_DB_REC_INTERVAL, align 4
  %33 = load i32, i32* @ECORE_DB_REC_COUNT, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @DP_NOTICE(i32 %31, i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %25
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %41 = load i32, i32* @DORQ_REG_DPM_FORCE_ABORT, align 4
  %42 = call i32 @ecore_wr(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i32 %41, i32 1)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %45 = load i32, i32* @DORQ_REG_PF_OVFL_STICKY, align 4
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %43, %struct.ecore_ptt* %44, i32 %45, i32 0)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = load i32, i32* @DB_REC_REAL_DEAL, align 4
  %49 = call i32 @ecore_db_recovery_execute(%struct.ecore_hwfn* %47, i32 %48)
  %50 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %38, %28
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_db_recovery_execute(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
