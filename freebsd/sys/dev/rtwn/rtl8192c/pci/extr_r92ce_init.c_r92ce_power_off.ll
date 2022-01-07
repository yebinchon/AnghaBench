; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_power_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32, i64, i64, i32 }

@hz = common dso_local global i32 0, align 4
@R92C_HISR = common dso_local global i32 0, align 4
@R92C_HIMR = common dso_local global i32 0, align 4
@R92C_TXPAUSE = common dso_local global i32 0, align 4
@R92C_TX_QUEUE_ALL = common dso_local global i32 0, align 4
@R92C_RF_CTRL = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_BB_GLB_RST = common dso_local global i32 0, align 4
@R92C_CR = common dso_local global i32 0, align 4
@R92C_CR_HCI_TXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_HCI_RXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_TXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_RXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_PROTOCOL_EN = common dso_local global i32 0, align 4
@R92C_CR_SCHEDULE_EN = common dso_local global i32 0, align 4
@R92C_CR_MACTXEN = common dso_local global i32 0, align 4
@R92C_CR_MACRXEN = common dso_local global i32 0, align 4
@R92C_CR_ENSEC = common dso_local global i32 0, align 4
@R92C_MCUFWDL = common dso_local global i32 0, align 4
@R92C_MCUFWDL_RAM_DL_SEL = common dso_local global i32 0, align 4
@RTWN_FW_RESET_SHUTDOWN = common dso_local global i32 0, align 4
@R92C_AFE_PLL_CTRL = common dso_local global i32 0, align 4
@R92C_SPS0_CTRL = common dso_local global i32 0, align 4
@R92C_AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@R92C_RSV_CTRL = common dso_local global i32 0, align 4
@R92C_APS_FSMCO = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_PDN_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92ce_power_off(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 0
  %6 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  store %struct.r92c_softc* %6, %struct.r92c_softc** %3, align 8
  %7 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %8 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %7, i32 0, i32 3
  %9 = call i32 @callout_stop(i32* %8)
  %10 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %11 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %13 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @hz, align 4
  %15 = load %struct.r92c_softc*, %struct.r92c_softc** %3, align 8
  %16 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %18 = load i32, i32* @R92C_HISR, align 4
  %19 = call i32 @rtwn_write_4(%struct.rtwn_softc* %17, i32 %18, i32 0)
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %21 = load i32, i32* @R92C_HIMR, align 4
  %22 = call i32 @rtwn_write_4(%struct.rtwn_softc* %20, i32 %21, i32 0)
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %24 = load i32, i32* @R92C_TXPAUSE, align 4
  %25 = load i32, i32* @R92C_TX_QUEUE_ALL, align 4
  %26 = call i32 @rtwn_write_1(%struct.rtwn_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = load i32, i32* @R92C_RF_CTRL, align 4
  %29 = call i32 @rtwn_write_1(%struct.rtwn_softc* %27, i32 %28, i32 0)
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %31 = load i32, i32* @R92C_SYS_FUNC_EN, align 4
  %32 = load i32, i32* @R92C_SYS_FUNC_EN_BB_GLB_RST, align 4
  %33 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %30, i32 %31, i32 0, i32 %32)
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %35 = load i32, i32* @R92C_SYS_FUNC_EN, align 4
  %36 = load i32, i32* @R92C_SYS_FUNC_EN_BB_GLB_RST, align 4
  %37 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %34, i32 %35, i32 %36, i32 0)
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = load i32, i32* @R92C_CR, align 4
  %40 = load i32, i32* @R92C_CR_HCI_TXDMA_EN, align 4
  %41 = load i32, i32* @R92C_CR_HCI_RXDMA_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @R92C_CR_TXDMA_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @R92C_CR_RXDMA_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @R92C_CR_PROTOCOL_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @R92C_CR_SCHEDULE_EN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @R92C_CR_MACTXEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @R92C_CR_MACRXEN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @R92C_CR_ENSEC, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %38, i32 %39, i32 %56, i32 0)
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %59 = load i32, i32* @R92C_MCUFWDL, align 4
  %60 = call i32 @rtwn_read_1(%struct.rtwn_softc* %58, i32 %59)
  %61 = load i32, i32* @R92C_MCUFWDL_RAM_DL_SEL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %1
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %66 = load i32, i32* @RTWN_FW_RESET_SHUTDOWN, align 4
  %67 = call i32 @r92ce_fw_reset(%struct.rtwn_softc* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %1
  %69 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %70 = load i32, i32* @R92C_AFE_PLL_CTRL, align 4
  %71 = call i32 @rtwn_write_2(%struct.rtwn_softc* %69, i32 %70, i32 128)
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %73 = load i32, i32* @R92C_SPS0_CTRL, align 4
  %74 = call i32 @rtwn_write_1(%struct.rtwn_softc* %72, i32 %73, i32 35)
  %75 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %76 = load i32, i32* @R92C_AFE_XTAL_CTRL, align 4
  %77 = call i32 @rtwn_write_1(%struct.rtwn_softc* %75, i32 %76, i32 14)
  %78 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %79 = load i32, i32* @R92C_RSV_CTRL, align 4
  %80 = call i32 @rtwn_write_1(%struct.rtwn_softc* %78, i32 %79, i32 14)
  %81 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %82 = load i32, i32* @R92C_APS_FSMCO, align 4
  %83 = load i32, i32* @R92C_APS_FSMCO_PDN_EN, align 4
  %84 = call i32 @rtwn_write_1(%struct.rtwn_softc* %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_setbits_2(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_read_1(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @r92ce_fw_reset(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
