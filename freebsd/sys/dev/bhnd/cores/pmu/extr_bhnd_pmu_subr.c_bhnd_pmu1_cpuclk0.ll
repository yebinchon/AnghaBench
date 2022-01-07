; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_cpuclk0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_cpuclk0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32 }

@BHND_PMU1_PLL0_PLLCTL1 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC1_M1DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_P1DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC0_P2DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_NDIV_INT = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC3_NDIV_FRAC = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL0 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL2 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pmu_query*)* @bhnd_pmu1_cpuclk0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu1_cpuclk0(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %2, align 8
  %6 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %7 = call i32 @bhnd_pmu1_pllfvco0(%struct.bhnd_pmu_query* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %9 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL1, align 4
  %10 = call i32 @BHND_PMU_PLL_READ(%struct.bhnd_pmu_query* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BHND_PMU1_PLL0_PC1_M1DIV, align 4
  %13 = call i32 @BHND_PMU_GET_BITS(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %14, %15
  %17 = mul nsw i32 %16, 1000
  ret i32 %17
}

declare dso_local i32 @bhnd_pmu1_pllfvco0(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @BHND_PMU_PLL_READ(%struct.bhnd_pmu_query*, i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
