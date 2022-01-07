; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c___ecore_spq_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c___ecore_spq_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ecore_spq_comp_done = type { i32, i32 }

@SPQ_BLOCK_SLEEP_MAX_ITER = common dso_local global i32 0, align 4
@SPQ_BLOCK_DELAY_MAX_ITER = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@SPQ_BLOCK_SLEEP_MS = common dso_local global i32 0, align 4
@SPQ_BLOCK_DELAY_US = common dso_local global i32 0, align 4
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i32*, i32)* @__ecore_spq_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ecore_spq_block(%struct.ecore_hwfn* %0, %struct.ecore_spq_entry* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_spq_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_spq_comp_done*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_spq_entry* %1, %struct.ecore_spq_entry** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ecore_spq_comp_done*
  store %struct.ecore_spq_comp_done* %16, %struct.ecore_spq_comp_done** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @SPQ_BLOCK_SLEEP_MAX_ITER, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @SPQ_BLOCK_DELAY_MAX_ITER, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @CHIP_REV_IS_EMUL(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %34, 5
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %30, %23
  br label %37

37:                                               ; preds = %71, %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %11, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = call i32 @OSAL_POLL_MODE_DPC(%struct.ecore_hwfn* %42)
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @OSAL_SMP_RMB(i32 %46)
  %48 = load %struct.ecore_spq_comp_done*, %struct.ecore_spq_comp_done** %10, align 8
  %49 = getelementptr inbounds %struct.ecore_spq_comp_done, %struct.ecore_spq_comp_done* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.ecore_spq_comp_done*, %struct.ecore_spq_comp_done** %10, align 8
  %57 = getelementptr inbounds %struct.ecore_spq_comp_done, %struct.ecore_spq_comp_done* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %61, i32* %5, align 4
  br label %74

62:                                               ; preds = %41
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @SPQ_BLOCK_SLEEP_MS, align 4
  %67 = call i32 @OSAL_MSLEEP(i32 %66)
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @SPQ_BLOCK_DELAY_US, align 4
  %70 = call i32 @OSAL_UDELAY(i32 %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %37

72:                                               ; preds = %37
  %73 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i32 @OSAL_POLL_MODE_DPC(%struct.ecore_hwfn*) #1

declare dso_local i32 @OSAL_SMP_RMB(i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
