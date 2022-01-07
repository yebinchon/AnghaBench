; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BHND_CHIPID_BCM5354 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM53572 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM4329 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM4319 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM43234 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM43235 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM43236 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM43237 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM43238 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM4336 = common dso_local global i32 0, align 4
@BHND_CHIPID_BCM4330 = common dso_local global i32 0, align 4
@BHND_PMU5356_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU5_MAINPLL_CPU = common dso_local global i32 0, align 4
@BHND_PMU5357_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU4706_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU6_MAINPLL_CPU = common dso_local global i32 0, align 4
@BHND_PMU4716_MAINPLL_PLL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_cpu_clock(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pmu_query*, align 8
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %3, align 8
  %4 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %5 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BHND_CHIPID_BCM5354, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 240000000, i32* %2, align 4
  br label %114

11:                                               ; preds = %1
  %12 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %13 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BHND_CHIPID_BCM53572, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 300000000, i32* %2, align 4
  br label %114

19:                                               ; preds = %11
  %20 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %21 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_query* %20)
  %22 = icmp sge i32 %21, 5
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %25 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BHND_CHIPID_BCM4329, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %111

30:                                               ; preds = %23
  %31 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %32 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BHND_CHIPID_BCM4319, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %111

37:                                               ; preds = %30
  %38 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %39 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BHND_CHIPID_BCM43234, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %111

44:                                               ; preds = %37
  %45 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %46 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BHND_CHIPID_BCM43235, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %44
  %52 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %53 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BHND_CHIPID_BCM43236, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %51
  %59 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %60 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BHND_CHIPID_BCM43237, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %58
  %66 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %67 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BHND_CHIPID_BCM43238, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %111

72:                                               ; preds = %65
  %73 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %74 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BHND_CHIPID_BCM4336, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %72
  %80 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %81 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BHND_CHIPID_BCM4330, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %79
  %87 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %88 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %106 [
    i32 129, label %91
    i32 128, label %96
    i32 130, label %96
    i32 131, label %101
  ]

91:                                               ; preds = %86
  %92 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %93 = load i32, i32* @BHND_PMU5356_MAINPLL_PLL0, align 4
  %94 = load i32, i32* @BHND_PMU5_MAINPLL_CPU, align 4
  %95 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %92, i32 %93, i32 %94)
  store i32 %95, i32* %2, align 4
  br label %114

96:                                               ; preds = %86, %86
  %97 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %98 = load i32, i32* @BHND_PMU5357_MAINPLL_PLL0, align 4
  %99 = load i32, i32* @BHND_PMU5_MAINPLL_CPU, align 4
  %100 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %97, i32 %98, i32 %99)
  store i32 %100, i32* %2, align 4
  br label %114

101:                                              ; preds = %86
  %102 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %103 = load i32, i32* @BHND_PMU4706_MAINPLL_PLL0, align 4
  %104 = load i32, i32* @BHND_PMU6_MAINPLL_CPU, align 4
  %105 = call i32 @bhnd_pmu6_4706_clock(%struct.bhnd_pmu_query* %102, i32 %103, i32 %104)
  store i32 %105, i32* %2, align 4
  br label %114

106:                                              ; preds = %86
  %107 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %108 = load i32, i32* @BHND_PMU4716_MAINPLL_PLL0, align 4
  %109 = load i32, i32* @BHND_PMU5_MAINPLL_CPU, align 4
  %110 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %107, i32 %108, i32 %109)
  store i32 %110, i32* %2, align 4
  br label %114

111:                                              ; preds = %79, %72, %65, %58, %51, %44, %37, %30, %23, %19
  %112 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %113 = call i32 @bhnd_pmu_si_clock(%struct.bhnd_pmu_query* %112)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %106, %101, %96, %91, %18, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @BHND_PMU_REV(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query*, i32, i32) #1

declare dso_local i32 @bhnd_pmu6_4706_clock(%struct.bhnd_pmu_query*, i32, i32) #1

declare dso_local i32 @bhnd_pmu_si_clock(%struct.bhnd_pmu_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
