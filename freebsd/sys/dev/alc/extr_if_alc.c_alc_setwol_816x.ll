; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_setwol_816x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_setwol_816x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@ALC_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_CLK_SEL_DIS = common dso_local global i32 0, align 4
@ALC_GPHY_CFG = common dso_local global i32 0, align 4
@GPHY_CFG_EXT_RESET = common dso_local global i32 0, align 4
@GPHY_CFG_LED_MODE = common dso_local global i32 0, align 4
@GPHY_CFG_100AB_ENB = common dso_local global i32 0, align 4
@GPHY_CFG_PHY_PLL_ON = common dso_local global i32 0, align 4
@GPHY_CFG_HIB_EN = common dso_local global i32 0, align 4
@GPHY_CFG_HIB_PULSE = common dso_local global i32 0, align 4
@GPHY_CFG_SEL_ANA_RESET = common dso_local global i32 0, align 4
@ALC_FLAG_PM = common dso_local global i32 0, align 4
@ALC_WOL_CFG = common dso_local global i32 0, align 4
@GPHY_CFG_PHY_IDDQ = common dso_local global i32 0, align 4
@GPHY_CFG_PWDOWN_HW = common dso_local global i32 0, align 4
@ALC_MAC_CFG = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@ALC_FLAG_FASTETHER = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@WOL_CFG_MAGIC = common dso_local global i32 0, align 4
@WOL_CFG_MAGIC_ENB = common dso_local global i32 0, align 4
@MAC_CFG_DBG = common dso_local global i32 0, align 4
@MAC_CFG_PROMISC = common dso_local global i32 0, align 4
@MAC_CFG_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CFG_BCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@MII_EXT_ANEG = common dso_local global i32 0, align 4
@MII_EXT_ANEG_S3DIG10 = common dso_local global i32 0, align 4
@ANEG_S3DIG10_SL = common dso_local global i32 0, align 4
@ALC_MISC = common dso_local global i32 0, align 4
@MISC_INTNLOSC_OPEN = common dso_local global i32 0, align 4
@ALC_PDLL_TRNS1 = common dso_local global i32 0, align 4
@PDLL_TRNS1_D3PLLOFF_ENB = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_setwol_816x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_setwol_816x(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %10 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %11 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %10)
  %12 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %13 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %12, i32 0, i32 3
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %3, align 8
  %15 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %16 = load i32, i32* @ALC_MASTER_CFG, align 4
  %17 = call i32 @CSR_READ_4(%struct.alc_softc* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %23 = load i32, i32* @ALC_GPHY_CFG, align 4
  %24 = call i32 @CSR_READ_4(%struct.alc_softc* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %26 = load i32, i32* @GPHY_CFG_LED_MODE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GPHY_CFG_100AB_ENB, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GPHY_CFG_PHY_PLL_ON, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @GPHY_CFG_HIB_EN, align 4
  %36 = load i32, i32* @GPHY_CFG_HIB_PULSE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @GPHY_CFG_SEL_ANA_RESET, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ALC_FLAG_PM, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %1
  %49 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %50 = load i32, i32* @ALC_WOL_CFG, align 4
  %51 = call i32 @CSR_WRITE_4(%struct.alc_softc* %49, i32 %50, i32 0)
  %52 = load i32, i32* @GPHY_CFG_PHY_IDDQ, align 4
  %53 = load i32, i32* @GPHY_CFG_PWDOWN_HW, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %58 = load i32, i32* @ALC_MAC_CFG, align 4
  %59 = call i32 @CSR_READ_4(%struct.alc_softc* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %141

60:                                               ; preds = %1
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFCAP_WOL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load i32, i32* @GPHY_CFG_EXT_RESET, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %72 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ALC_FLAG_FASTETHER, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %79 = call i32 @alc_setlinkspeed(%struct.alc_softc* %78)
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %60
  store i32 0, i32* %7, align 4
  %82 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @WOL_CFG_MAGIC, align 4
  %90 = load i32, i32* @WOL_CFG_MAGIC_ENB, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %96 = load i32, i32* @ALC_WOL_CFG, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @CSR_WRITE_4(%struct.alc_softc* %95, i32 %96, i32 %97)
  %99 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %100 = load i32, i32* @ALC_MAC_CFG, align 4
  %101 = call i32 @CSR_READ_4(%struct.alc_softc* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @MAC_CFG_DBG, align 4
  %103 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MAC_CFG_BCAST, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %94
  %119 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %120 = load i32, i32* @MAC_CFG_BCAST, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %118, %94
  %125 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IFCAP_WOL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %137 = load i32, i32* @MII_EXT_ANEG, align 4
  %138 = load i32, i32* @MII_EXT_ANEG_S3DIG10, align 4
  %139 = load i32, i32* @ANEG_S3DIG10_SL, align 4
  %140 = call i32 @alc_miiext_writereg(%struct.alc_softc* %136, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %48
  %142 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %143 = load i32, i32* @ALC_MISC, align 4
  %144 = call i32 @CSR_READ_4(%struct.alc_softc* %142, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %150 = load i32, i32* @ALC_MISC, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @CSR_WRITE_4(%struct.alc_softc* %149, i32 %150, i32 %151)
  %153 = load i32, i32* @MISC_INTNLOSC_OPEN, align 4
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %157 = load i32, i32* @ALC_MISC, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @CSR_WRITE_4(%struct.alc_softc* %156, i32 %157, i32 %158)
  %160 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %161 = load i32, i32* @ALC_MASTER_CFG, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @CSR_WRITE_4(%struct.alc_softc* %160, i32 %161, i32 %162)
  %164 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %165 = load i32, i32* @ALC_MAC_CFG, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @CSR_WRITE_4(%struct.alc_softc* %164, i32 %165, i32 %166)
  %168 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %169 = load i32, i32* @ALC_GPHY_CFG, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @CSR_WRITE_4(%struct.alc_softc* %168, i32 %169, i32 %170)
  %172 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %173 = load i32, i32* @ALC_PDLL_TRNS1, align 4
  %174 = call i32 @CSR_READ_4(%struct.alc_softc* %172, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* @PDLL_TRNS1_D3PLLOFF_ENB, align 4
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  %178 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %179 = load i32, i32* @ALC_PDLL_TRNS1, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @CSR_WRITE_4(%struct.alc_softc* %178, i32 %179, i32 %180)
  %182 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %183 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ALC_FLAG_PM, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %227

188:                                              ; preds = %141
  %189 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %190 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %193 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @pci_read_config(i32 %191, i64 %196, i32 2)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %199 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %200 = or i32 %198, %199
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %9, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %9, align 4
  %204 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %205 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IFCAP_WOL, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %188
  %211 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %212 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %210, %188
  %217 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %218 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %221 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %224 = add nsw i64 %222, %223
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @pci_write_config(i32 %219, i64 %224, i32 %225, i32 2)
  br label %227

227:                                              ; preds = %216, %141
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @alc_setlinkspeed(%struct.alc_softc*) #1

declare dso_local i32 @alc_miiext_writereg(%struct.alc_softc*, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
