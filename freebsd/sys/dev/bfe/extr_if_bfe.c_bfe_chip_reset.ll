; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_chip_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i32 }

@BFE_INTVEC_ENET0 = common dso_local global i32 0, align 4
@BFE_SBTMSLOW = common dso_local global i32 0, align 4
@BFE_RESET = common dso_local global i32 0, align 4
@BFE_REJECT = common dso_local global i32 0, align 4
@BFE_CLOCK = common dso_local global i32 0, align 4
@BFE_RCV_LAZY = common dso_local global i32 0, align 4
@BFE_ENET_CTRL = common dso_local global i32 0, align 4
@BFE_ENET_DISABLE = common dso_local global i32 0, align 4
@BFE_DMATX_CTRL = common dso_local global i32 0, align 4
@BFE_DMARX_STAT = common dso_local global i32 0, align 4
@BFE_STAT_EMASK = common dso_local global i32 0, align 4
@BFE_STAT_SIDLE = common dso_local global i32 0, align 4
@BFE_DMARX_CTRL = common dso_local global i32 0, align 4
@BFE_MDIO_CTRL = common dso_local global i32 0, align 4
@BFE_DEVCTRL = common dso_local global i32 0, align 4
@BFE_IPP = common dso_local global i32 0, align 4
@BFE_ENET_EPSEL = common dso_local global i32 0, align 4
@BFE_EPR = common dso_local global i32 0, align 4
@BFE_MAC_CTRL = common dso_local global i32 0, align 4
@BFE_CTRL_CRC32_ENAB = common dso_local global i32 0, align 4
@BFE_CTRL_LED = common dso_local global i32 0, align 4
@BFE_CTRL_PDOWN = common dso_local global i32 0, align 4
@BFE_LAZY_FC_SHIFT = common dso_local global i32 0, align 4
@BFE_LAZY_FC_MASK = common dso_local global i32 0, align 4
@BFE_RXMAXLEN = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@BFE_TXMAXLEN = common dso_local global i32 0, align 4
@BFE_TX_WMARK = common dso_local global i32 0, align 4
@BFE_TX_CTRL_ENABLE = common dso_local global i32 0, align 4
@BFE_DMATX_ADDR = common dso_local global i32 0, align 4
@BFE_PCI_DMA = common dso_local global i32 0, align 4
@BFE_RX_OFFSET = common dso_local global i32 0, align 4
@BFE_RX_CTRL_ROSHIFT = common dso_local global i32 0, align 4
@BFE_RX_CTRL_ENABLE = common dso_local global i32 0, align 4
@BFE_DMARX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_chip_reset(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %4 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %5 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %4)
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %7 = load i32, i32* @BFE_INTVEC_ENET0, align 4
  %8 = call i32 @bfe_pci_setup(%struct.bfe_softc* %6, i32 %7)
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %10 = load i32, i32* @BFE_SBTMSLOW, align 4
  %11 = call i32 @CSR_READ_4(%struct.bfe_softc* %9, i32 %10)
  %12 = load i32, i32* @BFE_RESET, align 4
  %13 = load i32, i32* @BFE_REJECT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BFE_CLOCK, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BFE_CLOCK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %23 = load i32, i32* @BFE_RCV_LAZY, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %22, i32 %23, i32 0)
  %25 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %26 = load i32, i32* @BFE_ENET_CTRL, align 4
  %27 = load i32, i32* @BFE_ENET_DISABLE, align 4
  %28 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %30 = load i32, i32* @BFE_ENET_CTRL, align 4
  %31 = load i32, i32* @BFE_ENET_DISABLE, align 4
  %32 = call i32 @bfe_wait_bit(%struct.bfe_softc* %29, i32 %30, i32 %31, i32 100, i32 1)
  %33 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %34 = load i32, i32* @BFE_DMATX_CTRL, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %33, i32 %34, i32 0)
  %36 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %37 = load i32, i32* @BFE_DMARX_STAT, align 4
  %38 = call i32 @CSR_READ_4(%struct.bfe_softc* %36, i32 %37)
  %39 = load i32, i32* @BFE_STAT_EMASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %21
  %43 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %44 = load i32, i32* @BFE_DMARX_STAT, align 4
  %45 = load i32, i32* @BFE_STAT_SIDLE, align 4
  %46 = call i32 @bfe_wait_bit(%struct.bfe_softc* %43, i32 %44, i32 %45, i32 100, i32 0)
  br label %47

47:                                               ; preds = %42, %21
  %48 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %49 = load i32, i32* @BFE_DMARX_CTRL, align 4
  %50 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %47, %1
  %52 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %53 = call i32 @bfe_core_reset(%struct.bfe_softc* %52)
  %54 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %55 = call i32 @bfe_clear_stats(%struct.bfe_softc* %54)
  %56 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %57 = load i32, i32* @BFE_MDIO_CTRL, align 4
  %58 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %56, i32 %57, i32 141)
  %59 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %60 = load i32, i32* @BFE_DEVCTRL, align 4
  %61 = call i32 @CSR_READ_4(%struct.bfe_softc* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @BFE_IPP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %51
  %67 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %68 = load i32, i32* @BFE_ENET_CTRL, align 4
  %69 = load i32, i32* @BFE_ENET_EPSEL, align 4
  %70 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %67, i32 %68, i32 %69)
  br label %86

71:                                               ; preds = %51
  %72 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %73 = load i32, i32* @BFE_DEVCTRL, align 4
  %74 = call i32 @CSR_READ_4(%struct.bfe_softc* %72, i32 %73)
  %75 = load i32, i32* @BFE_EPR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %80 = load i32, i32* @BFE_DEVCTRL, align 4
  %81 = load i32, i32* @BFE_EPR, align 4
  %82 = xor i32 %81, -1
  %83 = call i32 @BFE_AND(%struct.bfe_softc* %79, i32 %80, i32 %82)
  %84 = call i32 @DELAY(i32 100)
  br label %85

85:                                               ; preds = %78, %71
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %88 = load i32, i32* @BFE_MAC_CTRL, align 4
  %89 = load i32, i32* @BFE_CTRL_CRC32_ENAB, align 4
  %90 = load i32, i32* @BFE_CTRL_LED, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @BFE_OR(%struct.bfe_softc* %87, i32 %88, i32 %91)
  %93 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %94 = load i32, i32* @BFE_MAC_CTRL, align 4
  %95 = load i32, i32* @BFE_CTRL_PDOWN, align 4
  %96 = xor i32 %95, -1
  %97 = call i32 @BFE_AND(%struct.bfe_softc* %93, i32 %94, i32 %96)
  %98 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %99 = load i32, i32* @BFE_RCV_LAZY, align 4
  %100 = load i32, i32* @BFE_LAZY_FC_SHIFT, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* @BFE_LAZY_FC_MASK, align 4
  %103 = and i32 %101, %102
  %104 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %98, i32 %99, i32 %103)
  %105 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %106 = load i32, i32* @BFE_RCV_LAZY, align 4
  %107 = call i32 @BFE_OR(%struct.bfe_softc* %105, i32 %106, i32 0)
  %108 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %109 = load i32, i32* @BFE_RXMAXLEN, align 4
  %110 = load i32, i32* @ETHER_MAX_LEN, align 4
  %111 = add nsw i32 %110, 32
  %112 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %108, i32 %109, i32 %111)
  %113 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %114 = load i32, i32* @BFE_TXMAXLEN, align 4
  %115 = load i32, i32* @ETHER_MAX_LEN, align 4
  %116 = add nsw i32 %115, 32
  %117 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %113, i32 %114, i32 %116)
  %118 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %119 = load i32, i32* @BFE_TX_WMARK, align 4
  %120 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %118, i32 %119, i32 56)
  %121 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %122 = load i32, i32* @BFE_DMATX_CTRL, align 4
  %123 = load i32, i32* @BFE_TX_CTRL_ENABLE, align 4
  %124 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %126 = load i32, i32* @BFE_DMATX_ADDR, align 4
  %127 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %128 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BFE_PCI_DMA, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %125, i32 %126, i32 %131)
  %133 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %134 = load i32, i32* @BFE_DMARX_CTRL, align 4
  %135 = load i32, i32* @BFE_RX_OFFSET, align 4
  %136 = load i32, i32* @BFE_RX_CTRL_ROSHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* @BFE_RX_CTRL_ENABLE, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %133, i32 %134, i32 %139)
  %141 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %142 = load i32, i32* @BFE_DMARX_ADDR, align 4
  %143 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %144 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BFE_PCI_DMA, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %141, i32 %142, i32 %147)
  %149 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %150 = call i32 @bfe_resetphy(%struct.bfe_softc* %149)
  %151 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %152 = call i32 @bfe_setupphy(%struct.bfe_softc* %151)
  ret void
}

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_pci_setup(%struct.bfe_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @bfe_wait_bit(%struct.bfe_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @bfe_core_reset(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_clear_stats(%struct.bfe_softc*) #1

declare dso_local i32 @BFE_AND(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BFE_OR(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @bfe_resetphy(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_setupphy(%struct.bfe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
