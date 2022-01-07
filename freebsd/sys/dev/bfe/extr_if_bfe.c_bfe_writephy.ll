; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_writephy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_writephy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_EMAC_ISTAT = common dso_local global i32 0, align 4
@BFE_EMAC_INT_MII = common dso_local global i32 0, align 4
@BFE_MDIO_DATA = common dso_local global i32 0, align 4
@BFE_MDIO_SB_START = common dso_local global i32 0, align 4
@BFE_MDIO_OP_WRITE = common dso_local global i32 0, align 4
@BFE_MDIO_OP_SHIFT = common dso_local global i32 0, align 4
@BFE_MDIO_PMD_SHIFT = common dso_local global i32 0, align 4
@BFE_MDIO_RA_SHIFT = common dso_local global i32 0, align 4
@BFE_MDIO_TA_VALID = common dso_local global i32 0, align 4
@BFE_MDIO_TA_SHIFT = common dso_local global i32 0, align 4
@BFE_MDIO_DATA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfe_softc*, i32, i32)* @bfe_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_writephy(%struct.bfe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %9 = load i32, i32* @BFE_EMAC_ISTAT, align 4
  %10 = load i32, i32* @BFE_EMAC_INT_MII, align 4
  %11 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %13 = load i32, i32* @BFE_MDIO_DATA, align 4
  %14 = load i32, i32* @BFE_MDIO_SB_START, align 4
  %15 = load i32, i32* @BFE_MDIO_OP_WRITE, align 4
  %16 = load i32, i32* @BFE_MDIO_OP_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BFE_MDIO_PMD_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BFE_MDIO_RA_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* @BFE_MDIO_TA_VALID, align 4
  %30 = load i32, i32* @BFE_MDIO_TA_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BFE_MDIO_DATA_DATA, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %12, i32 %13, i32 %36)
  %38 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %39 = load i32, i32* @BFE_EMAC_ISTAT, align 4
  %40 = load i32, i32* @BFE_EMAC_INT_MII, align 4
  %41 = call i32 @bfe_wait_bit(%struct.bfe_softc* %38, i32 %39, i32 %40, i32 100, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @bfe_wait_bit(%struct.bfe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
