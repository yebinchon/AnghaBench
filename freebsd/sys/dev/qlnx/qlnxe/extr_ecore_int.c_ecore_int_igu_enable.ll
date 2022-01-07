; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INT_MODE_INTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Slowpath IRQ request failed\0A\00", align 1
@ECORE_NORESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_igu_enable(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %12 = call i32 @ecore_int_igu_enable_attn(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ECORE_INT_MODE_INTA, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = call i64 @IS_LEAD_HWFN(%struct.ecore_hwfn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %3
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = call i32 @OSAL_SLOWPATH_IRQ_REQ(%struct.ecore_hwfn* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %28 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %27, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ECORE_NORESOURCES, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %16
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ecore_int_igu_enable_int(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %36)
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ecore_int_igu_enable_attn(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_SLOWPATH_IRQ_REQ(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_int_igu_enable_int(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
