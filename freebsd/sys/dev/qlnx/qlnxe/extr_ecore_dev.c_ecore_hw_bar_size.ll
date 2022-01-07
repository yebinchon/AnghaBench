; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_bar_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_hw_bar_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@BAR_ID_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_PF_BAR0_SIZE = common dso_local global i32 0, align 4
@PGLUE_B_REG_PF_BAR1_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"BAR size not configured. Assuming BAR size of 256kB for GRC and 512kB for DB\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"BAR size not configured. Assuming BAR size of 512kB for GRC and 512kB for DB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32)* @ecore_hw_bar_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_hw_bar_size(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @BAR_ID_0, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @PGLUE_B_REG_PF_BAR0_SIZE, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @PGLUE_B_REG_PF_BAR1_SIZE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_VF(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ecore_vf_hw_bar_size(%struct.ecore_hwfn* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %17
  %29 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %30 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ecore_rd(%struct.ecore_hwfn* %29, %struct.ecore_ptt* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 15
  %38 = shl i32 1, %37
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %28
  %40 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ECORE_IS_CMT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = call i32 @DP_INFO(%struct.ecore_hwfn* %46, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @BAR_ID_0, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 262144, i32 524288
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %39
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %54 = call i32 @DP_INFO(%struct.ecore_hwfn* %53, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  store i32 524288, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %45, %35, %24
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @ecore_vf_hw_bar_size(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i64 @ECORE_IS_CMT(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
