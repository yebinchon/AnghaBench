; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu0_cpuclk0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu0_cpuclk0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32 }

@FVCO_880 = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PLLCTL0 = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC0_DIV_ARM = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC0_DIV_ARM_BASE = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC0_PDIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC1_WILD_FRAC = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PC2_WILD_INT = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PLLCTL1 = common dso_local global i32 0, align 4
@BHND_PMU0_PLL0_PLLCTL2 = common dso_local global i32 0, align 4
@PMU0_PLL0_PC1_WILD_INT = common dso_local global i32 0, align 4
@cc = common dso_local global i32 0, align 4
@osh = common dso_local global i32 0, align 4
@sih = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pmu_query*)* @bhnd_pmu0_cpuclk0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu0_cpuclk0(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %2, align 8
  %6 = load i32, i32* @FVCO_880, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %8 = load i32, i32* @BHND_PMU0_PLL0_PLLCTL0, align 4
  %9 = call i32 @BHND_PMU_PLL_READ(%struct.bhnd_pmu_query* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BHND_PMU0_PLL0_PC0_DIV_ARM, align 4
  %12 = call i32 @BHND_PMU_GET_BITS(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BHND_PMU0_PLL0_PC0_DIV_ARM_BASE, align 4
  %16 = add nsw i32 %14, %15
  %17 = sdiv i32 %13, %16
  %18 = mul nsw i32 %17, 1000
  ret i32 %18
}

declare dso_local i32 @BHND_PMU_PLL_READ(%struct.bhnd_pmu_query*, i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
