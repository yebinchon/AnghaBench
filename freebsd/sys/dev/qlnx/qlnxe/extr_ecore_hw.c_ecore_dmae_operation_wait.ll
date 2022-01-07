; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_operation_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_dmae_operation_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_EMUL_FACTOR = common dso_local global i32 0, align 4
@ECORE_FPGA_FACTOR = common dso_local global i32 0, align 4
@DMAE_COMPLETION_VAL = common dso_local global i64 0, align 8
@DMAE_MIN_WAIT_TIME = common dso_local global i32 0, align 4
@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Timed-out waiting for operation to complete. Completion word is 0x%08x expected 0x%08x.\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_dmae_operation_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dmae_operation_wait(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  store i32 10000, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @CHIP_REV_IS_EMUL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ECORE_EMUL_FACTOR, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @CHIP_REV_IS_FPGA(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @ECORE_FPGA_FACTOR, align 4
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 1, %23 ]
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %14, %13 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @OSAL_BARRIER(i32 %33)
  br label %35

35:                                               ; preds = %63, %26
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DMAE_COMPLETION_VAL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = load i32, i32* @DMAE_MIN_WAIT_TIME, align 4
  %45 = call i32 @OSAL_UDELAY(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ECORE_MSG_HW, align 4
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %56 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMAE_COMPLETION_VAL, align 8
  %61 = call i32 @DP_NOTICE(i32 %53, i32 %54, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %62, i32* %5, align 4
  br label %68

63:                                               ; preds = %43
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %65 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @OSAL_BARRIER(i32 %66)
  br label %35

68:                                               ; preds = %50, %35
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ECORE_SUCCESS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @CHIP_REV_IS_EMUL(i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i32 @OSAL_BARRIER(i32) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
