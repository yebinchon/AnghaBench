; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_set_gre_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_set_gre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@PRS_REG_ENCAPSULATION_TYPE_EN = common dso_local global i32 0, align 4
@PRS_REG_ENCAPSULATION_TYPE_EN_ETH_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_ENCAPSULATION_TYPE_EN_IP_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 = common dso_local global i32 0, align 4
@PRS_ETH_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@PRS_ETH_TUNN_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@NIG_REG_ENC_TYPE_ENABLE = common dso_local global i32 0, align 4
@NIG_REG_ENC_TYPE_ENABLE_ETH_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_ENC_TYPE_ENABLE_IP_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_L2_EDPM_TUNNEL_GRE_ETH_EN = common dso_local global i32 0, align 4
@DORQ_REG_L2_EDPM_TUNNEL_GRE_IP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_set_gre_enable(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %11 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %12 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %13 = call i64 @ecore_rd(%struct.ecore_hwfn* %10, %struct.ecore_ptt* %11, i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN_ETH_OVER_GRE_ENABLE_SHIFT, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %14, i32 %15, i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN_IP_OVER_GRE_ENABLE_SHIFT, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %18, i32 %19, i32 %20)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %24 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @ecore_wr(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i32 %24, i32 %26)
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %33 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %34 = call i64 @ecore_rd(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @PRS_ETH_OUTPUT_FORMAT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %41 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %42 = load i64, i64* @PRS_ETH_TUNN_OUTPUT_FORMAT, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ecore_wr(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %38, %30
  br label %46

46:                                               ; preds = %45, %4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %49 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %50 = call i64 @ecore_rd(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE_ETH_OVER_GRE_ENABLE_SHIFT, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %51, i32 %52, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE_IP_OVER_GRE_ENABLE_SHIFT, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %55, i32 %56, i32 %57)
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %60 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %61 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ecore_wr(%struct.ecore_hwfn* %59, %struct.ecore_ptt* %60, i32 %61, i32 %63)
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %66 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %67 = load i32, i32* @DORQ_REG_L2_EDPM_TUNNEL_GRE_ETH_EN, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = call i32 @ecore_wr(%struct.ecore_hwfn* %65, %struct.ecore_ptt* %66, i32 %67, i32 %71)
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %74 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %75 = load i32, i32* @DORQ_REG_L2_EDPM_TUNNEL_GRE_IP_EN, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = call i32 @ecore_wr(%struct.ecore_hwfn* %73, %struct.ecore_ptt* %74, i32 %75, i32 %79)
  ret void
}

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
