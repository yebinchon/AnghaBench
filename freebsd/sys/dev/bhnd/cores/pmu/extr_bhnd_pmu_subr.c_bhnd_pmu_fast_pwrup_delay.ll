; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_fast_pwrup_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_fast_pwrup_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BHND_PMU_RES4325_HT_AVAIL = common dso_local global i32 0, align 4
@D11SCC_SLOW2FAST_TRANSITION = common dso_local global i32 0, align 4
@BHND_PMU_RES4329_HT_AVAIL = common dso_local global i32 0, align 4
@BHND_PMU_RES4336_HT_AVAIL = common dso_local global i32 0, align 4
@BHND_PMU_RES4330_HT_AVAIL = common dso_local global i32 0, align 4
@BHND_PMU_MAX_TRANSITION_DLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_fast_pwrup_delay(%struct.bhnd_pmu_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pmu_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %112 [
    i32 139, label %14
    i32 138, label %14
    i32 129, label %14
    i32 137, label %14
    i32 136, label %14
    i32 135, label %14
    i32 131, label %14
    i32 128, label %14
    i32 141, label %14
    i32 134, label %15
    i32 133, label %39
    i32 140, label %63
    i32 130, label %64
    i32 132, label %88
  ]

14:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 3700, i32* %8, align 4
  br label %114

15:                                               ; preds = %2
  %16 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %17 = load i32, i32* @BHND_PMU_RES4325_HT_AVAIL, align 4
  %18 = call i32 @bhnd_pmu_res_uptime(%struct.bhnd_pmu_softc* %16, i32 %17, i32* %7)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %15
  %24 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %24, i32 0, i32 0
  %26 = call i32 @bhnd_pmu_ilp_clock(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @D11SCC_SLOW2FAST_TRANSITION, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 1000000, %30
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %32, %33
  %35 = mul nsw i32 %29, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 11, %36
  %38 = sdiv i32 %37, 10
  store i32 %38, i32* %8, align 4
  br label %114

39:                                               ; preds = %2
  %40 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %41 = load i32, i32* @BHND_PMU_RES4329_HT_AVAIL, align 4
  %42 = call i32 @bhnd_pmu_res_uptime(%struct.bhnd_pmu_softc* %40, i32 %41, i32* %7)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %117

47:                                               ; preds = %39
  %48 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %49 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %48, i32 0, i32 0
  %50 = call i32 @bhnd_pmu_ilp_clock(i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @D11SCC_SLOW2FAST_TRANSITION, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 1000000, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %6, align 4
  %58 = sdiv i32 %56, %57
  %59 = mul nsw i32 %53, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 11, %60
  %62 = sdiv i32 %61, 10
  store i32 %62, i32* %8, align 4
  br label %114

63:                                               ; preds = %2
  store i32 3700, i32* %8, align 4
  br label %114

64:                                               ; preds = %2
  %65 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %66 = load i32, i32* @BHND_PMU_RES4336_HT_AVAIL, align 4
  %67 = call i32 @bhnd_pmu_res_uptime(%struct.bhnd_pmu_softc* %65, i32 %66, i32* %7)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %117

72:                                               ; preds = %64
  %73 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %74 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %73, i32 0, i32 0
  %75 = call i32 @bhnd_pmu_ilp_clock(i32* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @D11SCC_SLOW2FAST_TRANSITION, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 1000000, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %6, align 4
  %83 = sdiv i32 %81, %82
  %84 = mul nsw i32 %78, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 11, %85
  %87 = sdiv i32 %86, 10
  store i32 %87, i32* %8, align 4
  br label %114

88:                                               ; preds = %2
  %89 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %90 = load i32, i32* @BHND_PMU_RES4330_HT_AVAIL, align 4
  %91 = call i32 @bhnd_pmu_res_uptime(%struct.bhnd_pmu_softc* %89, i32 %90, i32* %7)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %117

96:                                               ; preds = %88
  %97 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %98 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %97, i32 0, i32 0
  %99 = call i32 @bhnd_pmu_ilp_clock(i32* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @D11SCC_SLOW2FAST_TRANSITION, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 1000000, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* %6, align 4
  %107 = sdiv i32 %105, %106
  %108 = mul nsw i32 %102, %107
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 11, %109
  %111 = sdiv i32 %110, 10
  store i32 %111, i32* %8, align 4
  br label %114

112:                                              ; preds = %2
  %113 = load i32, i32* @BHND_PMU_MAX_TRANSITION_DLY, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %96, %72, %63, %47, %23, %14
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %94, %70, %45, %21
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @bhnd_pmu_res_uptime(%struct.bhnd_pmu_softc*, i32, i32*) #1

declare dso_local i32 @bhnd_pmu_ilp_clock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
