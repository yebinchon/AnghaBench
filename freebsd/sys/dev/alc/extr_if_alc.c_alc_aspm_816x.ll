; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_aspm_816x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_aspm_816x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALC_PM_CFG = common dso_local global i32 0, align 4
@PM_CFG_L1_ENTRY_TIMER_816X_MASK = common dso_local global i32 0, align 4
@PM_CFG_L1_ENTRY_TIMER_816X_DEFAULT = common dso_local global i32 0, align 4
@PM_CFG_PM_REQ_TIMER_MASK = common dso_local global i32 0, align 4
@PM_CFG_PM_REQ_TIMER_816X_DEFAULT = common dso_local global i32 0, align 4
@PM_CFG_LCKDET_TIMER_MASK = common dso_local global i32 0, align 4
@PM_CFG_LCKDET_TIMER_DEFAULT = common dso_local global i32 0, align 4
@PM_CFG_SERDES_PD_EX_L1 = common dso_local global i32 0, align 4
@PM_CFG_CLK_SWH_L1 = common dso_local global i32 0, align 4
@PM_CFG_PCIE_RECV = common dso_local global i32 0, align 4
@PM_CFG_RX_L1_AFTER_L0S = common dso_local global i32 0, align 4
@PM_CFG_TX_L1_AFTER_L0S = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L0S_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_PLL_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_BUDS_RX_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SA_DLY_ENB = common dso_local global i32 0, align 4
@PM_CFG_MAC_ASPM_CHK = common dso_local global i32 0, align 4
@PM_CFG_HOTRST = common dso_local global i32 0, align 4
@AR816X_REV_A1 = common dso_local global i64 0, align 8
@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*, i32)* @alc_aspm_816x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_aspm_816x(%struct.alc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %7 = load i32, i32* @ALC_PM_CFG, align 4
  %8 = call i32 @CSR_READ_4(%struct.alc_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_816X_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_816X_DEFAULT, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @PM_CFG_PM_REQ_TIMER_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @PM_CFG_PM_REQ_TIMER_816X_DEFAULT, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @PM_CFG_LCKDET_TIMER_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @PM_CFG_LCKDET_TIMER_DEFAULT, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @PM_CFG_SERDES_PD_EX_L1, align 4
  %31 = load i32, i32* @PM_CFG_CLK_SWH_L1, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PM_CFG_PCIE_RECV, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @PM_CFG_RX_L1_AFTER_L0S, align 4
  %38 = load i32, i32* @PM_CFG_TX_L1_AFTER_L0S, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PM_CFG_SERDES_L1_ENB, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PM_CFG_SERDES_PLL_L1_ENB, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PM_CFG_SERDES_BUDS_RX_L1_ENB, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @PM_CFG_SA_DLY_ENB, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PM_CFG_MAC_ASPM_CHK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PM_CFG_HOTRST, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @AR816X_REV(i32 %61)
  %63 = load i64, i64* @AR816X_REV_A1, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %2
  %66 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @PM_CFG_SERDES_L1_ENB, align 4
  %73 = load i32, i32* @PM_CFG_SERDES_PLL_L1_ENB, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %65, %2
  %78 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ALC_FLAG_LINK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %86 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PM_CFG_MAC_ASPM_CHK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %120

92:                                               ; preds = %77
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %97 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PM_CFG_MAC_ASPM_CHK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  br label %119

103:                                              ; preds = %92
  %104 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %105 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %103
  %113 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %114 = load i32, i32* @PM_CFG_MAC_ASPM_CHK, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %112, %103
  br label %119

119:                                              ; preds = %118, %95
  br label %120

120:                                              ; preds = %119, %84
  %121 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %122 = load i32, i32* @ALC_PM_CFG, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @CSR_WRITE_4(%struct.alc_softc* %121, i32 %122, i32 %123)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i64 @AR816X_REV(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
