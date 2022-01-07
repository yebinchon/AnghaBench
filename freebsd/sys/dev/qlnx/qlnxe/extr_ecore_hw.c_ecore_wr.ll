; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@ECORE_MSG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bar_addr 0x%x, hw_addr 0x%x, val 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"reg_fifo error was caused by a call to ecore_wr(0x%x, 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_wr(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %13 = call i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %18 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ecore_set_ptt(%struct.ecore_hwfn* %17, %struct.ecore_ptt* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @REG_WR(%struct.ecore_hwfn* %21, i32 %22, i32 %23)
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load i32, i32* @ECORE_MSG_HW, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @CHIP_REV_IS_SLOW(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = call i32 @OSAL_UDELAY(i32 100)
  br label %38

38:                                               ; preds = %36, %4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %44 = call i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn* %42, %struct.ecore_ptt* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @OSAL_WARN(i32 %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @ecore_is_reg_fifo_empty(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_set_ptt(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @REG_WR(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(i32) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

declare dso_local i32 @OSAL_WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
