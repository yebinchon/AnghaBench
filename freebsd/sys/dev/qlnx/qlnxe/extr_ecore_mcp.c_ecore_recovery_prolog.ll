; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_recovery_prolog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_recovery_prolog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }
%struct.ecore_hwfn = type { %struct.ecore_ptt* }
%struct.ecore_ptt = type { i32 }

@ECORE_RECOVERY_PROLOG_SLEEP_MS = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ecore_pglueb_set_pfid_enable() failed. rc = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_recovery_prolog(%struct.ecore_dev* %0) #0 {
  %2 = alloca %struct.ecore_dev*, align 8
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_dev* %0, %struct.ecore_dev** %2, align 8
  %6 = load %struct.ecore_dev*, %struct.ecore_dev** %2, align 8
  %7 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %6)
  store %struct.ecore_hwfn* %7, %struct.ecore_hwfn** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  store %struct.ecore_ptt* %10, %struct.ecore_ptt** %4, align 8
  %11 = load i32, i32* @ECORE_RECOVERY_PROLOG_SLEEP_MS, align 4
  %12 = call i32 @OSAL_MSLEEP(i32 %11)
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %15 = call i32 @ecore_pglueb_set_pfid_enable(%struct.ecore_hwfn* %13, %struct.ecore_ptt* %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ECORE_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %20, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @ecore_pglueb_set_pfid_enable(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
