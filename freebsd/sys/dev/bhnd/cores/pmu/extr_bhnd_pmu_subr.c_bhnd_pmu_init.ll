; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@BHND_PMU_CTRL = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_NOILP_ON_WAIT = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM4329 = common dso_local global i64 0, align 8
@BHND_CHIPID_BCM4319 = common dso_local global i64 0, align 8
@BHND_NVAR_XTALFREQ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error fetching xtalfreq: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_init(%struct.bhnd_pmu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pmu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %3, align 8
  %6 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %7 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc* %6)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %11 = load i32, i32* @BHND_PMU_CTRL, align 4
  %12 = load i32, i32* @BHND_PMU_CTRL_NOILP_ON_WAIT, align 4
  %13 = xor i32 %12, -1
  %14 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %10, i32 %11, i32 %13)
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %17 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc* %16)
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %21 = load i32, i32* @BHND_PMU_CTRL, align 4
  %22 = load i32, i32* @BHND_PMU_CTRL_NOILP_ON_WAIT, align 4
  %23 = call i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  br label %25

25:                                               ; preds = %24, %9
  %26 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BHND_CHIPID_BCM4329, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %40 = call i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc* %39, i32 2, i32 256, i32 -1)
  %41 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %42 = call i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc* %41, i32 3, i32 4, i32 -1)
  br label %43

43:                                               ; preds = %38, %32, %25
  %44 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BHND_CHIPID_BCM4319, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %52 = call i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc* %51, i32 2, i32 5, i32 7)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BHND_NVAR_XTALFREQ, align 4
  %58 = call i32 @bhnd_nvram_getvar_uint32(i32 %56, i32 %57, i32* %4)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ENOENT, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %71 = call i32 @bhnd_pmu_measure_alpclk(%struct.bhnd_pmu_softc* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %53
  %73 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @bhnd_pmu_pll_init(%struct.bhnd_pmu_softc* %73, i32 %74)
  %76 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %77 = call i32 @bhnd_pmu_res_init(%struct.bhnd_pmu_softc* %76)
  store i32 %77, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %84

81:                                               ; preds = %72
  %82 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %83 = call i32 @bhnd_pmu_swreg_init(%struct.bhnd_pmu_softc* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %79
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint32(i32, i32, i32*) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_softc*, i8*, i32) #1

declare dso_local i32 @bhnd_pmu_measure_alpclk(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @bhnd_pmu_pll_init(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @bhnd_pmu_res_init(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @bhnd_pmu_swreg_init(%struct.bhnd_pmu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
