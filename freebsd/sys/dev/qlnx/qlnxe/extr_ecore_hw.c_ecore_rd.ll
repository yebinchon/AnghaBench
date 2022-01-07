; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bar_addr 0x%x, hw_addr 0x%x, val 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"reg_fifo error was caused by a call to ecore_rd(0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rd(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %12 = call i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ecore_set_ptt(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @REG_RD(%struct.ecore_hwfn* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = load i32, i32* @ECORE_MSG_HW, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @CHIP_REV_IS_SLOW(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = call i32 @OSAL_UDELAY(i32 100)
  br label %36

36:                                               ; preds = %34, %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %41 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %42 = call i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn* %40, %struct.ecore_ptt* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %36
  %46 = phi i1 [ false, %36 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @OSAL_WARN(i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_set_ptt(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @REG_RD(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

declare dso_local i32 @OSAL_WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
