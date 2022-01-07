; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/pci/extr_r88ee_init.c_r88ee_power_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/pci/extr_r88ee_init.c_r88ee_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i32 }

@R88E_XCK_OUT_CTRL = common dso_local global i64 0, align 8
@R88E_XCK_OUT_CTRL_EN = common dso_local global i32 0, align 4
@R92C_APS_FSMCO = common dso_local global i64 0, align 8
@R92C_APS_FSMCO_APDM_HPDN = common dso_local global i32 0, align 4
@R92C_RSV_CTRL = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_SUS_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout waiting for chip power up\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN = common dso_local global i64 0, align 8
@R92C_SYS_FUNC_EN_BBRSTB = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_BB_GLB_RST = common dso_local global i32 0, align 4
@R92C_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@R92C_APS_FSMCO_AFSM_HSUS = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_AFSM_PCIE = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_APFM_ONMAC = common dso_local global i32 0, align 4
@R92C_PCIE_CTRL_REG = common dso_local global i64 0, align 8
@R92C_LPLDO_CTRL = common dso_local global i64 0, align 8
@R92C_LPLDO_CTRL_SLEEP = common dso_local global i32 0, align 4
@R92C_APS_FSMCO_PDN_EN = common dso_local global i32 0, align 4
@R92C_AFE_XTAL_CTRL_EXT = common dso_local global i64 0, align 8
@R92C_SYS_CLKR = common dso_local global i64 0, align 8
@R92C_GPIO_MUXCFG = common dso_local global i64 0, align 8
@R92C_GPIO_MUXCFG_ENSIC = common dso_local global i32 0, align 4
@R92C_CR = common dso_local global i64 0, align 8
@R92C_CR_HCI_TXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_TXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_HCI_RXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_RXDMA_EN = common dso_local global i32 0, align 4
@R92C_CR_PROTOCOL_EN = common dso_local global i32 0, align 4
@R92C_CR_SCHEDULE_EN = common dso_local global i32 0, align 4
@RTWN_CRYPTO_SW = common dso_local global i64 0, align 8
@R92C_CR_ENSEC = common dso_local global i32 0, align 4
@R92C_CR_CALTMR_EN = common dso_local global i32 0, align 4
@R92C_INT_MIG = common dso_local global i32 0, align 4
@R92C_MCUTST_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r88ee_power_on(%struct.rtwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %6 = load i64, i64* @R88E_XCK_OUT_CTRL, align 8
  %7 = load i32, i32* @R88E_XCK_OUT_CTRL_EN, align 4
  %8 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %5, i64 %6, i32 %7, i32 0)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = load i64, i64* @R92C_APS_FSMCO, align 8
  %11 = load i32, i32* @R92C_APS_FSMCO_APDM_HPDN, align 4
  %12 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %9, i64 %10, i32 %11, i32 0)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = load i32, i32* @R92C_RSV_CTRL, align 4
  %15 = call i32 @rtwn_write_1(%struct.rtwn_softc* %13, i32 %14, i32 0)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 5000
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %21 = load i64, i64* @R92C_APS_FSMCO, align 8
  %22 = call i32 @rtwn_read_4(%struct.rtwn_softc* %20, i64 %21)
  %23 = load i32, i32* @R92C_APS_FSMCO_SUS_HOST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %29 = call i32 @rtwn_delay(%struct.rtwn_softc* %28, i32 10)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %26, %16
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 5000
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %41, i32* %2, align 4
  br label %153

42:                                               ; preds = %33
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %44 = load i64, i64* @R92C_SYS_FUNC_EN, align 8
  %45 = load i32, i32* @R92C_SYS_FUNC_EN_BBRSTB, align 4
  %46 = load i32, i32* @R92C_SYS_FUNC_EN_BB_GLB_RST, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %43, i64 %44, i32 %47, i32 0)
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %50 = load i64, i64* @R92C_AFE_XTAL_CTRL, align 8
  %51 = add nsw i64 %50, 2
  %52 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %49, i64 %51, i32 0, i32 128)
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %54 = load i64, i64* @R92C_APS_FSMCO, align 8
  %55 = load i32, i32* @R92C_APS_FSMCO_APDM_HPDN, align 4
  %56 = call i32 @rtwn_setbits_1_shift(%struct.rtwn_softc* %53, i64 %54, i32 %55, i32 0, i32 1)
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %58 = load i64, i64* @R92C_APS_FSMCO, align 8
  %59 = load i32, i32* @R92C_APS_FSMCO_AFSM_HSUS, align 4
  %60 = load i32, i32* @R92C_APS_FSMCO_AFSM_PCIE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @rtwn_setbits_1_shift(%struct.rtwn_softc* %57, i64 %58, i32 %61, i32 0, i32 1)
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %64 = load i64, i64* @R92C_APS_FSMCO, align 8
  %65 = load i32, i32* @R92C_APS_FSMCO_APFM_ONMAC, align 4
  %66 = call i32 @rtwn_setbits_1_shift(%struct.rtwn_softc* %63, i64 %64, i32 0, i32 %65, i32 1)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %81, %42
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 5000
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %72 = load i64, i64* @R92C_APS_FSMCO, align 8
  %73 = call i32 @rtwn_read_2(%struct.rtwn_softc* %71, i64 %72)
  %74 = load i32, i32* @R92C_APS_FSMCO_APFM_ONMAC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %84

78:                                               ; preds = %70
  %79 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %80 = call i32 @rtwn_delay(%struct.rtwn_softc* %79, i32 10)
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %67

84:                                               ; preds = %77, %67
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 5000
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %88, i32* %2, align 4
  br label %153

89:                                               ; preds = %84
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %91 = load i64, i64* @R92C_PCIE_CTRL_REG, align 8
  %92 = add nsw i64 %91, 2
  %93 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %90, i64 %92, i32 0, i32 4)
  %94 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %95 = load i64, i64* @R92C_LPLDO_CTRL, align 8
  %96 = load i32, i32* @R92C_LPLDO_CTRL_SLEEP, align 4
  %97 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %94, i64 %95, i32 %96, i32 0)
  %98 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %99 = load i64, i64* @R92C_APS_FSMCO, align 8
  %100 = load i32, i32* @R92C_APS_FSMCO_PDN_EN, align 4
  %101 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %98, i64 %99, i32 0, i32 %100)
  %102 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %103 = load i64, i64* @R92C_PCIE_CTRL_REG, align 8
  %104 = add nsw i64 %103, 2
  %105 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %102, i64 %104, i32 0, i32 4)
  %106 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %107 = load i64, i64* @R92C_AFE_XTAL_CTRL_EXT, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %106, i64 %108, i32 0, i32 2)
  %110 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %111 = load i64, i64* @R92C_SYS_CLKR, align 8
  %112 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %110, i64 %111, i32 0, i32 8)
  %113 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %114 = load i64, i64* @R92C_GPIO_MUXCFG, align 8
  %115 = load i32, i32* @R92C_GPIO_MUXCFG_ENSIC, align 4
  %116 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %113, i64 %114, i32 %115, i32 0)
  %117 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %118 = load i64, i64* @R92C_CR, align 8
  %119 = call i32 @rtwn_write_2(%struct.rtwn_softc* %117, i64 %118, i32 0)
  %120 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %121 = load i64, i64* @R92C_CR, align 8
  %122 = load i32, i32* @R92C_CR_HCI_TXDMA_EN, align 4
  %123 = load i32, i32* @R92C_CR_TXDMA_EN, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @R92C_CR_HCI_RXDMA_EN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @R92C_CR_RXDMA_EN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @R92C_CR_PROTOCOL_EN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @R92C_CR_SCHEDULE_EN, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %134 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RTWN_CRYPTO_SW, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %89
  %139 = load i32, i32* @R92C_CR_ENSEC, align 4
  br label %141

140:                                              ; preds = %89
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = or i32 %132, %142
  %144 = load i32, i32* @R92C_CR_CALTMR_EN, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %120, i64 %121, i32 0, i32 %145)
  %147 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %148 = load i32, i32* @R92C_INT_MIG, align 4
  %149 = call i32 @rtwn_write_4(%struct.rtwn_softc* %147, i32 %148, i32 0)
  %150 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %151 = load i32, i32* @R92C_MCUTST_1, align 4
  %152 = call i32 @rtwn_write_4(%struct.rtwn_softc* %150, i32 %151, i32 0)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %141, %87, %36
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i64, i32, i32) #1

declare dso_local i32 @rtwn_setbits_2(%struct.rtwn_softc*, i64, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rtwn_setbits_1_shift(%struct.rtwn_softc*, i64, i32, i32, i32) #1

declare dso_local i32 @rtwn_read_2(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
