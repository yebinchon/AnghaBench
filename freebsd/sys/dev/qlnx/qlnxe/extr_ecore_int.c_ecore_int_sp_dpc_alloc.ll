; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sp_dpc_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_sp_dpc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_int_sp_dpc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_int_sp_dpc_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %5 = call i32 @OSAL_DPC_ALLOC(%struct.ecore_hwfn* %4)
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @OSAL_DPC_ALLOC(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
