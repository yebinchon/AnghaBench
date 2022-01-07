; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_pll_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BHND_PMU_MIN_RES_MASK = common dso_local global i32 0, align 4
@RES4322_HT_SI_AVAIL = common dso_local global i32 0, align 4
@RES4322_SI_PLL_ON = common dso_local global i32 0, align 4
@BHND_PMU_MAX_RES_MASK = common dso_local global i32 0, align 4
@BHND_CCS_HTAVAIL = common dso_local global i32 0, align 4
@BHND_PMU2_SI_PLL_PLLCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"No PLL init done for chip %#hx rev %d pmurev %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_pmu_pll_init(%struct.bhnd_pmu_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bhnd_pmu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %102 [
    i32 159, label %13
    i32 154, label %14
    i32 153, label %14
    i32 146, label %14
    i32 134, label %14
    i32 140, label %73
    i32 139, label %77
    i32 129, label %81
    i32 138, label %89
    i32 158, label %97
    i32 152, label %97
    i32 161, label %97
    i32 160, label %97
    i32 151, label %97
    i32 150, label %97
    i32 133, label %97
    i32 132, label %97
    i32 149, label %97
    i32 144, label %97
    i32 143, label %97
    i32 141, label %97
    i32 145, label %97
    i32 142, label %97
    i32 136, label %97
    i32 130, label %97
    i32 157, label %97
    i32 148, label %97
    i32 147, label %97
    i32 131, label %97
    i32 128, label %97
    i32 156, label %98
    i32 155, label %98
    i32 135, label %98
    i32 137, label %98
  ]

13:                                               ; preds = %2
  br label %114

14:                                               ; preds = %2, %2, %2, %2
  %15 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %114

21:                                               ; preds = %14
  %22 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %23 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %24 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %26 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %27 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RES4322_HT_SI_AVAIL, align 4
  %29 = call i32 @PMURES_BIT(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @RES4322_SI_PLL_ON, align 4
  %31 = call i32 @PMURES_BIT(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %33 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %34 = load i32, i32* %7, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %32, i32 %33, i32 %35)
  %37 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %38 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %37, i32 %38, i32 %40)
  %42 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %43 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %44 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %42, i32 0, i32 %43)
  %45 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %46 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %45, i32 %46, i32 %48)
  %50 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %51 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %50, i32 %51, i32 %53)
  %55 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %56 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %57 = call i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc* %55, i32 0, i32 %56)
  %58 = call i32 @DELAY(i32 1000)
  %59 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %60 = load i32, i32* @BHND_PMU2_SI_PLL_PLLCTL, align 4
  %61 = call i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc* %59, i32 %60, i32 939525568, i32 -1)
  %62 = call i32 @DELAY(i32 100)
  %63 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %64 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %63, i32 %64, i32 %65)
  %67 = call i32 @DELAY(i32 100)
  %68 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %69 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %68, i32 %69, i32 %70)
  %72 = call i32 @DELAY(i32 100)
  br label %114

73:                                               ; preds = %2
  %74 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @bhnd_pmu1_pllinit0(%struct.bhnd_pmu_softc* %74, i32 %75)
  br label %114

77:                                               ; preds = %2
  %78 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @bhnd_pmu0_pllinit0(%struct.bhnd_pmu_softc* %78, i32 %79)
  br label %114

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 25000, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @bhnd_pmu0_pllinit0(%struct.bhnd_pmu_softc* %86, i32 %87)
  br label %114

89:                                               ; preds = %2
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 38400, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @bhnd_pmu1_pllinit0(%struct.bhnd_pmu_softc* %94, i32 %95)
  br label %114

97:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %114

98:                                               ; preds = %2, %2, %2, %2
  %99 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @bhnd_pmu1_pllinit0(%struct.bhnd_pmu_softc* %99, i32 %100)
  br label %114

102:                                              ; preds = %2
  %103 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %104 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %108 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %112 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc* %111)
  %113 = call i32 @PMU_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %102, %98, %97, %93, %85, %77, %73, %21, %20, %13
  ret void
}

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @PMURES_BIT(i32) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @PMU_WAIT_CLKST(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BHND_PMU_PLL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @bhnd_pmu1_pllinit0(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @bhnd_pmu0_pllinit0(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @PMU_DEBUG(i8*, i32, i32, i32) #1

declare dso_local i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
