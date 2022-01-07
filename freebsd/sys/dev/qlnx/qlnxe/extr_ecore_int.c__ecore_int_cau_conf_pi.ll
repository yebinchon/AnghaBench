; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c__ecore_int_cau_conf_pi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c__ecore_int_cau_conf_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i64, i32 }
%struct.ecore_ptt = type { i32 }
%struct.cau_pi_entry = type { i32 }

@PIS_PER_SB_E4 = common dso_local global i32 0, align 4
@CAU_PI_ENTRY_PI_TIMESET = common dso_local global i32 0, align 4
@ECORE_COAL_RX_STATE_MACHINE = common dso_local global i32 0, align 4
@CAU_PI_ENTRY_FSM_SEL = common dso_local global i32 0, align 4
@CAU_REG_PI_MEMORY = common dso_local global i64 0, align 8
@CAU_REG_PI_MEMORY_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32)* @_ecore_int_cau_conf_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ecore_int_cau_conf_pi(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cau_pi_entry, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @IS_VF(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %73

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PIS_PER_SB_E4, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = call i32 @OSAL_MEMSET(%struct.cau_pi_entry* %13, i32 0, i32 4)
  %27 = getelementptr inbounds %struct.cau_pi_entry, %struct.cau_pi_entry* %13, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAU_PI_ENTRY_PI_TIMESET, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @SET_FIELD(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @ECORE_COAL_RX_STATE_MACHINE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.cau_pi_entry, %struct.cau_pi_entry* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAU_PI_ENTRY_FSM_SEL, align 4
  %39 = call i32 @SET_FIELD(i32 %37, i32 %38, i32 0)
  br label %45

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.cau_pi_entry, %struct.cau_pi_entry* %13, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CAU_PI_ENTRY_FSM_SEL, align 4
  %44 = call i32 @SET_FIELD(i32 %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %15, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %50 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %55 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %56 = load i64, i64* @CAU_REG_PI_MEMORY, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = add i64 %56, %59
  %61 = bitcast %struct.cau_pi_entry* %13 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ecore_wr(%struct.ecore_hwfn* %54, %struct.ecore_ptt* %55, i64 %60, i32 %62)
  br label %73

64:                                               ; preds = %45
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %66 = load i64, i64* @CAU_REG_PI_MEMORY_RT_OFFSET, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = bitcast %struct.cau_pi_entry* %13 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %65, i64 %69, i32 %71)
  br label %73

73:                                               ; preds = %21, %64, %53
  ret void
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.cau_pi_entry*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
