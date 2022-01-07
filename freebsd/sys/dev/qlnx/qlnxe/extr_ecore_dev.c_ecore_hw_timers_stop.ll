; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_timers_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_timers_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@TM_REG_PF_ENABLE_CONN = common dso_local global i32 0, align 4
@TM_REG_PF_ENABLE_TASK = common dso_local global i32 0, align 4
@ECORE_HW_STOP_RETRY_LIMIT = common dso_local global i32 0, align 4
@TM_REG_PF_SCAN_ACTIVE_CONN = common dso_local global i32 0, align 4
@TM_REG_PF_SCAN_ACTIVE_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Timers linear scans are not over [Connection %02x Tasks %02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_dev*, %struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_hw_timers_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_hw_timers_stop(%struct.ecore_dev* %0, %struct.ecore_hwfn* %1, %struct.ecore_ptt* %2) #0 {
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %4, align 8
  store %struct.ecore_hwfn* %1, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %2, %struct.ecore_ptt** %6, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %9 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %10 = load i32, i32* @TM_REG_PF_ENABLE_CONN, align 4
  %11 = call i32 @ecore_wr(%struct.ecore_hwfn* %8, %struct.ecore_ptt* %9, i32 %10, i32 0)
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %14 = load i32, i32* @TM_REG_PF_ENABLE_TASK, align 4
  %15 = call i32 @ecore_wr(%struct.ecore_hwfn* %12, %struct.ecore_ptt* %13, i32 %14, i32 0)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %43, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ECORE_HW_STOP_RETRY_LIMIT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %30 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %31 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_CONN, align 4
  %32 = call i64 @ecore_rd(%struct.ecore_hwfn* %29, %struct.ecore_ptt* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %37 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_TASK, align 4
  %38 = call i64 @ecore_rd(%struct.ecore_hwfn* %35, %struct.ecore_ptt* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %46

41:                                               ; preds = %34, %28
  %42 = call i32 @OSAL_MSLEEP(i32 1)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %16

46:                                               ; preds = %40, %26
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ECORE_HW_STOP_RETRY_LIMIT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %64

51:                                               ; preds = %46
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %55 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_CONN, align 4
  %56 = call i64 @ecore_rd(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %59 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %60 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_TASK, align 4
  %61 = call i64 @ecore_rd(%struct.ecore_hwfn* %58, %struct.ecore_ptt* %59, i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %52, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
