; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_res_deps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_res_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32 }

@BHND_PMU_RESNUM_MAX = common dso_local global i64 0, align 8
@BHND_PMU_RES_TABLE_SEL = common dso_local global i32 0, align 4
@BHND_PMU_RES_DEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pmu_softc*, i32, i32)* @bhnd_pmu_res_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu_res_deps(%struct.bhnd_pmu_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_pmu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @BHND_PMU_RESNUM_MAX, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @BHND_PMURES_BIT(i64 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %31

21:                                               ; preds = %14
  %22 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %23 = load i32, i32* @BHND_PMU_RES_TABLE_SEL, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %22, i32 %23, i64 %24)
  %26 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %27 = load i32, i32* @BHND_PMU_RES_DEP_MASK, align 4
  %28 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %21, %20
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @bhnd_pmu_res_deps(%struct.bhnd_pmu_softc* %42, i32 %43, i32 1)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @BHND_PMURES_BIT(i64) #1

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i64) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
