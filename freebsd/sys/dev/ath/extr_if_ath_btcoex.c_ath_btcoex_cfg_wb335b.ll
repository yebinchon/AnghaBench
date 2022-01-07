; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_cfg_wb335b.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex.c_ath_btcoex_cfg_wb335b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32 }

@ATH_PCI_AR9565_1ANT = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_ANT_ARCH = common dso_local global i32 0, align 4
@ATH_MCI_ANT_ARCH_1_ANT_PA_LNA_SHARED = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_ANT_ARCH_S = common dso_local global i32 0, align 4
@ATH_PCI_AR9565_2ANT = common dso_local global i32 0, align 4
@ATH_MCI_ANT_ARCH_2_ANT_PA_LNA_NON_SHARED = common dso_local global i32 0, align 4
@ATH_PCI_BT_ANT_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Enabling WB335 BTCOEX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_btcoex_cfg_wb335b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_btcoex_cfg_wb335b(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 42177, i32* %3, align 4
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ATH_PCI_AR9565_1ANT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @ATH_MCI_CONFIG_ANT_ARCH, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @ATH_MCI_ANT_ARCH_1_ANT_PA_LNA_SHARED, align 4
  %17 = load i32, i32* @ATH_MCI_CONFIG_ANT_ARCH_S, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATH_PCI_AR9565_2ANT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* @ATH_MCI_CONFIG_ANT_ARCH, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @ATH_MCI_ANT_ARCH_2_ANT_PA_LNA_NON_SHARED, align 4
  %34 = load i32, i32* @ATH_MCI_CONFIG_ANT_ARCH_S, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %21
  br label %39

39:                                               ; preds = %38, %11
  %40 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATH_PCI_BT_ANT_DIV, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ath_btcoex_cfg_mci(%struct.ath_softc* %52, i32 %53, i32 %54)
  ret i32 %55
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ath_btcoex_cfg_mci(%struct.ath_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
