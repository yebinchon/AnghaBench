; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@JME_FLAG_TXCLK = common dso_local global i32 0, align 4
@JME_GHC = common dso_local global i32 0, align 4
@GHC_TX_OFFLD_CLK_100 = common dso_local global i32 0, align 4
@GHC_TX_MAC_CLK_100 = common dso_local global i32 0, align 4
@GHC_TX_OFFLD_CLK_1000 = common dso_local global i32 0, align 4
@GHC_TX_MAC_CLK_1000 = common dso_local global i32 0, align 4
@JME_FLAG_RXCLK = common dso_local global i32 0, align 4
@JME_GPREG1 = common dso_local global i32 0, align 4
@GPREG1_RX_MAC_CLK_DIS = common dso_local global i32 0, align 4
@JME_GPREG0 = common dso_local global i32 0, align 4
@GPREG0_PME_ENB = common dso_local global i32 0, align 4
@JME_PMCS = common dso_local global i32 0, align 4
@PMCS_WOL_ENB_MASK = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@PMCS_MAGIC_FRAME = common dso_local global i32 0, align 4
@PMCS_MAGIC_FRAME_ENB = common dso_local global i32 0, align 4
@JME_FLAG_FASTETH = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_setwol(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %8 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %9 = call i32 @JME_LOCK_ASSERT(%struct.jme_softc* %8)
  %10 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %11 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCIY_PMG, align 4
  %14 = call i64 @pci_find_cap(i32 %12, i32 %13, i32* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %1
  %17 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %18 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @JME_FLAG_TXCLK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %25 = load i32, i32* @JME_GHC, align 4
  %26 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %27 = load i32, i32* @JME_GHC, align 4
  %28 = call i32 @CSR_READ_4(%struct.jme_softc* %26, i32 %27)
  %29 = load i32, i32* @GHC_TX_OFFLD_CLK_100, align 4
  %30 = load i32, i32* @GHC_TX_MAC_CLK_100, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GHC_TX_OFFLD_CLK_1000, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GHC_TX_MAC_CLK_1000, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %28, %36
  %38 = call i32 @CSR_WRITE_4(%struct.jme_softc* %24, i32 %25, i32 %37)
  br label %39

39:                                               ; preds = %23, %16
  %40 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %41 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @JME_FLAG_RXCLK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %48 = load i32, i32* @JME_GPREG1, align 4
  %49 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %50 = load i32, i32* @JME_GPREG1, align 4
  %51 = call i32 @CSR_READ_4(%struct.jme_softc* %49, i32 %50)
  %52 = load i32, i32* @GPREG1_RX_MAC_CLK_DIS, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @CSR_WRITE_4(%struct.jme_softc* %47, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %46, %39
  %56 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %57 = call i32 @jme_phy_down(%struct.jme_softc* %56)
  br label %177

58:                                               ; preds = %1
  %59 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %60 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %59, i32 0, i32 2
  %61 = load %struct.ifnet*, %struct.ifnet** %60, align 8
  store %struct.ifnet* %61, %struct.ifnet** %3, align 8
  %62 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %63 = load i32, i32* @JME_GPREG0, align 4
  %64 = call i32 @CSR_READ_4(%struct.jme_softc* %62, i32 %63)
  %65 = load i32, i32* @GPREG0_PME_ENB, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  store i32 %67, i32* %4, align 4
  %68 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %69 = load i32, i32* @JME_PMCS, align 4
  %70 = call i32 @CSR_READ_4(%struct.jme_softc* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @PMCS_WOL_ENB_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %58
  %82 = load i32, i32* @PMCS_MAGIC_FRAME, align 4
  %83 = load i32, i32* @PMCS_MAGIC_FRAME_ENB, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @GPREG0_PME_ENB, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %91 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @JME_FLAG_FASTETH, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %98 = call i32 @jme_setlinkspeed(%struct.jme_softc* %97)
  br label %99

99:                                               ; preds = %96, %81
  br label %100

100:                                              ; preds = %99, %58
  %101 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %102 = load i32, i32* @JME_PMCS, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @CSR_WRITE_4(%struct.jme_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %106 = load i32, i32* @JME_GPREG0, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @CSR_WRITE_4(%struct.jme_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %110 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @JME_FLAG_TXCLK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %100
  %116 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %117 = load i32, i32* @JME_GHC, align 4
  %118 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %119 = load i32, i32* @JME_GHC, align 4
  %120 = call i32 @CSR_READ_4(%struct.jme_softc* %118, i32 %119)
  %121 = load i32, i32* @GHC_TX_OFFLD_CLK_100, align 4
  %122 = load i32, i32* @GHC_TX_MAC_CLK_100, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @GHC_TX_OFFLD_CLK_1000, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @GHC_TX_MAC_CLK_1000, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = and i32 %120, %128
  %130 = call i32 @CSR_WRITE_4(%struct.jme_softc* %116, i32 %117, i32 %129)
  br label %131

131:                                              ; preds = %115, %100
  %132 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %133 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @pci_read_config(i32 %134, i64 %138, i32 2)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %141 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IFCAP_WOL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %131
  %153 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %154 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %152, %131
  %159 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %160 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %165 = add nsw i64 %163, %164
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @pci_write_config(i32 %161, i64 %165, i32 %166, i32 2)
  %168 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IFCAP_WOL, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %158
  %175 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %176 = call i32 @jme_phy_down(%struct.jme_softc* %175)
  br label %177

177:                                              ; preds = %55, %174, %158
  ret void
}

declare dso_local i32 @JME_LOCK_ASSERT(%struct.jme_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @jme_phy_down(%struct.jme_softc*) #1

declare dso_local i32 @jme_setlinkspeed(%struct.jme_softc*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
