; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_emul_link_init_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_emul_link_init_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, i32 }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Configurating Emulation Link %02x\0A\00", align 1
@XLPORT_MODE_REG = common dso_local global i32 0, align 4
@XLPORT_MAC_CONTROL = common dso_local global i32 0, align 4
@XLMAC_CTRL = common dso_local global i32 0, align 4
@XLMAC_MODE = common dso_local global i32 0, align 4
@XLMAC_RX_MAX_SIZE = common dso_local global i32 0, align 4
@XLMAC_TX_CTRL = common dso_local global i32 0, align 4
@XLMAC_PAUSE_CTRL = common dso_local global i32 0, align 4
@XLMAC_PFC_CTRL = common dso_local global i32 0, align 4
@XLPORT_FLOW_CONTROL_CONFIG = common dso_local global i32 0, align 4
@XLPORT_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*)* @ecore_emul_link_init_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_emul_link_init_bb(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @DP_INFO(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %18 = load i32, i32* @XLPORT_MODE_REG, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %16, %struct.ecore_ptt* %17, i32 %18, i32 68, i32 1, i32 %19)
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %22 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %23 = load i32, i32* @XLPORT_MAC_CONTROL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %21, %struct.ecore_ptt* %22, i32 %23, i32 0, i32 1, i32 %24)
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %28 = load i32, i32* @XLMAC_CTRL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %26, %struct.ecore_ptt* %27, i32 %28, i32 64, i32 0, i32 %29)
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %33 = load i32, i32* @XLMAC_MODE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %31, %struct.ecore_ptt* %32, i32 %33, i32 64, i32 0, i32 %34)
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %38 = load i32, i32* @XLMAC_RX_MAX_SIZE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, i32 %38, i32 16383, i32 0, i32 %39)
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %43 = load i32, i32* @XLMAC_TX_CTRL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %41, %struct.ecore_ptt* %42, i32 %43, i32 43008, i32 0, i32 %44)
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %47 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %48 = load i32, i32* @XLMAC_PAUSE_CTRL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %46, %struct.ecore_ptt* %47, i32 %48, i32 507904, i32 0, i32 %49)
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %52 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %53 = load i32, i32* @XLMAC_PFC_CTRL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %51, %struct.ecore_ptt* %52, i32 %53, i32 -16384, i32 0, i32 %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %57 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %58 = load i32, i32* @XLMAC_CTRL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 2
  %61 = or i32 3, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %56, %struct.ecore_ptt* %57, i32 %58, i32 %61, i32 0, i32 %62)
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %65 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %66 = load i32, i32* @XLMAC_CTRL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 2
  %69 = or i32 4099, %68
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %64, %struct.ecore_ptt* %65, i32 %66, i32 %69, i32 0, i32 %70)
  %72 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %73 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %74 = load i32, i32* @XLPORT_FLOW_CONTROL_CONFIG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %72, %struct.ecore_ptt* %73, i32 %74, i32 1, i32 0, i32 %75)
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %78 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %79 = load i32, i32* @XLPORT_ENABLE_REG, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @ecore_wr_nw_port(%struct.ecore_hwfn* %77, %struct.ecore_ptt* %78, i32 %79, i32 15, i32 1, i32 %80)
  ret void
}

declare dso_local i32 @DP_INFO(i32, i8*, i32) #1

declare dso_local i32 @ecore_wr_nw_port(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
