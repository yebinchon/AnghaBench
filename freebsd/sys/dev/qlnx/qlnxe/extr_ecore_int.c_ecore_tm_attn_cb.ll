; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_tm_attn_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_tm_attn_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }

@TM_REG_INT_STS_1 = common dso_local global i32 0, align 4
@TM_REG_INT_STS_1_PEND_TASK_SCAN = common dso_local global i32 0, align 4
@TM_REG_INT_STS_1_PEND_CONN_SCAN = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"TM attention on emulation - most likely results of clock-ratios\0A\00", align 1
@TM_REG_INT_MASK_1 = common dso_local global i32 0, align 4
@TM_REG_INT_MASK_1_PEND_CONN_SCAN = common dso_local global i32 0, align 4
@TM_REG_INT_MASK_1_PEND_TASK_SCAN = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_tm_attn_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_tm_attn_cb(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @CHIP_REV_IS_EMUL_B0(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TM_REG_INT_STS_1, align 4
  %16 = call i32 @ecore_rd(%struct.ecore_hwfn* %11, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TM_REG_INT_STS_1_PEND_TASK_SCAN, align 4
  %19 = load i32, i32* @TM_REG_INT_STS_1_PEND_CONN_SCAN, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %10
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TM_REG_INT_STS_1_PEND_TASK_SCAN, align 4
  %29 = load i32, i32* @TM_REG_INT_STS_1_PEND_CONN_SCAN, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = call i32 @DP_INFO(%struct.ecore_hwfn* %34, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TM_REG_INT_MASK_1, align 4
  %42 = call i32 @ecore_rd(%struct.ecore_hwfn* %37, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @TM_REG_INT_MASK_1_PEND_CONN_SCAN, align 4
  %44 = load i32, i32* @TM_REG_INT_MASK_1_PEND_TASK_SCAN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %50 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TM_REG_INT_MASK_1, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ecore_wr(%struct.ecore_hwfn* %48, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %1
  %57 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %36, %24
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @CHIP_REV_IS_EMUL_B0(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
