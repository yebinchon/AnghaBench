; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu0_alpclk0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu0_alpclk0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.bhnd_pmu_query = type { i32 }

@BHND_PMU_CTRL = common dso_local global i32 0, align 4
@BHND_PMU_CTRL_XTALFREQ = common dso_local global i32 0, align 4
@pmu0_xtaltab0 = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"unsupported frequency: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bhnd_pmu_query*)* @bhnd_pmu0_alpclk0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bhnd_pmu0_alpclk0(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %2, align 8
  %5 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %6 = load i32, i32* @BHND_PMU_CTRL, align 4
  %7 = call i64 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %5, i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @BHND_PMU_CTRL_XTALFREQ, align 4
  %10 = call i64 @BHND_PMU_GET_BITS(i64 %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmu0_xtaltab0, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %3, align 8
  br label %12

12:                                               ; preds = %25, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 1
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %3, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %28
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 1000
  %44 = sext i32 %43 to i64
  ret i64 %44
}

declare dso_local i64 @BHND_PMU_READ_4(%struct.bhnd_pmu_query*, i32) #1

declare dso_local i64 @BHND_PMU_GET_BITS(i64, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
