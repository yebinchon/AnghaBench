; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_setwol_813x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_setwol_813x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@ALC_FLAG_PM = common dso_local global i32 0, align 4
@ALC_WOL_CFG = common dso_local global i32 0, align 4
@ALC_PCIE_PHYMISC = common dso_local global i32 0, align 4
@PCIE_PHYMISC_FORCE_RCV_DET = common dso_local global i32 0, align 4
@ALC_MASTER_CFG = common dso_local global i32 0, align 4
@MASTER_CLK_SEL_DIS = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@ALC_FLAG_FASTETHER = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@WOL_CFG_MAGIC = common dso_local global i32 0, align 4
@WOL_CFG_MAGIC_ENB = common dso_local global i32 0, align 4
@ALC_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_DBG = common dso_local global i32 0, align 4
@MAC_CFG_PROMISC = common dso_local global i32 0, align 4
@MAC_CFG_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CFG_BCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@MAC_CFG_RX_ENB = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_setwol_813x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_setwol_813x(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %7 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %8 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %7)
  %9 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %10 = call i32 @alc_disable_l0s_l1(%struct.alc_softc* %9)
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 3
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %3, align 8
  %14 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ALC_FLAG_PM, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %22 = load i32, i32* @ALC_WOL_CFG, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.alc_softc* %21, i32 %22, i32 0)
  %24 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %25 = load i32, i32* @ALC_PCIE_PHYMISC, align 4
  %26 = call i32 @CSR_READ_4(%struct.alc_softc* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %31 = load i32, i32* @ALC_PCIE_PHYMISC, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CSR_WRITE_4(%struct.alc_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %35 = call i32 @alc_phy_down(%struct.alc_softc* %34)
  %36 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %37 = load i32, i32* @ALC_MASTER_CFG, align 4
  %38 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %39 = load i32, i32* @ALC_MASTER_CFG, align 4
  %40 = call i32 @CSR_READ_4(%struct.alc_softc* %38, i32 %39)
  %41 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @CSR_WRITE_4(%struct.alc_softc* %36, i32 %37, i32 %42)
  br label %196

44:                                               ; preds = %1
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFCAP_WOL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ALC_FLAG_FASTETHER, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %60 = call i32 @alc_setlinkspeed(%struct.alc_softc* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %63 = load i32, i32* @ALC_MASTER_CFG, align 4
  %64 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %65 = load i32, i32* @ALC_MASTER_CFG, align 4
  %66 = call i32 @CSR_READ_4(%struct.alc_softc* %64, i32 %65)
  %67 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @CSR_WRITE_4(%struct.alc_softc* %62, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %61, %44
  store i32 0, i32* %5, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @WOL_CFG_MAGIC, align 4
  %80 = load i32, i32* @WOL_CFG_MAGIC_ENB, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %86 = load i32, i32* @ALC_WOL_CFG, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @CSR_WRITE_4(%struct.alc_softc* %85, i32 %86, i32 %87)
  %89 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %90 = load i32, i32* @ALC_MAC_CFG, align 4
  %91 = call i32 @CSR_READ_4(%struct.alc_softc* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @MAC_CFG_DBG, align 4
  %93 = load i32, i32* @MAC_CFG_PROMISC, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @MAC_CFG_BCAST, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %4, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %84
  %109 = load i32, i32* @MAC_CFG_ALLMULTI, align 4
  %110 = load i32, i32* @MAC_CFG_BCAST, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %108, %84
  %115 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IFCAP_WOL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @MAC_CFG_RX_ENB, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %114
  %126 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %127 = load i32, i32* @ALC_MAC_CFG, align 4
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @CSR_WRITE_4(%struct.alc_softc* %126, i32 %127, i32 %128)
  %130 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %131 = load i32, i32* @ALC_PCIE_PHYMISC, align 4
  %132 = call i32 @CSR_READ_4(%struct.alc_softc* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* @PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %134 = load i32, i32* %4, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %4, align 4
  %136 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %137 = load i32, i32* @ALC_PCIE_PHYMISC, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @CSR_WRITE_4(%struct.alc_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %141 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IFCAP_WOL, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %125
  %147 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %148 = call i32 @alc_phy_down(%struct.alc_softc* %147)
  %149 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %150 = load i32, i32* @ALC_MASTER_CFG, align 4
  %151 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %152 = load i32, i32* @ALC_MASTER_CFG, align 4
  %153 = call i32 @CSR_READ_4(%struct.alc_softc* %151, i32 %152)
  %154 = load i32, i32* @MASTER_CLK_SEL_DIS, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @CSR_WRITE_4(%struct.alc_softc* %149, i32 %150, i32 %155)
  br label %157

157:                                              ; preds = %146, %125
  %158 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %159 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %162 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @pci_read_config(i32 %160, i64 %165, i32 2)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %168 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IFCAP_WOL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %157
  %180 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %181 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %179, %157
  %186 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %187 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %190 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @pci_write_config(i32 %188, i64 %193, i32 %194, i32 2)
  br label %196

196:                                              ; preds = %185, %20
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @alc_disable_l0s_l1(%struct.alc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @alc_phy_down(%struct.alc_softc*) #1

declare dso_local i32 @alc_setlinkspeed(%struct.alc_softc*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
