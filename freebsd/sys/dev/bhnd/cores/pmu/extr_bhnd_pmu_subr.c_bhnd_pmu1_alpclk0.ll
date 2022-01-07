; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_alpclk0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu1_alpclk0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@BHND_PMU_CTRL = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_XTALFREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no matching ALP/XTAL frequency found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bhnd_pmu_query*)* @bhnd_pmu1_alpclk0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bhnd_pmu1_alpclk0(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bhnd_pmu_query*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %3, align 8
  %6 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %7 = load i32, i32* @BHND_PMU_CTRL, align 4
  %8 = call i64 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ, align 4
  %11 = call i64 @BHND_PMU_GET_BITS(i64 %9, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %13 = call %struct.TYPE_4__* @bhnd_pmu1_xtaltab0(%struct.bhnd_pmu_query* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %4, align 8
  br label %14

14:                                               ; preds = %32, %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %4, align 8
  br label %14

35:                                               ; preds = %30, %22
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %35
  %44 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %45 = call %struct.TYPE_4__* @bhnd_pmu1_xtaldef0(%struct.bhnd_pmu_query* %44)
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %4, align 8
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49, %46
  %55 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %56 = call i32 @PMU_LOG(%struct.bhnd_pmu_query* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 1000
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %2, align 8
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i64 @BHND_PMU_READ_4(%struct.bhnd_pmu_query*, i32) #1

declare dso_local i64 @BHND_PMU_GET_BITS(i64, i32) #1

declare dso_local %struct.TYPE_4__* @bhnd_pmu1_xtaltab0(%struct.bhnd_pmu_query*) #1

declare dso_local %struct.TYPE_4__* @bhnd_pmu1_xtaldef0(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_query*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
