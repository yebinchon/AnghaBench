; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_mem_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_mem_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

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
@BHND_PMU5_MAINPLL_MEM = common dso_local global i32 0, align 4
@BHND_PMU5357_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU4706_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU6_MAINPLL_MEM = common dso_local global i32 0, align 4
@BHND_PMU4716_MAINPLL_PLL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_mem_clock(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pmu_query*, align 8
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %3, align 8
  %4 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %5 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_query* %4)
  %6 = icmp sge i32 %5, 5
  br i1 %6, label %7, label %95

7:                                                ; preds = %1
  %8 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %9 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BHND_CHIPID_BCM4329, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %95

14:                                               ; preds = %7
  %15 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %16 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BHND_CHIPID_BCM4319, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %14
  %22 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %23 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BHND_CHIPID_BCM43234, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %95

28:                                               ; preds = %21
  %29 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %30 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BHND_CHIPID_BCM43235, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %28
  %36 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %37 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BHND_CHIPID_BCM43236, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %35
  %43 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %44 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BHND_CHIPID_BCM43237, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %95

49:                                               ; preds = %42
  %50 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %51 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BHND_CHIPID_BCM43238, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %49
  %57 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %58 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BHND_CHIPID_BCM4336, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %65 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BHND_CHIPID_BCM4330, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %63
  %71 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %72 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %90 [
    i32 129, label %75
    i32 128, label %80
    i32 130, label %80
    i32 131, label %85
  ]

75:                                               ; preds = %70
  %76 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %77 = load i32, i32* @BHND_PMU5356_MAINPLL_PLL0, align 4
  %78 = load i32, i32* @BHND_PMU5_MAINPLL_MEM, align 4
  %79 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %76, i32 %77, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %98

80:                                               ; preds = %70, %70
  %81 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %82 = load i32, i32* @BHND_PMU5357_MAINPLL_PLL0, align 4
  %83 = load i32, i32* @BHND_PMU5_MAINPLL_MEM, align 4
  %84 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %81, i32 %82, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %98

85:                                               ; preds = %70
  %86 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %87 = load i32, i32* @BHND_PMU4706_MAINPLL_PLL0, align 4
  %88 = load i32, i32* @BHND_PMU6_MAINPLL_MEM, align 4
  %89 = call i32 @bhnd_pmu6_4706_clock(%struct.bhnd_pmu_query* %86, i32 %87, i32 %88)
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %70
  %91 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %92 = load i32, i32* @BHND_PMU4716_MAINPLL_PLL0, align 4
  %93 = load i32, i32* @BHND_PMU5_MAINPLL_MEM, align 4
  %94 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %91, i32 %92, i32 %93)
  store i32 %94, i32* %2, align 4
  br label %98

95:                                               ; preds = %63, %56, %49, %42, %35, %28, %21, %14, %7, %1
  %96 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %3, align 8
  %97 = call i32 @bhnd_pmu_si_clock(%struct.bhnd_pmu_query* %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %90, %85, %80, %75
  %99 = load i32, i32* %2, align 4
  ret i32 %99
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
