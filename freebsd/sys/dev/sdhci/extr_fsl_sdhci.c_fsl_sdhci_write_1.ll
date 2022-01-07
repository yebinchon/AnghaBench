; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_write_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_write_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.fsl_sdhci_softc = type { i32 }

@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHC_PROT_CTRL = common dso_local global i32 0, align 4
@SDHC_PROT_LED = common dso_local global i32 0, align 4
@SDHC_PROT_DMA_MASK = common dso_local global i32 0, align 4
@SDHC_PROT_WIDTH_MASK = common dso_local global i32 0, align 4
@SDHC_PROT_CDTL = common dso_local global i32 0, align 4
@SDHC_PROT_CDSS = common dso_local global i32 0, align 4
@SDHCI_CTRL_LED = common dso_local global i32 0, align 4
@SDHCI_CTRL_8BITBUS = common dso_local global i32 0, align 4
@SDHC_PROT_WIDTH_8BIT = common dso_local global i32 0, align 4
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@SDHCI_CTRL_SDMA = common dso_local global i32 0, align 4
@SDHCI_CTRL_ADMA2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_CARD_DET = common dso_local global i32 0, align 4
@SDHCI_CTRL_FORCE_CARD = common dso_local global i32 0, align 4
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_SOFTWARE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*, i32, i32)* @fsl_sdhci_write_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sdhci_write_1(i32 %0, %struct.sdhci_slot* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_sdhci_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.fsl_sdhci_softc* @device_get_softc(i32 %11)
  store %struct.fsl_sdhci_softc* %12, %struct.fsl_sdhci_softc** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %4
  %17 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %9, align 8
  %18 = load i32, i32* @SDHC_PROT_CTRL, align 4
  %19 = call i32 @RD4(%struct.fsl_sdhci_softc* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @SDHC_PROT_LED, align 4
  %21 = load i32, i32* @SDHC_PROT_DMA_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SDHC_PROT_WIDTH_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SDHC_PROT_CDTL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SDHC_PROT_CDSS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SDHCI_CTRL_LED, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = load i32, i32* @SDHC_PROT_WIDTH_8BIT, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %51

45:                                               ; preds = %16
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @SDHCI_CTRL_SDMA, align 4
  %54 = load i32, i32* @SDHCI_CTRL_ADMA2, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SDHCI_CTRL_CARD_DET, align 4
  %62 = load i32, i32* @SDHCI_CTRL_FORCE_CARD, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %9, align 8
  %68 = load i32, i32* @SDHC_PROT_CTRL, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @WR4(%struct.fsl_sdhci_softc* %67, i32 %68, i32 %69)
  br label %100

71:                                               ; preds = %4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %100

76:                                               ; preds = %71
  %77 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, -4
  %80 = call i32 @RD4(%struct.fsl_sdhci_softc* %77, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 3
  %83 = mul nsw i32 %82, 8
  %84 = shl i32 255, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 3
  %91 = mul nsw i32 %90, 8
  %92 = shl i32 %88, %91
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, -4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @WR4(%struct.fsl_sdhci_softc* %95, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %76, %75, %51
  ret void
}

declare dso_local %struct.fsl_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

declare dso_local i32 @WR4(%struct.fsl_sdhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
