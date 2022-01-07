; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_init_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_init.c_r92ce_init_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_SYS_FUNC_EN = common dso_local global i64 0, align 8
@R92C_SYS_FUNC_EN_BBRSTB = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_BB_GLB_RST = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_DIO_RF = common dso_local global i32 0, align 4
@R92C_AFE_PLL_CTRL = common dso_local global i32 0, align 4
@R92C_RF_CTRL = common dso_local global i64 0, align 8
@R92C_RF_CTRL_EN = common dso_local global i32 0, align 4
@R92C_RF_CTRL_RSTB = common dso_local global i32 0, align 4
@R92C_RF_CTRL_SDMRSTB = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_DIO_PCIE = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_PCIEA = common dso_local global i32 0, align 4
@R92C_SYS_FUNC_EN_PPLL = common dso_local global i32 0, align 4
@R92C_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@R92C_LEDCFG0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92ce_init_bb(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i64, i64* @R92C_SYS_FUNC_EN, align 8
  %5 = load i32, i32* @R92C_SYS_FUNC_EN_BBRSTB, align 4
  %6 = load i32, i32* @R92C_SYS_FUNC_EN_BB_GLB_RST, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @R92C_SYS_FUNC_EN_DIO_RF, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %3, i64 %4, i32 0, i32 %9)
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %12 = load i32, i32* @R92C_AFE_PLL_CTRL, align 4
  %13 = call i32 @rtwn_write_2(%struct.rtwn_softc* %11, i32 %12, i32 56195)
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = load i64, i64* @R92C_RF_CTRL, align 8
  %16 = load i32, i32* @R92C_RF_CTRL_EN, align 4
  %17 = load i32, i32* @R92C_RF_CTRL_RSTB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @R92C_RF_CTRL_SDMRSTB, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtwn_write_1(%struct.rtwn_softc* %14, i64 %15, i32 %20)
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = load i64, i64* @R92C_SYS_FUNC_EN, align 8
  %24 = load i32, i32* @R92C_SYS_FUNC_EN_DIO_PCIE, align 4
  %25 = load i32, i32* @R92C_SYS_FUNC_EN_PCIEA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @R92C_SYS_FUNC_EN_PPLL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @R92C_SYS_FUNC_EN_BB_GLB_RST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @R92C_SYS_FUNC_EN_BBRSTB, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @rtwn_write_1(%struct.rtwn_softc* %22, i64 %23, i32 %32)
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %35 = load i64, i64* @R92C_AFE_XTAL_CTRL, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @rtwn_write_1(%struct.rtwn_softc* %34, i64 %36, i32 128)
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = load i32, i32* @R92C_LEDCFG0, align 4
  %40 = call i32 @rtwn_setbits_4(%struct.rtwn_softc* %38, i32 %39, i32 0, i32 8388608)
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %42 = call i32 @r92c_init_bb_common(%struct.rtwn_softc* %41)
  ret void
}

declare dso_local i32 @rtwn_setbits_2(%struct.rtwn_softc*, i64, i32, i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @rtwn_setbits_4(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @r92c_init_bb_common(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
