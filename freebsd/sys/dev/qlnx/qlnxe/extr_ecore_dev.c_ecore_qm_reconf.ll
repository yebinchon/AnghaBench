; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_qm_reconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_qm_reconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32, %struct.ecore_qm_info }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_qm_info = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@qm_lock = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@PHASE_QM_PF = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_qm_reconf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_qm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 2
  store %struct.ecore_qm_info* %10, %struct.ecore_qm_info** %6, align 8
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = call i32 @ecore_init_qm_info(%struct.ecore_hwfn* %11)
  %13 = call i32 @OSAL_SPIN_LOCK(i32* @qm_lock)
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ecore_send_qm_stop_cmd(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 0, i32 1, i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = call i32 @OSAL_SPIN_UNLOCK(i32* @qm_lock)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = call i32 @ecore_init_clear_rt_data(%struct.ecore_hwfn* %29)
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %33 = call i32 @ecore_qm_init_pf(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, i32 0)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %36 = load i32, i32* @PHASE_QM_PF, align 4
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ecore_init_run(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %36, i32 %39, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ECORE_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %28
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %28
  %51 = call i32 @OSAL_SPIN_LOCK(i32* @qm_lock)
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %53 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %54 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %55 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ecore_send_qm_stop_cmd(%struct.ecore_hwfn* %52, %struct.ecore_ptt* %53, i32 1, i32 1, i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = call i32 @OSAL_SPIN_UNLOCK(i32* @qm_lock)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %50
  %67 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %64, %48, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ecore_init_qm_info(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @ecore_send_qm_stop_cmd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @ecore_init_clear_rt_data(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_qm_init_pf(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_init_run(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
