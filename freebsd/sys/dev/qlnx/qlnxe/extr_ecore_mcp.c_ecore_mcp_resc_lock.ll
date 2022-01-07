; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_mcp.c_ecore_mcp_resc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_resc_lock_params = type { i64, i64, i32, i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_mcp_resc_lock(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_resc_lock_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_resc_lock_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_resc_lock_params* %2, %struct.ecore_resc_lock_params** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %49, %3
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %16 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %21 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @DIV_ROUND_UP(i32 %22, i32 1000)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @OSAL_MSLEEP(i64 %24)
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @OSAL_UDELAY(i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %35 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %36 = call i32 @__ecore_mcp_resc_lock(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, %struct.ecore_resc_lock_params* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ECORE_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %44 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %8, align 8
  %52 = load %struct.ecore_resc_lock_params*, %struct.ecore_resc_lock_params** %7, align 8
  %53 = getelementptr inbounds %struct.ecore_resc_lock_params, %struct.ecore_resc_lock_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %11, label %56

56:                                               ; preds = %49, %47
  %57 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %40
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i64) #1

declare dso_local i32 @OSAL_UDELAY(i32) #1

declare dso_local i32 @__ecore_mcp_resc_lock(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_resc_lock_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
