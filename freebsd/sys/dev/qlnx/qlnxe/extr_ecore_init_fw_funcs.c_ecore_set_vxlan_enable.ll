; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_set_vxlan_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_set_vxlan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@PRS_REG_ENCAPSULATION_TYPE_EN = common dso_local global i32 0, align 4
@PRS_REG_ENCAPSULATION_TYPE_EN_VXLAN_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 = common dso_local global i32 0, align 4
@PRS_ETH_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@PRS_ETH_TUNN_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@NIG_REG_ENC_TYPE_ENABLE = common dso_local global i32 0, align 4
@NIG_REG_ENC_TYPE_ENABLE_VXLAN_ENABLE_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_L2_EDPM_TUNNEL_VXLAN_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_set_vxlan_enable(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %10 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %11 = call i64 @ecore_rd(%struct.ecore_hwfn* %8, %struct.ecore_ptt* %9, i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN_VXLAN_ENABLE_SHIFT, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %12, i32 %13, i32 %14)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %18 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ecore_wr(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, i32 %18, i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %3
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %27 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %28 = call i64 @ecore_rd(%struct.ecore_hwfn* %25, %struct.ecore_ptt* %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @PRS_ETH_OUTPUT_FORMAT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %35 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %36 = load i64, i64* @PRS_ETH_TUNN_OUTPUT_FORMAT, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ecore_wr(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %43 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %44 = call i64 @ecore_rd(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE_VXLAN_ENABLE_SHIFT, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %45, i32 %46, i32 %47)
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %51 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @ecore_wr(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50, i32 %51, i32 %53)
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %57 = load i32, i32* @DORQ_REG_L2_EDPM_TUNNEL_VXLAN_EN, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = call i32 @ecore_wr(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56, i32 %57, i32 %61)
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
