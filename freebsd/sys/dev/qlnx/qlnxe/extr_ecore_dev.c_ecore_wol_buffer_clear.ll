; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_wol_buffer_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_wol_buffer_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@NIG_REG_WAKE_BUFFER_CLEAR_BB = common dso_local global i32 0, align 4
@WOL_REG_WAKE_BUFFER_CLEAR_K2_E5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"ecore_wol_buffer_clear: reset REG_WAKE_BUFFER_CLEAR offset=0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_wol_buffer_clear(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ECORE_IS_BB(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @NIG_REG_WAKE_BUFFER_CLEAR_BB, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @WOL_REG_WAKE_BUFFER_CLEAR_K2_E5, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DP_INFO(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ECORE_IS_BB(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ecore_wr(%struct.ecore_hwfn* %28, %struct.ecore_ptt* %29, i32 %30, i32 1)
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %33 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ecore_wr(%struct.ecore_hwfn* %32, %struct.ecore_ptt* %33, i32 %34, i32 0)
  br label %45

36:                                               ; preds = %15
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ecore_mcp_wol_wr(%struct.ecore_hwfn* %37, %struct.ecore_ptt* %38, i32 %39, i32 1)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ecore_mcp_wol_wr(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %36, %27
  ret void
}

declare dso_local i64 @ECORE_IS_BB(i32) #1

declare dso_local i32 @DP_INFO(i32, i8*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_mcp_wol_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
