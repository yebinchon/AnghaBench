; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_pm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@AE_FLAG_PMG = common dso_local global i32 0, align 4
@AE_WOL_REG = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@AE_WOL_MAGIC = common dso_local global i32 0, align 4
@AE_WOL_MAGIC_PME = common dso_local global i32 0, align 4
@AE_MAC_RX_EN = common dso_local global i32 0, align 4
@AE_MAC_CLK_PHY = common dso_local global i32 0, align 4
@AE_MAC_TX_CRC_EN = common dso_local global i32 0, align 4
@AE_MAC_TX_AUTOPAD = common dso_local global i32 0, align 4
@AE_HALFBUF_DEFAULT = common dso_local global i32 0, align 4
@AE_HALFBUF_SHIFT = common dso_local global i32 0, align 4
@AE_HALFBUF_MASK = common dso_local global i32 0, align 4
@AE_MAC_PREAMBLE_DEFAULT = common dso_local global i32 0, align 4
@AE_MAC_PREAMBLE_SHIFT = common dso_local global i32 0, align 4
@AE_MAC_PREAMBLE_MASK = common dso_local global i32 0, align 4
@AE_MAC_BCAST_EN = common dso_local global i32 0, align 4
@AE_MAC_MCAST_EN = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@AE_MAC_FULL_DUPLEX = common dso_local global i32 0, align 4
@AE_MAC_REG = common dso_local global i32 0, align 4
@AE_WOL_LNKCHG = common dso_local global i32 0, align 4
@AE_WOL_LNKCHG_PME = common dso_local global i32 0, align 4
@AE_PCIE_PHYMISC_REG = common dso_local global i32 0, align 4
@AE_PCIE_PHYMISC_FORCE_RCV_DET = common dso_local global i32 0, align 4
@AE_PCIE_DLL_TX_CTRL_REG = common dso_local global i32 0, align 4
@AE_PCIE_DLL_TX_CTRL_SEL_NOR_CLK = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ae_pm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae_pm_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @AE_LOCK_ASSERT(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AE_FLAG_PMG, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @AE_WOL_REG, align 4
  %22 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %20, i32 %21, i32 0)
  br label %174

23:                                               ; preds = %1
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFCAP_WOL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.mii_data* @device_get_softc(i32 %33)
  store %struct.mii_data* %34, %struct.mii_data** %6, align 8
  %35 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %36 = call i32 @mii_pollstat(%struct.mii_data* %35)
  %37 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFM_AVALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %96

43:                                               ; preds = %30
  %44 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %45 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFM_ACTIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* @AE_WOL_REG, align 4
  %53 = load i32, i32* @AE_WOL_MAGIC, align 4
  %54 = load i32, i32* @AE_WOL_MAGIC_PME, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %51, i32 %52, i32 %55)
  %57 = load i32, i32* @AE_MAC_RX_EN, align 4
  %58 = load i32, i32* @AE_MAC_CLK_PHY, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @AE_MAC_TX_CRC_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AE_MAC_TX_AUTOPAD, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @AE_HALFBUF_DEFAULT, align 4
  %65 = load i32, i32* @AE_HALFBUF_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @AE_HALFBUF_MASK, align 4
  %68 = and i32 %66, %67
  %69 = or i32 %63, %68
  %70 = load i32, i32* @AE_MAC_PREAMBLE_DEFAULT, align 4
  %71 = load i32, i32* @AE_MAC_PREAMBLE_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* @AE_MAC_PREAMBLE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = or i32 %69, %74
  %76 = load i32, i32* @AE_MAC_BCAST_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AE_MAC_MCAST_EN, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %4, align 4
  %80 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @IFM_OPTIONS(i32 %82)
  %84 = load i32, i32* @IFM_FDX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %50
  %88 = load i32, i32* @AE_MAC_FULL_DUPLEX, align 4
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %50
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = load i32, i32* @AE_MAC_REG, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %92, i32 %93, i32 %94)
  br label %106

96:                                               ; preds = %43, %30
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = load i32, i32* @AE_WOL_REG, align 4
  %99 = load i32, i32* @AE_WOL_LNKCHG, align 4
  %100 = load i32, i32* @AE_WOL_LNKCHG_PME, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %97, i32 %98, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = load i32, i32* @AE_MAC_REG, align 4
  %105 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %103, i32 %104, i32 0)
  br label %106

106:                                              ; preds = %96, %91
  br label %110

107:                                              ; preds = %23
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = call i32 @ae_powersave_enable(%struct.TYPE_7__* %108)
  br label %110

110:                                              ; preds = %107, %106
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = load i32, i32* @AE_PCIE_PHYMISC_REG, align 4
  %113 = call i32 @AE_READ_4(%struct.TYPE_7__* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @AE_PCIE_PHYMISC_FORCE_RCV_DET, align 4
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = load i32, i32* @AE_PCIE_PHYMISC_REG, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %117, i32 %118, i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = load i32, i32* @AE_PCIE_DLL_TX_CTRL_REG, align 4
  %123 = call i32 @AE_READ_4(%struct.TYPE_7__* %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* @AE_PCIE_DLL_TX_CTRL_SEL_NOR_CLK, align 4
  %125 = load i32, i32* %4, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %4, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = load i32, i32* @AE_PCIE_DLL_TX_CTRL_REG, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @AE_WRITE_4(%struct.TYPE_7__* %127, i32 %128, i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @PCIY_PMG, align 4
  %135 = call i64 @pci_find_cap(i32 %133, i32 %134, i32* %7)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %110
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @pci_read_config(i32 %140, i64 %144, i32 2)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %147 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IFCAP_WOL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %137
  %159 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %160 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %137
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %171 = add nsw i64 %169, %170
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @pci_write_config(i32 %167, i64 %171, i32 %172, i32 2)
  br label %174

174:                                              ; preds = %19, %164, %110
  ret void
}

declare dso_local i32 @AE_LOCK_ASSERT(%struct.TYPE_7__*) #1

declare dso_local i32 @AE_WRITE_4(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @ae_powersave_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @AE_READ_4(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
