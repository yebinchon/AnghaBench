; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_ilp_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_ilp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32 }

@BHND_PMU_TIMER = common dso_local global i32 0, align 4
@ILP_CALC_DUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_ilp_clock(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %2, align 8
  %6 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %7 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %12 = load i32, i32* @BHND_PMU_TIMER, align 4
  %13 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @ILP_CALC_DUR, align 4
  %15 = call i32 @DELAY(i32 %14)
  %16 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %17 = load i32, i32* @BHND_PMU_TIMER, align 4
  %18 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ILP_CALC_DUR, align 4
  %24 = sdiv i32 1000, %23
  %25 = mul nsw i32 %22, %24
  %26 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %27 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %10, %1
  %29 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %30 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
