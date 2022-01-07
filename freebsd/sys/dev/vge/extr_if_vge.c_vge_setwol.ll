; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i64, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@VGE_FLAG_PMCAP = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@VGE_WOLCR0C = common dso_local global i32 0, align 4
@VGE_WOLCR0_PATTERN_ALL = common dso_local global i32 0, align 4
@VGE_WOLCR1C = common dso_local global i32 0, align 4
@VGE_WOLCFGC = common dso_local global i32 0, align 4
@VGE_WOLCFG_SAB = common dso_local global i32 0, align 4
@VGE_WOLCFG_SAM = common dso_local global i32 0, align 4
@VGE_WOLCFG_PMEOVR = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@VGE_WOLCR1_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@VGE_WOLCR1_MAGIC = common dso_local global i32 0, align 4
@VGE_WOLCR1S = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@VGE_WOLCFGS = common dso_local global i32 0, align 4
@VGE_DIAGCTL = common dso_local global i32 0, align 4
@VGE_DIAGCTL_MACFORCE = common dso_local global i32 0, align 4
@VGE_DIAGCTL_FDXFORCE = common dso_local global i32 0, align 4
@VGE_DIAGCTL_GMII = common dso_local global i32 0, align 4
@VGE_WOLSR0C = common dso_local global i32 0, align 4
@VGE_WOLSR1C = common dso_local global i32 0, align 4
@VGE_PWRSTAT = common dso_local global i32 0, align 4
@VGE_STICKHW_SWPTAG = common dso_local global i32 0, align 4
@VGE_STICKHW_DS0 = common dso_local global i32 0, align 4
@VGE_STICKHW_DS1 = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_setwol(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %6 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %7 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %6)
  %8 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @VGE_FLAG_PMCAP, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = load i32, i32* @BMCR_PDOWN, align 4
  %23 = call i32 @vge_miibus_writereg(i32 %17, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %25 = call i32 @vge_miipoll_stop(%struct.vge_softc* %24)
  br label %178

26:                                               ; preds = %1
  %27 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %27, i32 0, i32 3
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  store %struct.ifnet* %29, %struct.ifnet** %3, align 8
  %30 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %31 = load i32, i32* @VGE_WOLCR0C, align 4
  %32 = load i32, i32* @VGE_WOLCR0_PATTERN_ALL, align 4
  %33 = call i32 @CSR_WRITE_1(%struct.vge_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %35 = load i32, i32* @VGE_WOLCR1C, align 4
  %36 = call i32 @CSR_WRITE_1(%struct.vge_softc* %34, i32 %35, i32 15)
  %37 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %38 = load i32, i32* @VGE_WOLCFGC, align 4
  %39 = load i32, i32* @VGE_WOLCFG_SAB, align 4
  %40 = load i32, i32* @VGE_WOLCFG_SAM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @VGE_WOLCFG_PMEOVR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @CSR_WRITE_1(%struct.vge_softc* %37, i32 %38, i32 %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFCAP_WOL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %101

51:                                               ; preds = %26
  %52 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %53 = call i32 @vge_setlinkspeed(%struct.vge_softc* %52)
  store i32 0, i32* %5, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @VGE_WOLCR1_UCAST, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @VGE_WOLCR1_MAGIC, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %77 = load i32, i32* @VGE_WOLCR1S, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @CSR_WRITE_1(%struct.vge_softc* %76, i32 %77, i32 %78)
  store i32 0, i32* %5, align 4
  %80 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75
  %87 = load i32, i32* @VGE_WOLCFG_SAM, align 4
  %88 = load i32, i32* @VGE_WOLCFG_SAB, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %75
  %93 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %94 = load i32, i32* @VGE_WOLCFGS, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @VGE_WOLCFG_PMEOVR, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @CSR_WRITE_1(%struct.vge_softc* %93, i32 %94, i32 %97)
  %99 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %100 = call i32 @vge_miipoll_stop(%struct.vge_softc* %99)
  br label %101

101:                                              ; preds = %92, %26
  %102 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %103 = load i32, i32* @VGE_DIAGCTL, align 4
  %104 = load i32, i32* @VGE_DIAGCTL_MACFORCE, align 4
  %105 = load i32, i32* @VGE_DIAGCTL_FDXFORCE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %102, i32 %103, i32 %106)
  %108 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %109 = load i32, i32* @VGE_DIAGCTL, align 4
  %110 = load i32, i32* @VGE_DIAGCTL_GMII, align 4
  %111 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %113 = load i32, i32* @VGE_WOLSR0C, align 4
  %114 = call i32 @CSR_WRITE_1(%struct.vge_softc* %112, i32 %113, i32 255)
  %115 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %116 = load i32, i32* @VGE_WOLSR1C, align 4
  %117 = call i32 @CSR_WRITE_1(%struct.vge_softc* %115, i32 %116, i32 255)
  %118 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %119 = load i32, i32* @VGE_PWRSTAT, align 4
  %120 = call i32 @CSR_READ_1(%struct.vge_softc* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @VGE_STICKHW_SWPTAG, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %125 = load i32, i32* @VGE_PWRSTAT, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @CSR_WRITE_1(%struct.vge_softc* %124, i32 %125, i32 %126)
  %128 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %129 = load i32, i32* @VGE_PWRSTAT, align 4
  %130 = call i32 @CSR_READ_1(%struct.vge_softc* %128, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @VGE_STICKHW_DS0, align 4
  %132 = load i32, i32* @VGE_STICKHW_DS1, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %137 = load i32, i32* @VGE_PWRSTAT, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @CSR_WRITE_1(%struct.vge_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %141 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %144 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @pci_read_config(i32 %142, i64 %147, i32 2)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %150 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %151 = or i32 %149, %150
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %4, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %4, align 4
  %155 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %156 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IFCAP_WOL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %101
  %162 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %163 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %4, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %161, %101
  %168 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %169 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %172 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @pci_write_config(i32 %170, i64 %175, i32 %176, i32 2)
  br label %178

178:                                              ; preds = %167, %14
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @vge_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @vge_miipoll_stop(%struct.vge_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @vge_setlinkspeed(%struct.vge_softc*) #1

declare dso_local i32 @CSR_SETBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
