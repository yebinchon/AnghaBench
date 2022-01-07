; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@REV_ID_VT6102_A = common dso_local global i64 0, align 8
@PCIY_PMG = common dso_local global i32 0, align 4
@VR_WOLCR_CLR = common dso_local global i32 0, align 4
@VR_WOLCFG_CLR = common dso_local global i32 0, align 4
@VR_WOLCFG_SAB = common dso_local global i32 0, align 4
@VR_WOLCFG_SAM = common dso_local global i32 0, align 4
@VR_PWRCSR_CLR = common dso_local global i32 0, align 4
@VR_PWRCFG_CLR = common dso_local global i32 0, align 4
@VR_PWRCFG_WOLEN = common dso_local global i32 0, align 4
@REV_ID_VT6105_B0 = common dso_local global i64 0, align 8
@VR_WOLCFG_PATTERN_PAGE = common dso_local global i32 0, align 4
@VR_TESTREG_CLR = common dso_local global i32 0, align 4
@VR_PWRCSR1_CLR = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@VR_WOLCR_SET = common dso_local global i32 0, align 4
@VR_WOLCR_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@VR_WOLCR_MAGIC = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@VR_WOLCFG_SET = common dso_local global i32 0, align 4
@VR_STICKHW = common dso_local global i32 0, align 4
@VR_STICKHW_WOL_ENB = common dso_local global i32 0, align 4
@VR_PWRCFG_SET = common dso_local global i32 0, align 4
@VR_STICKHW_DS0 = common dso_local global i32 0, align 4
@VR_STICKHW_DS1 = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_softc*)* @vr_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_setwol(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %7 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %8 = call i32 @VR_LOCK_ASSERT(%struct.vr_softc* %7)
  %9 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REV_ID_VT6102_A, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCIY_PMG, align 4
  %19 = call i64 @pci_find_cap(i32 %17, i32 %18, i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  br label %158

22:                                               ; preds = %14
  %23 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %23, i32 0, i32 2
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %3, align 8
  %26 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %27 = load i32, i32* @VR_WOLCR_CLR, align 4
  %28 = call i32 @CSR_WRITE_1(%struct.vr_softc* %26, i32 %27, i32 255)
  %29 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %30 = load i32, i32* @VR_WOLCFG_CLR, align 4
  %31 = load i32, i32* @VR_WOLCFG_SAB, align 4
  %32 = load i32, i32* @VR_WOLCFG_SAM, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @CSR_WRITE_1(%struct.vr_softc* %29, i32 %30, i32 %33)
  %35 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %36 = load i32, i32* @VR_PWRCSR_CLR, align 4
  %37 = call i32 @CSR_WRITE_1(%struct.vr_softc* %35, i32 %36, i32 255)
  %38 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %39 = load i32, i32* @VR_PWRCFG_CLR, align 4
  %40 = load i32, i32* @VR_PWRCFG_WOLEN, align 4
  %41 = call i32 @CSR_WRITE_1(%struct.vr_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %43 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REV_ID_VT6105_B0, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %22
  %48 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %49 = load i32, i32* @VR_WOLCFG_CLR, align 4
  %50 = load i32, i32* @VR_WOLCFG_PATTERN_PAGE, align 4
  %51 = call i32 @CSR_WRITE_1(%struct.vr_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %53 = load i32, i32* @VR_TESTREG_CLR, align 4
  %54 = call i32 @CSR_WRITE_1(%struct.vr_softc* %52, i32 %53, i32 3)
  %55 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %56 = load i32, i32* @VR_PWRCSR1_CLR, align 4
  %57 = call i32 @CSR_WRITE_1(%struct.vr_softc* %55, i32 %56, i32 3)
  br label %58

58:                                               ; preds = %47, %22
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %67 = load i32, i32* @VR_WOLCR_SET, align 4
  %68 = load i32, i32* @VR_WOLCR_UCAST, align 4
  %69 = call i32 @CSR_WRITE_1(%struct.vr_softc* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %79 = load i32, i32* @VR_WOLCR_SET, align 4
  %80 = load i32, i32* @VR_WOLCR_MAGIC, align 4
  %81 = call i32 @CSR_WRITE_1(%struct.vr_softc* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IFCAP_WOL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %91 = load i32, i32* @VR_WOLCFG_SET, align 4
  %92 = load i32, i32* @VR_WOLCFG_SAB, align 4
  %93 = load i32, i32* @VR_WOLCFG_SAM, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @CSR_WRITE_1(%struct.vr_softc* %90, i32 %91, i32 %94)
  %96 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %97 = load i32, i32* @VR_STICKHW, align 4
  %98 = call i32 @CSR_READ_1(%struct.vr_softc* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %100 = load i32, i32* @VR_STICKHW, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @VR_STICKHW_WOL_ENB, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @CSR_WRITE_1(%struct.vr_softc* %99, i32 %100, i32 %103)
  %105 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %106 = load i32, i32* @VR_PWRCFG_SET, align 4
  %107 = load i32, i32* @VR_PWRCFG_WOLEN, align 4
  %108 = call i32 @CSR_WRITE_1(%struct.vr_softc* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %89, %82
  %110 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %111 = load i32, i32* @VR_STICKHW, align 4
  %112 = call i32 @CSR_READ_1(%struct.vr_softc* %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @VR_STICKHW_DS0, align 4
  %114 = load i32, i32* @VR_STICKHW_DS1, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %119 = load i32, i32* @VR_STICKHW, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @CSR_WRITE_1(%struct.vr_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %123 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @pci_read_config(i32 %124, i64 %128, i32 2)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %131 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IFCAP_WOL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %109
  %143 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %144 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %142, %109
  %149 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %150 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @pci_write_config(i32 %151, i64 %155, i32 %156, i32 2)
  br label %158

158:                                              ; preds = %148, %21
  ret void
}

declare dso_local i32 @VR_LOCK_ASSERT(%struct.vr_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
