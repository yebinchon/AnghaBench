; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_link_init_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_link_init_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@MISC_REG_RESET_PL_PDA_VAUX = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2_XMAC_BIT = common dso_local global i32 0, align 4
@MISC_REG_XMAC_CORE_PORT_MODE_BB = common dso_local global i64 0, align 8
@MISC_REG_XMAC_PHY_PORT_MODE_BB = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2_XMAC_SOFT_BIT = common dso_local global i32 0, align 4
@XMAC_REG_MODE_BB = common dso_local global i64 0, align 8
@XMAC_REG_RX_MAX_SIZE_BB = common dso_local global i64 0, align 8
@XMAC_REG_TX_CTRL_LO_BB = common dso_local global i64 0, align 8
@XMAC_REG_CTRL_BB = common dso_local global i64 0, align 8
@XMAC_REG_CTRL_TX_EN_BB = common dso_local global i32 0, align 4
@XMAC_REG_CTRL_RX_EN_BB = common dso_local global i32 0, align 4
@XMAC_REG_RX_CTRL_BB = common dso_local global i64 0, align 8
@XMAC_REG_RX_CTRL_PROCESS_VARIABLE_PREAMBLE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64)* @ecore_link_init_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_link_init_bb(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 2048, i32 0
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %15 = load i64, i64* @MISC_REG_RESET_PL_PDA_VAUX, align 8
  %16 = add i64 %15, 8
  %17 = load i32, i32* @MISC_REG_RESET_REG_2_XMAC_BIT, align 4
  %18 = call i32 @ecore_wr(%struct.ecore_hwfn* %13, %struct.ecore_ptt* %14, i64 %16, i32 %17)
  %19 = call i32 @OSAL_MSLEEP(i32 1)
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %21 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %22 = load i64, i64* @MISC_REG_RESET_PL_PDA_VAUX, align 8
  %23 = add i64 %22, 4
  %24 = load i32, i32* @MISC_REG_RESET_REG_2_XMAC_BIT, align 4
  %25 = call i32 @ecore_wr(%struct.ecore_hwfn* %20, %struct.ecore_ptt* %21, i64 %23, i32 %24)
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %28 = load i64, i64* @MISC_REG_XMAC_CORE_PORT_MODE_BB, align 8
  %29 = call i32 @ecore_wr(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i64 %28, i32 1)
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %31 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %32 = load i64, i64* @MISC_REG_XMAC_PHY_PORT_MODE_BB, align 8
  %33 = call i32 @ecore_wr(%struct.ecore_hwfn* %30, %struct.ecore_ptt* %31, i64 %32, i32 3)
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %36 = load i64, i64* @MISC_REG_RESET_PL_PDA_VAUX, align 8
  %37 = add i64 %36, 8
  %38 = load i32, i32* @MISC_REG_RESET_REG_2_XMAC_SOFT_BIT, align 4
  %39 = call i32 @ecore_wr(%struct.ecore_hwfn* %34, %struct.ecore_ptt* %35, i64 %37, i32 %38)
  %40 = call i32 @OSAL_MSLEEP(i32 1)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %43 = load i64, i64* @MISC_REG_RESET_PL_PDA_VAUX, align 8
  %44 = add i64 %43, 4
  %45 = load i32, i32* @MISC_REG_RESET_REG_2_XMAC_SOFT_BIT, align 4
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i64 %44, i32 %45)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @CHIP_REV_IS_FPGA(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %3
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %55 = load i64, i64* @XMAC_REG_MODE_BB, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @ecore_wr(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i64 %58, i32 32)
  br label %60

60:                                               ; preds = %52, %3
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %63 = load i64, i64* @XMAC_REG_RX_MAX_SIZE_BB, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @ecore_wr(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62, i64 %66, i32 10000)
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %69 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %70 = load i64, i64* @XMAC_REG_TX_CTRL_LO_BB, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @ecore_wr(%struct.ecore_hwfn* %68, %struct.ecore_ptt* %69, i64 %73, i32 51200)
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %76 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %77 = load i64, i64* @XMAC_REG_CTRL_BB, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* @XMAC_REG_CTRL_TX_EN_BB, align 4
  %82 = load i32, i32* @XMAC_REG_CTRL_RX_EN_BB, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @ecore_wr(%struct.ecore_hwfn* %75, %struct.ecore_ptt* %76, i64 %80, i32 %83)
  %85 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %86 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %87 = load i64, i64* @XMAC_REG_RX_CTRL_BB, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @ecore_rd(%struct.ecore_hwfn* %85, %struct.ecore_ptt* %86, i64 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @XMAC_REG_RX_CTRL_PROCESS_VARIABLE_PREAMBLE_BB, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %96 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %97 = load i64, i64* @XMAC_REG_RX_CTRL_BB, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ecore_wr(%struct.ecore_hwfn* %95, %struct.ecore_ptt* %96, i64 %100, i32 %101)
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32) #1

declare dso_local i32 @OSAL_MSLEEP(i32) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
