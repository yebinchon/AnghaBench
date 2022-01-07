; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhc_set_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sdhci_softc = type { i32, i64, i32, i32 }

@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_DIVIDERS_MASK = common dso_local global i32 0, align 4
@HWTYPE_ESDHC = common dso_local global i64 0, align 8
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_SHIFT = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_HI_MASK = common dso_local global i32 0, align 4
@SDHCI_DIVIDER_MASK_LEN = common dso_local global i32 0, align 4
@SDHC_CLK_DIVISOR_MASK = common dso_local global i32 0, align 4
@SDHC_CLK_PRESCALE_MASK = common dso_local global i32 0, align 4
@SDHC_CLK_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@SDHC_CLK_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@SDHC_CLK_IPGEN = common dso_local global i32 0, align 4
@SDHC_CLK_SDCLKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sdhci_softc*, i32)* @fsl_sdhc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sdhc_set_clock(%struct.fsl_sdhci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_sdhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsl_sdhci_softc* %0, %struct.fsl_sdhci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %10 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %11 = call i32 @RD4(%struct.fsl_sdhci_softc* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SDHCI_DIVIDERS_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HWTYPE_ESDHC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %129

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SDHCI_DIVIDER_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* @SDHCI_DIVIDER_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ffs(i32 %37)
  %39 = ashr i32 %36, %38
  store i32 %39, i32* %6, align 4
  br label %74

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %129

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SDHCI_DIVIDER_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32, i32* @SDHCI_DIVIDER_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SDHCI_DIVIDER_HI_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* @SDHCI_DIVIDER_HI_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @SDHCI_DIVIDER_MASK_LEN, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %51, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %64 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  br label %73

66:                                               ; preds = %46
  %67 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 2, %70
  %72 = sdiv i32 %69, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %28
  store i32 2, i32* %7, align 4
  br label %75

75:                                               ; preds = %84, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 16
  %82 = sdiv i32 %79, %81
  %83 = icmp slt i32 %76, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = shl i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %75

87:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %98, %87
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %91 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sdiv i32 %92, %95
  %97 = icmp slt i32 %89, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %88

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @SDHC_CLK_DIVISOR_MASK, align 4
  %107 = load i32, i32* @SDHC_CLK_PRESCALE_MASK, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SDHC_CLK_DIVISOR_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SDHC_CLK_PRESCALE_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* @SDHC_CLK_IPGEN, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %126 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @WR4(%struct.fsl_sdhci_softc* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %101, %45, %27
  ret void
}

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @WR4(%struct.fsl_sdhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
