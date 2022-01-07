; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32 }

@ET_MAC_CFG1 = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_TXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_RXFUNC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_TXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RST_RXMC = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SIM_RST = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SOFT_RST = common dso_local global i32 0, align 4
@ET_SWRST = common dso_local global i32 0, align 4
@ET_SWRST_TXDMA = common dso_local global i32 0, align 4
@ET_SWRST_RXDMA = common dso_local global i32 0, align 4
@ET_SWRST_TXMAC = common dso_local global i32 0, align 4
@ET_SWRST_RXMAC = common dso_local global i32 0, align 4
@ET_SWRST_MAC = common dso_local global i32 0, align 4
@ET_SWRST_MAC_STAT = common dso_local global i32 0, align 4
@ET_SWRST_MMC = common dso_local global i32 0, align 4
@ET_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_reset(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %3 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %4 = load i32, i32* @ET_MAC_CFG1, align 4
  %5 = load i32, i32* @ET_MAC_CFG1_RST_TXFUNC, align 4
  %6 = load i32, i32* @ET_MAC_CFG1_RST_RXFUNC, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @ET_MAC_CFG1_RST_TXMC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @ET_MAC_CFG1_RST_RXMC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ET_MAC_CFG1_SIM_RST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ET_MAC_CFG1_SOFT_RST, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @CSR_WRITE_4(%struct.et_softc* %3, i32 %4, i32 %15)
  %17 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %18 = load i32, i32* @ET_SWRST, align 4
  %19 = load i32, i32* @ET_SWRST_TXDMA, align 4
  %20 = load i32, i32* @ET_SWRST_RXDMA, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ET_SWRST_TXMAC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ET_SWRST_RXMAC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ET_SWRST_MAC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ET_SWRST_MAC_STAT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ET_SWRST_MMC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @CSR_WRITE_4(%struct.et_softc* %17, i32 %18, i32 %31)
  %33 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %34 = load i32, i32* @ET_MAC_CFG1, align 4
  %35 = load i32, i32* @ET_MAC_CFG1_RST_TXFUNC, align 4
  %36 = load i32, i32* @ET_MAC_CFG1_RST_RXFUNC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ET_MAC_CFG1_RST_TXMC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ET_MAC_CFG1_RST_RXMC, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @CSR_WRITE_4(%struct.et_softc* %33, i32 %34, i32 %41)
  %43 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %44 = load i32, i32* @ET_MAC_CFG1, align 4
  %45 = call i32 @CSR_WRITE_4(%struct.et_softc* %43, i32 %44, i32 0)
  %46 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %47 = load i32, i32* @ET_INTR_MASK, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.et_softc* %46, i32 %47, i32 -1)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
