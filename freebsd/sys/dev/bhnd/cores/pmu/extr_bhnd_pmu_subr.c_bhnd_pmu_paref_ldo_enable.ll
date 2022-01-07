; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_paref_ldo_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_paref_ldo_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RES4328_PA_REF_LDO = common dso_local global i32 0, align 4
@RES5354_PA_REF_LDO = common dso_local global i32 0, align 4
@RES4312_PA_REF_LDO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BHND_PMU_MIN_RES_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_paref_ldo_enable(%struct.bhnd_pmu_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pmu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %8 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %20 [
    i32 129, label %11
    i32 128, label %14
    i32 130, label %17
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @RES4328_PA_REF_LDO, align 4
  %13 = call i32 @PMURES_BIT(i32 %12)
  store i32 %13, i32* %6, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @RES5354_PA_REF_LDO, align 4
  %16 = call i32 @PMURES_BIT(i32 %15)
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @RES4312_PA_REF_LDO, align 4
  %19 = call i32 @PMURES_BIT(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %17, %14, %11
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %27 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc* %26, i32 %27, i32 %28)
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %32 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %30, %25
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @PMURES_BIT(i32) #1

declare dso_local i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
