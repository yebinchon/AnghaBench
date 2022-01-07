; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_enable_attn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_igu_enable_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"FPGA - Don't enable Attentions in IGU and MISC\0A\00", align 1
@IGU_REG_ATTENTION_ENABLE = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_IGU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_int_igu_enable_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_int_igu_enable_attn(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @CHIP_REV_IS_FPGA(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = call i32 @DP_INFO(%struct.ecore_hwfn* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %16 = load i32, i32* @IGU_REG_ATTENTION_ENABLE, align 4
  %17 = call i32 @ecore_wr(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %16, i32 0)
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %20 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %21 = call i32 @ecore_wr(%struct.ecore_hwfn* %18, %struct.ecore_ptt* %19, i32 %20, i32 4095)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %24 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %25 = call i32 @ecore_wr(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i32 %24, i32 4095)
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %28 = load i32, i32* @IGU_REG_ATTENTION_ENABLE, align 4
  %29 = call i32 @ecore_wr(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32 %28, i32 4095)
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OSAL_MMIOWB(i32 %32)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %36 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_IGU, align 4
  %37 = call i32 @ecore_wr(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i32 %36, i32 255)
  br label %38

38:                                               ; preds = %13, %10
  ret void
}

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @OSAL_MMIOWB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
