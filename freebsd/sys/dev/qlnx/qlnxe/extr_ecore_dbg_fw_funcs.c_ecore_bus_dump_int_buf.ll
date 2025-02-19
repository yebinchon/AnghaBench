; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_int_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_int_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@DBG_REG_INTR_BUFFER_WR_PTR = common dso_local global i32 0, align 4
@DBG_REG_WRAP_ON_INT_BUFFER = common dso_local global i32 0, align 4
@INT_BUF_NUM_OF_LINES = common dso_local global i32 0, align 4
@DBG_REG_INTR_BUFFER_RD_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Unexpected Debug Bus error: internal buffer read pointer is not zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_bus_dump_int_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_int_buf(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %12 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %13 = load i32, i32* @DBG_REG_INTR_BUFFER_WR_PTR, align 4
  %14 = call i32 @ecore_rd(%struct.ecore_hwfn* %11, %struct.ecore_ptt* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %17 = load i32, i32* @DBG_REG_WRAP_ON_INT_BUFFER, align 4
  %18 = call i32 @ecore_rd(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @INT_BUF_NUM_OF_LINES, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @INT_BUF_NUM_OF_LINES, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @ecore_bus_dump_int_buf_range(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32* %31, i32 %32, i32 %34, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %25, %20
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ecore_bus_dump_int_buf_range(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32* %46, i32 %47, i32 0, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %78

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %58 = load i32, i32* @DBG_REG_INTR_BUFFER_RD_PTR, align 4
  %59 = call i32 @ecore_rd(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %63 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ecore_bus_dump_int_buf_range(%struct.ecore_hwfn* %62, %struct.ecore_ptt* %63, i32* %67, i32 %68, i32 0, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %76

73:                                               ; preds = %55
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %75 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %74, i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %61
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %40
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_bus_dump_int_buf_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
