; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_set_4330_plldivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_set_4330_plldivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32 }

@BHND_PMU1_PLL0_PC1_M1DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC1_M2DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC1_M3DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC1_M4DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL1 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_M5DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_M6DIV = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PLLCTL2 = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_M5DIV_MASK = common dso_local global i32 0, align 4
@BHND_PMU1_PLL0_PC2_M6DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bhnd_pmu_softc*)* @bhnd_pmu_set_4330_plldivs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bhnd_pmu_set_4330_plldivs(%struct.bhnd_pmu_softc* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %2, align 8
  %12 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %12, i32 0, i32 0
  %14 = call i32 @bhnd_pmu1_pllfvco0(i32* %13)
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 80
  store i32 %17, i32* %9, align 4
  store i32 %17, i32* %7, align 4
  store i32 %17, i32* %6, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 160
  store i32 %19, i32* %8, align 4
  %20 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %21 = call i64 @PMU_CST4330_SDIOD_CHIPMODE(%struct.bhnd_pmu_softc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 80
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %27, 90
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BHND_PMU1_PLL0_PC1_M1DIV, align 4
  %32 = call i32 @BHND_PMU_SET_BITS(i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BHND_PMU1_PLL0_PC1_M2DIV, align 4
  %37 = call i32 @BHND_PMU_SET_BITS(i32 %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BHND_PMU1_PLL0_PC1_M3DIV, align 4
  %42 = call i32 @BHND_PMU_SET_BITS(i32 %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BHND_PMU1_PLL0_PC1_M4DIV, align 4
  %47 = call i32 @BHND_PMU_SET_BITS(i32 %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %51 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL1, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %50, i32 %51, i32 %52, i32 -1)
  store i32 0, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @BHND_PMU1_PLL0_PC2_M5DIV, align 4
  %56 = call i32 @BHND_PMU_SET_BITS(i32 %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @BHND_PMU1_PLL0_PC2_M6DIV, align 4
  %61 = call i32 @BHND_PMU_SET_BITS(i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %65 = load i32, i32* @BHND_PMU1_PLL0_PLLCTL2, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @BHND_PMU1_PLL0_PC2_M5DIV_MASK, align 4
  %68 = load i32, i32* @BHND_PMU1_PLL0_PC2_M6DIV_MASK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %64, i32 %65, i32 %66, i32 %69)
  ret void
}

declare dso_local i32 @bhnd_pmu1_pllfvco0(i32*) #1

declare dso_local i64 @PMU_CST4330_SDIOD_CHIPMODE(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @BHND_PMU_SET_BITS(i32, i32) #1

declare dso_local i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
