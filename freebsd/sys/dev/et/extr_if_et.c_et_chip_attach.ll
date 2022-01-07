; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_chip_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_chip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32 }

@ET_LOOPBACK = common dso_local global i32 0, align 4
@ET_MAC_CFG1 = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_TXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_RXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_TXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_RXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SIM_RST = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SOFT_RST = common dso_local global i32 0, align 4
@ET_MAC_HDX_ALT_BEB_TRUNC_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_HDX_REXMIT_MAX_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_HDX_COLLWIN_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_HDX_EXC_DEFER = common dso_local global i32 0, align 4
@ET_MAC_HDX = common dso_local global i32 0, align 4
@ET_MAC_CTRL = common dso_local global i32 0, align 4
@ET_MII_CFG = common dso_local global i32 0, align 4
@ET_MII_CFG_CLKRST = common dso_local global i32 0, align 4
@ET_MMC_CTRL = common dso_local global i32 0, align 4
@ET_MMC_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_chip_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_chip_attach(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %4 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %5 = load i32, i32* @ET_LOOPBACK, align 4
  %6 = call i32 @CSR_WRITE_4(%struct.et_softc* %4, i32 %5, i32 0)
  %7 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %8 = load i32, i32* @ET_MAC_CFG1, align 4
  %9 = load i32, i32* @ET_MAC_CFG1_RST_TXFUNC, align 4
  %10 = load i32, i32* @ET_MAC_CFG1_RST_RXFUNC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ET_MAC_CFG1_RST_TXMC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ET_MAC_CFG1_RST_RXMC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ET_MAC_CFG1_SIM_RST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ET_MAC_CFG1_SOFT_RST, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @CSR_WRITE_4(%struct.et_softc* %7, i32 %8, i32 %19)
  %21 = load i32, i32* @ET_MAC_HDX_ALT_BEB_TRUNC_SHIFT, align 4
  %22 = shl i32 10, %21
  %23 = load i32, i32* @ET_MAC_HDX_REXMIT_MAX_SHIFT, align 4
  %24 = shl i32 15, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @ET_MAC_HDX_COLLWIN_SHIFT, align 4
  %27 = shl i32 55, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @ET_MAC_HDX_EXC_DEFER, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %32 = load i32, i32* @ET_MAC_HDX, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @CSR_WRITE_4(%struct.et_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %36 = load i32, i32* @ET_MAC_CTRL, align 4
  %37 = call i32 @CSR_WRITE_4(%struct.et_softc* %35, i32 %36, i32 0)
  %38 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %39 = load i32, i32* @ET_MII_CFG, align 4
  %40 = load i32, i32* @ET_MII_CFG_CLKRST, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.et_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %43 = load i32, i32* @ET_MAC_CFG1, align 4
  %44 = call i32 @CSR_WRITE_4(%struct.et_softc* %42, i32 %43, i32 0)
  %45 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %46 = load i32, i32* @ET_MMC_CTRL, align 4
  %47 = load i32, i32* @ET_MMC_CTRL_ENABLE, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.et_softc* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
