; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_xtaltab0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_xtaltab0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pmu1_xtaltab0_1760 = common dso_local global i32* null, align 8
@pmu1_xtaltab0_1440 = common dso_local global i32* null, align 8
@pmu1_xtaltab0_880 = common dso_local global i32* null, align 8
@pmu1_xtaltab0_880_4329 = common dso_local global i32* null, align 8
@pmu1_xtaltab0_960 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"bhnd_pmu1_xtaltab0: Unknown chipid %#hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bhnd_pmu_query*)* @bhnd_pmu1_xtaltab0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bhnd_pmu1_xtaltab0(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bhnd_pmu_query*, align 8
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %3, align 8
  %4 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %5 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %26 [
    i32 133, label %8
    i32 132, label %10
    i32 131, label %12
    i32 130, label %14
    i32 128, label %16
    i32 129, label %18
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** @pmu1_xtaltab0_1760, align 8
  store i32* %9, i32** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load i32*, i32** @pmu1_xtaltab0_1440, align 8
  store i32* %11, i32** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32*, i32** @pmu1_xtaltab0_880, align 8
  store i32* %13, i32** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load i32*, i32** @pmu1_xtaltab0_880_4329, align 8
  store i32* %15, i32** %2, align 8
  br label %33

16:                                               ; preds = %1
  %17 = load i32*, i32** @pmu1_xtaltab0_960, align 8
  store i32* %17, i32** %2, align 8
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %20 = call i32 @PMU_CST4330_SDIOD_CHIPMODE(%struct.bhnd_pmu_query* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** @pmu1_xtaltab0_960, align 8
  store i32* %23, i32** %2, align 8
  br label %33

24:                                               ; preds = %18
  %25 = load i32*, i32** @pmu1_xtaltab0_1440, align 8
  store i32* %25, i32** %2, align 8
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %28 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %29 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PMU_DEBUG(%struct.bhnd_pmu_query* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32* null, i32** %2, align 8
  br label %33

33:                                               ; preds = %26, %24, %22, %16, %14, %12, %10, %8
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32 @PMU_CST4330_SDIOD_CHIPMODE(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_query*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
