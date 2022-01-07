; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_measure_alpclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_measure_alpclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32 }

@BHND_PMU_ST = common dso_local global i32 0, align 4
@BHND_PMU_ST_EXTLPOAVAIL = common dso_local global i32 0, align 4
@BHND_PMU_XTALFREQ = common dso_local global i32 0, align 4
@BHND_PMU_XTALFREQ_REG_MEASURE_SHIFT = common dso_local global i32 0, align 4
@BHND_PMU_XTALFREQ_REG_ILPCTR = common dso_local global i32 0, align 4
@EXT_ILP_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_measure_alpclk(%struct.bhnd_pmu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pmu_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %3, align 8
  %8 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %9 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc* %8)
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %14 = load i32, i32* @BHND_PMU_ST, align 4
  %15 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BHND_PMU_ST_EXTLPOAVAIL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %12
  %21 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %22 = load i32, i32* @BHND_PMU_XTALFREQ, align 4
  %23 = load i32, i32* @BHND_PMU_XTALFREQ_REG_MEASURE_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %21, i32 %22, i32 %24)
  %26 = call i32 @DELAY(i32 1000)
  %27 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %28 = load i32, i32* @BHND_PMU_XTALFREQ, align 4
  %29 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BHND_PMU_XTALFREQ_REG_ILPCTR, align 4
  %32 = call i32 @BHND_PMU_GET_BITS(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %34 = load i32, i32* @BHND_PMU_XTALFREQ, align 4
  %35 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %33, i32 %34, i32 0)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @EXT_ILP_HZ, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 50000
  %42 = sdiv i32 %41, 100000
  %43 = mul nsw i32 %42, 100
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @BHND_PMU_REV(%struct.bhnd_pmu_softc*) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
