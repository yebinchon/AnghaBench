; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhc_get_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhc_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sdhci_softc = type { i64, i32 }

@SDHCI_CLOCK_INT_EN = common dso_local global i32 0, align 4
@SDHC_PRES_STATE = common dso_local global i32 0, align 4
@SDHC_PRES_SDSTB = common dso_local global i32 0, align 4
@SDHCI_CLOCK_INT_STABLE = common dso_local global i32 0, align 4
@HWTYPE_ESDHC = common dso_local global i64 0, align 8
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@SDHC_CLK_SDCLKEN = common dso_local global i32 0, align 4
@SDHC_SYS_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_sdhci_softc*)* @fsl_sdhc_get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sdhc_get_clock(%struct.fsl_sdhci_softc* %0) #0 {
  %2 = alloca %struct.fsl_sdhci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_sdhci_softc* %0, %struct.fsl_sdhci_softc** %2, align 8
  %4 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SDHCI_CLOCK_INT_EN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %2, align 8
  %11 = load i32, i32* @SDHC_PRES_STATE, align 4
  %12 = call i32 @RD4(%struct.fsl_sdhci_softc* %10, i32 %11)
  %13 = load i32, i32* @SDHC_PRES_SDSTB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @SDHCI_CLOCK_INT_STABLE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HWTYPE_ESDHC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
