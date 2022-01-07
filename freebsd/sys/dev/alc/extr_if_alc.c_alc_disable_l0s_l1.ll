; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_disable_l0s_l1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_disable_l0s_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_PM_CFG = common dso_local global i32 0, align 4
@PM_CFG_L1_ENTRY_TIMER_MASK = common dso_local global i32 0, align 4
@PM_CFG_CLK_SWH_L1 = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L0S_ENB = common dso_local global i32 0, align 4
@PM_CFG_ASPM_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_MAC_ASPM_CHK = common dso_local global i32 0, align 4
@PM_CFG_SERDES_PD_EX_L1 = common dso_local global i32 0, align 4
@PM_CFG_SERDES_BUDS_RX_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_PLL_L1_ENB = common dso_local global i32 0, align 4
@PM_CFG_SERDES_L1_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_disable_l0s_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_disable_l0s_l1(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %4 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = load i32, i32* @ALC_PM_CFG, align 4
  %13 = call i32 @CSR_READ_4(%struct.alc_softc* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @PM_CFG_L1_ENTRY_TIMER_MASK, align 4
  %15 = load i32, i32* @PM_CFG_CLK_SWH_L1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PM_CFG_ASPM_L0S_ENB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PM_CFG_ASPM_L1_ENB, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PM_CFG_MAC_ASPM_CHK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PM_CFG_SERDES_PD_EX_L1, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @PM_CFG_SERDES_BUDS_RX_L1_ENB, align 4
  %29 = load i32, i32* @PM_CFG_SERDES_PLL_L1_ENB, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PM_CFG_SERDES_L1_ENB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %36 = load i32, i32* @ALC_PM_CFG, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.alc_softc* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
