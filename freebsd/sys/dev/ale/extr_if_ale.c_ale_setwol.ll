; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@ALE_WOL_CFG = common dso_local global i32 0, align 4
@ALE_PCIE_PHYMISC = common dso_local global i32 0, align 4
@PCIE_PHYMISC_FORCE_RCV_DET = common dso_local global i32 0, align 4
@ALE_GPHY_CTRL = common dso_local global i32 0, align 4
@GPHY_CTRL_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CTRL_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CTRL_PHY_PLL_ON = common dso_local global i32 0, align 4
@GPHY_CTRL_SEL_ANA_RESET = common dso_local global i32 0, align 4
@GPHY_CTRL_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CTRL_PCLK_SEL_DIS = common dso_local global i32 0, align 4
@GPHY_CTRL_PWDOWN_HW = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@ALE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@WOL_CFG_MAGIC = common dso_local global i32 0, align 4
@WOL_CFG_MAGIC_ENB = common dso_local global i32 0, align 4
@ALE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_DBG = common dso_local global i32 0, align 4
@MAC_CFG_PROMISC = common dso_local global i32 0, align 4
@MAC_CFG_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CFG_BCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_setwol(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %8 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %9 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %8)
  %10 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCIY_PMG, align 4
  %14 = call i64 @pci_find_cap(i32 %12, i32 %13, i32* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %18 = load i32, i32* @ALE_WOL_CFG, align 4
  %19 = call i32 @CSR_WRITE_4(%struct.ale_softc* %17, i32 %18, i32 0)
  %20 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %21 = load i32, i32* @ALE_PCIE_PHYMISC, align 4
  %22 = call i32 @CSR_READ_4(%struct.ale_softc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %27 = load i32, i32* @ALE_PCIE_PHYMISC, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CSR_WRITE_4(%struct.ale_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %31 = load i32, i32* @ALE_GPHY_CTRL, align 4
  %32 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %33 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @GPHY_CTRL_PHY_PLL_ON, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @GPHY_CTRL_SEL_ANA_RESET, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @GPHY_CTRL_PHY_IDDQ, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @GPHY_CTRL_PCLK_SEL_DIS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @GPHY_CTRL_PWDOWN_HW, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CSR_WRITE_2(%struct.ale_softc* %30, i32 %31, i32 %46)
  br label %198

48:                                               ; preds = %1
  %49 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %49, i32 0, i32 2
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  store %struct.ifnet* %51, %struct.ifnet** %3, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFCAP_WOL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %60 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ALE_FLAG_FASTETHER, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %67 = call i32 @ale_setlinkspeed(%struct.ale_softc* %66)
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %48
  store i32 0, i32* %5, align 4
  %70 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @WOL_CFG_MAGIC, align 4
  %78 = load i32, i32* @WOL_CFG_MAGIC_ENB, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %84 = load i32, i32* @ALE_WOL_CFG, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @CSR_WRITE_4(%struct.ale_softc* %83, i32 %84, i32 %85)
  %87 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %88 = load i32, i32* @ALE_MAC_CFG, align 4
  %89 = call i32 @CSR_READ_4(%struct.ale_softc* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @MAC_CFG_DBG, align 4
  %91 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MAC_CFG_BCAST, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %101 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %82
  %107 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %108 = load i32, i32* @MAC_CFG_BCAST, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %82
  %113 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %114 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFCAP_WOL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %125 = load i32, i32* @ALE_MAC_CFG, align 4
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @CSR_WRITE_4(%struct.ale_softc* %124, i32 %125, i32 %126)
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IFCAP_WOL, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %123
  %135 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %136 = load i32, i32* @ALE_PCIE_PHYMISC, align 4
  %137 = call i32 @CSR_READ_4(%struct.ale_softc* %135, i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %139 = load i32, i32* %4, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %142 = load i32, i32* @ALE_PCIE_PHYMISC, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @CSR_WRITE_4(%struct.ale_softc* %141, i32 %142, i32 %143)
  %145 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %146 = load i32, i32* @ALE_GPHY_CTRL, align 4
  %147 = load i32, i32* @GPHY_CTRL_EXT_RESET, align 4
  %148 = load i32, i32* @GPHY_CTRL_HIB_EN, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @GPHY_CTRL_HIB_PULSE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @GPHY_CTRL_SEL_ANA_RESET, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @GPHY_CTRL_PHY_IDDQ, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @GPHY_CTRL_PCLK_SEL_DIS, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @GPHY_CTRL_PWDOWN_HW, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @CSR_WRITE_2(%struct.ale_softc* %145, i32 %146, i32 %159)
  br label %161

161:                                              ; preds = %134, %123
  %162 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %163 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @pci_read_config(i32 %164, i64 %168, i32 2)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %171 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %6, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IFCAP_WOL, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %161
  %183 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %184 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %182, %161
  %189 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %190 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %195 = add nsw i64 %193, %194
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @pci_write_config(i32 %191, i64 %195, i32 %196, i32 2)
  br label %198

198:                                              ; preds = %188, %16
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.ale_softc*, i32, i32) #1

declare dso_local i32 @ale_setlinkspeed(%struct.ale_softc*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
