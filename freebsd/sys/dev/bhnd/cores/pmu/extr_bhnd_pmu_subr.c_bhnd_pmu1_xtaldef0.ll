; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_xtaldef0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_xtaldef0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pmu1_xtaltab0_1760 = common dso_local global i32* null, align 8
@PMU1_XTALTAB0_1760_26000K = common dso_local global i64 0, align 8
@pmu1_xtaltab0_1440 = common dso_local global i32* null, align 8
@PMU1_XTALTAB0_1440_30000K = common dso_local global i64 0, align 8
@pmu1_xtaltab0_880 = common dso_local global i32* null, align 8
@PMU1_XTALTAB0_880_26000K = common dso_local global i64 0, align 8
@pmu1_xtaltab0_880_4329 = common dso_local global i32* null, align 8
@PMU1_XTALTAB0_880_38400K = common dso_local global i64 0, align 8
@pmu1_xtaltab0_960 = common dso_local global i32* null, align 8
@PMU1_XTALTAB0_960_26000K = common dso_local global i64 0, align 8
@PMU1_XTALTAB0_960_37400K = common dso_local global i64 0, align 8
@PMU1_XTALTAB0_1440_37400K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"bhnd_pmu1_xtaldef0: Unknown chipid %#hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bhnd_pmu_query*)* @bhnd_pmu1_xtaldef0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bhnd_pmu1_xtaldef0(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.bhnd_pmu_query*, align 8
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %3, align 8
  %4 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %5 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 133, label %8
    i32 132, label %12
    i32 131, label %16
    i32 130, label %20
    i32 128, label %24
    i32 129, label %28
  ]

8:                                                ; preds = %1
  %9 = load i32*, i32** @pmu1_xtaltab0_1760, align 8
  %10 = load i64, i64* @PMU1_XTALTAB0_1760_26000K, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32* %11, i32** %2, align 8
  br label %47

12:                                               ; preds = %1
  %13 = load i32*, i32** @pmu1_xtaltab0_1440, align 8
  %14 = load i64, i64* @PMU1_XTALTAB0_1440_30000K, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %2, align 8
  br label %47

16:                                               ; preds = %1
  %17 = load i32*, i32** @pmu1_xtaltab0_880, align 8
  %18 = load i64, i64* @PMU1_XTALTAB0_880_26000K, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %2, align 8
  br label %47

20:                                               ; preds = %1
  %21 = load i32*, i32** @pmu1_xtaltab0_880_4329, align 8
  %22 = load i64, i64* @PMU1_XTALTAB0_880_38400K, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %2, align 8
  br label %47

24:                                               ; preds = %1
  %25 = load i32*, i32** @pmu1_xtaltab0_960, align 8
  %26 = load i64, i64* @PMU1_XTALTAB0_960_26000K, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %2, align 8
  br label %47

28:                                               ; preds = %1
  %29 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %30 = call i32 @PMU_CST4330_SDIOD_CHIPMODE(%struct.bhnd_pmu_query* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** @pmu1_xtaltab0_960, align 8
  %34 = load i64, i64* @PMU1_XTALTAB0_960_37400K, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %2, align 8
  br label %47

36:                                               ; preds = %28
  %37 = load i32*, i32** @pmu1_xtaltab0_1440, align 8
  %38 = load i64, i64* @PMU1_XTALTAB0_1440_37400K, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %2, align 8
  br label %47

40:                                               ; preds = %1
  %41 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %42 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %43 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PMU_DEBUG(%struct.bhnd_pmu_query* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32* null, i32** %2, align 8
  br label %47

47:                                               ; preds = %40, %36, %32, %24, %20, %16, %12, %8
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i32 @PMU_CST4330_SDIOD_CHIPMODE(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_query*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
