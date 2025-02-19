; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_handle_process_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_handle_process_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_dev* }
%struct.ecore_dev = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Received a process kill indication\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Ignoring the indication since a recovery process is already in progress\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Process kill counter: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_mcp_handle_process_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcp_handle_process_kill(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  store %struct.ecore_dev* %9, %struct.ecore_dev** %5, align 8
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %12 = call i32 @ecore_int_igu_disable_int(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11)
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %13, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %17 = call %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev* %16)
  %18 = icmp ne %struct.ecore_hwfn* %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %26, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %39

28:                                               ; preds = %20
  %29 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %33 = call i32 @ecore_get_process_kill_counter(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_NOTICE(%struct.ecore_hwfn* %34, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = call i32 @OSAL_SCHEDULE_RECOVERY_HANDLER(%struct.ecore_hwfn* %37)
  br label %39

39:                                               ; preds = %28, %25, %19
  ret void
}

declare dso_local i32 @ecore_int_igu_disable_int(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.ecore_hwfn* @ECORE_LEADING_HWFN(%struct.ecore_dev*) #1

declare dso_local i32 @ecore_get_process_kill_counter(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @OSAL_SCHEDULE_RECOVERY_HANDLER(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
