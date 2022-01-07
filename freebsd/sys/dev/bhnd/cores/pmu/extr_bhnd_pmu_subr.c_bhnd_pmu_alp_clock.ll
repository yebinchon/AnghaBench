; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_alp_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_alp_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bhnd_pmu_query = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BHND_PMU_ALP_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"No ALP clock specified for chip %s rev %d pmurev %d, using default %d Hz\0A\00", align 1
@sih = common dso_local global %struct.TYPE_4__* null, align 8
@chn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_alp_clock(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca i32, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %2, align 8
  %4 = load i32, i32* @BHND_PMU_ALP_CLOCK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %6 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 147, label %9
    i32 132, label %9
    i32 164, label %12
    i32 163, label %12
    i32 148, label %12
    i32 146, label %12
    i32 145, label %12
    i32 143, label %12
    i32 167, label %15
    i32 162, label %15
    i32 161, label %15
    i32 154, label %15
    i32 160, label %15
    i32 169, label %15
    i32 168, label %15
    i32 159, label %15
    i32 158, label %15
    i32 141, label %15
    i32 140, label %15
    i32 157, label %15
    i32 152, label %15
    i32 151, label %15
    i32 149, label %15
    i32 153, label %15
    i32 150, label %15
    i32 144, label %15
    i32 138, label %15
    i32 165, label %15
    i32 156, label %15
    i32 155, label %15
    i32 139, label %15
    i32 128, label %15
    i32 142, label %15
    i32 136, label %15
    i32 134, label %15
    i32 135, label %15
    i32 166, label %15
    i32 130, label %15
    i32 133, label %15
    i32 129, label %15
    i32 131, label %16
    i32 137, label %16
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %11 = call i32 @bhnd_pmu0_alpclk0(%struct.bhnd_pmu_query* %10)
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %1, %1, %1, %1, %1, %1
  %13 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %14 = call i32 @bhnd_pmu1_alpclk0(%struct.bhnd_pmu_query* %13)
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 20000000, i32* %3, align 4
  br label %31

16:                                               ; preds = %1, %1
  store i32 25000000, i32* %3, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sih, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @chn, align 4
  %22 = call i32 @bcm_chipname(i32 %20, i32 %21, i32 8)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sih, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sih, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @PMU_DEBUG(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %17, %16, %15, %12, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bhnd_pmu0_alpclk0(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @bhnd_pmu1_alpclk0(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @PMU_DEBUG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bcm_chipname(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
