; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_wol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFCAP_WOL = common dso_local global i32 0, align 4
@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@SIS_RX_LISTPTR = common dso_local global i32 0, align 4
@NS_WCSR = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@NS_WCSR_WAKE_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@NS_WCSR_WAKE_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@NS_WCSR_WAKE_MAGIC = common dso_local global i32 0, align 4
@NS_CLKRUN = common dso_local global i32 0, align 4
@NS_CLKRUN_PMEENB = common dso_local global i32 0, align 4
@NS_CLKRUN_PMESTS = common dso_local global i32 0, align 4
@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_RX_ENABLE = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@SIS_PWRMAN_WOL_MAGIC = common dso_local global i32 0, align 4
@SIS_PWRMAN_CTL = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_wol(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %7 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFCAP_WOL, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %143

17:                                               ; preds = %1
  %18 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIS_TYPE_83815, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %83

23:                                               ; preds = %17
  %24 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %25 = load i32, i32* @SIS_RX_LISTPTR, align 4
  %26 = call i32 @CSR_WRITE_4(%struct.sis_softc* %24, i32 %25, i32 0)
  %27 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %28 = load i32, i32* @NS_WCSR, align 4
  %29 = call i32 @CSR_READ_4(%struct.sis_softc* %27, i32 %28)
  store i32 0, i32* %4, align 4
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @NS_WCSR_WAKE_UCAST, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %23
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @NS_WCSR_WAKE_MCAST, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @NS_WCSR_WAKE_MAGIC, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %64 = load i32, i32* @NS_WCSR, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @CSR_WRITE_4(%struct.sis_softc* %63, i32 %64, i32 %65)
  %67 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %68 = load i32, i32* @NS_CLKRUN, align 4
  %69 = call i32 @CSR_READ_4(%struct.sis_softc* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @NS_CLKRUN_PMEENB, align 4
  %71 = load i32, i32* @NS_CLKRUN_PMESTS, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %76 = load i32, i32* @NS_CLKRUN, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @CSR_WRITE_4(%struct.sis_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %80 = load i32, i32* @SIS_CSR, align 4
  %81 = load i32, i32* @SIS_CSR_RX_ENABLE, align 4
  %82 = call i32 @SIS_SETBIT(%struct.sis_softc* %79, i32 %80, i32 %81)
  br label %143

83:                                               ; preds = %17
  %84 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %85 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PCIY_PMG, align 4
  %88 = call i64 @pci_find_cap(i32 %86, i32 %87, i32* %6)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %143

91:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @SIS_PWRMAN_WOL_MAGIC, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %104 = load i32, i32* @SIS_PWRMAN_CTL, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @CSR_WRITE_4(%struct.sis_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %108 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @pci_read_config(i32 %109, i64 %113, i32 2)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %116 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %122 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %102
  %128 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %129 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %102
  %134 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %135 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @pci_write_config(i32 %136, i64 %140, i32 %141, i32 2)
  br label %143

143:                                              ; preds = %16, %90, %133, %62
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
