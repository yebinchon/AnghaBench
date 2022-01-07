; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_read_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.fsl_sdhci_softc = type { i32 }

@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHC_PROT_CTRL = common dso_local global i32 0, align 4
@SDHCI_CTRL_LED = common dso_local global i32 0, align 4
@SDHCI_CTRL_CARD_DET = common dso_local global i32 0, align 4
@SDHCI_CTRL_FORCE_CARD = common dso_local global i32 0, align 4
@SDHC_PROT_WIDTH_MASK = common dso_local global i32 0, align 4
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@SDHCI_CTRL_8BITBUS = common dso_local global i32 0, align 4
@SDHC_PROT_DMA_MASK = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA264 = common dso_local global i32 0, align 4
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_POWER_ON = common dso_local global i32 0, align 4
@SDHCI_POWER_300 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_slot*, i32)* @fsl_sdhci_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sdhci_read_1(i32 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_sdhci_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.fsl_sdhci_softc* @device_get_softc(i32 %11)
  store %struct.fsl_sdhci_softc* %12, %struct.fsl_sdhci_softc** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  %17 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %18 = load i32, i32* @SDHC_PROT_CTRL, align 4
  %19 = call i32 @RD4(%struct.fsl_sdhci_softc* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @SDHCI_CTRL_LED, align 4
  %22 = load i32, i32* @SDHCI_CTRL_CARD_DET, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SDHCI_CTRL_FORCE_CARD, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %20, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SDHC_PROT_WIDTH_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %39 [
    i32 130, label %30
    i32 129, label %31
    i32 128, label %35
  ]

30:                                               ; preds = %16
  br label %39

31:                                               ; preds = %16
  %32 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %39

35:                                               ; preds = %16
  %36 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %16, %35, %31, %30
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @SDHC_PROT_DMA_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %53 [
    i32 131, label %43
    i32 134, label %44
    i32 133, label %45
    i32 132, label %49
  ]

43:                                               ; preds = %39
  br label %53

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @SDHCI_CTRL_ADMA2, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @SDHCI_CTRL_ADMA264, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %39, %49, %45, %44, %43
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %73

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @SDHCI_POWER_ON, align 4
  %61 = load i32, i32* @SDHCI_POWER_300, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %4, align 4
  br label %73

63:                                               ; preds = %55
  %64 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -4
  %67 = call i32 @RD4(%struct.fsl_sdhci_softc* %64, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 3
  %70 = mul nsw i32 %69, 8
  %71 = ashr i32 %67, %70
  %72 = and i32 %71, 255
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %63, %59, %53
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.fsl_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
