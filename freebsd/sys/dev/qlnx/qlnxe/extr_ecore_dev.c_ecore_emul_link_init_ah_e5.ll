; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_emul_link_init_ah_e5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_emul_link_init_ah_e5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@NWM_REG_MAC0_K2_E5 = common dso_local global i64 0, align 8
@NWM_REG_MAC0_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Configurating Emulation Link %02x\0A\00", align 1
@CNIG_REG_NIG_PORT0_CONF_K2_E5 = common dso_local global i64 0, align 8
@CNIG_REG_NIG_PORT0_CONF_NIG_PORT_ENABLE_0_K2_E5_SHIFT = common dso_local global i32 0, align 4
@CNIG_REG_NIG_PORT0_CONF_NIG_PORT_NWM_PORT_MAP_0_K2_E5_SHIFT = common dso_local global i32 0, align 4
@CNIG_REG_NIG_PORT0_CONF_NIG_PORT_RATE_0_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_XIF_MODE_K2_E5 = common dso_local global i64 0, align 8
@ETH_MAC_REG_XIF_MODE_XGMII_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_FRM_LENGTH_K2_E5 = common dso_local global i64 0, align 8
@ETH_MAC_REG_FRM_LENGTH_FRM_LENGTH_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_TX_IPG_LENGTH_K2_E5 = common dso_local global i64 0, align 8
@ETH_MAC_REG_TX_IPG_LENGTH_TXIPG_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_RX_FIFO_SECTIONS_K2_E5 = common dso_local global i64 0, align 8
@ETH_MAC_REG_RX_FIFO_SECTIONS_RX_SECTION_FULL_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_TX_FIFO_SECTIONS_K2_E5 = common dso_local global i64 0, align 8
@ETH_MAC_REG_TX_FIFO_SECTIONS_TX_SECTION_EMPTY_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_TX_FIFO_SECTIONS_TX_SECTION_FULL_K2_E5_SHIFT = common dso_local global i32 0, align 4
@ETH_MAC_REG_COMMAND_CONFIG_K2_E5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_emul_link_init_ah_e5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_emul_link_init_ah_e5(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @NWM_REG_MAC0_K2_E5, align 8
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 2
  %13 = load i32, i32* @NWM_REG_MAC0_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %10, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DP_INFO(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %24 = load i64, i64* @CNIG_REG_NIG_PORT0_CONF_K2_E5, align 8
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @CNIG_REG_NIG_PORT0_CONF_NIG_PORT_ENABLE_0_K2_E5_SHIFT, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CNIG_REG_NIG_PORT0_CONF_NIG_PORT_NWM_PORT_MAP_0_K2_E5_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  %35 = load i32, i32* @CNIG_REG_NIG_PORT0_CONF_NIG_PORT_RATE_0_K2_E5_SHIFT, align 4
  %36 = shl i32 0, %35
  %37 = or i32 %34, %36
  %38 = call i32 @ecore_wr(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i64 %28, i32 %37)
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @ETH_MAC_REG_XIF_MODE_K2_E5, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* @ETH_MAC_REG_XIF_MODE_XGMII_K2_E5_SHIFT, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i64 %43, i32 %45)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %48 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @ETH_MAC_REG_FRM_LENGTH_K2_E5, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @ETH_MAC_REG_FRM_LENGTH_FRM_LENGTH_K2_E5_SHIFT, align 4
  %53 = shl i32 9018, %52
  %54 = call i32 @ecore_wr(%struct.ecore_hwfn* %47, %struct.ecore_ptt* %48, i64 %51, i32 %53)
  %55 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %56 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @ETH_MAC_REG_TX_IPG_LENGTH_K2_E5, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* @ETH_MAC_REG_TX_IPG_LENGTH_TXIPG_K2_E5_SHIFT, align 4
  %61 = shl i32 12, %60
  %62 = call i32 @ecore_wr(%struct.ecore_hwfn* %55, %struct.ecore_ptt* %56, i64 %59, i32 %61)
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %64 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @ETH_MAC_REG_RX_FIFO_SECTIONS_K2_E5, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* @ETH_MAC_REG_RX_FIFO_SECTIONS_RX_SECTION_FULL_K2_E5_SHIFT, align 4
  %69 = shl i32 8, %68
  %70 = call i32 @ecore_wr(%struct.ecore_hwfn* %63, %struct.ecore_ptt* %64, i64 %67, i32 %69)
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %72 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @ETH_MAC_REG_TX_FIFO_SECTIONS_K2_E5, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @ETH_MAC_REG_TX_FIFO_SECTIONS_TX_SECTION_EMPTY_K2_E5_SHIFT, align 4
  %77 = shl i32 10, %76
  %78 = load i32, i32* @ETH_MAC_REG_TX_FIFO_SECTIONS_TX_SECTION_FULL_K2_E5_SHIFT, align 4
  %79 = shl i32 8, %78
  %80 = or i32 %77, %79
  %81 = call i32 @ecore_wr(%struct.ecore_hwfn* %71, %struct.ecore_ptt* %72, i64 %75, i32 %80)
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %83 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @ETH_MAC_REG_COMMAND_CONFIG_K2_E5, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @ecore_wr(%struct.ecore_hwfn* %82, %struct.ecore_ptt* %83, i64 %86, i32 43091)
  ret void
}

declare dso_local i32 @DP_INFO(i32, i8*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
