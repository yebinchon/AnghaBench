; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_si_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_si_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

@BHND_PMU_HT_CLOCK = common dso_local global i32 0, align 4
@BHND_PMU4716_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU5_MAINPLL_SI = common dso_local global i32 0, align 4
@CHIPC_CST43236_BP_CLK = common dso_local global i32 0, align 4
@CHIPC_CST43237_BP_CLK = common dso_local global i32 0, align 4
@BHND_PMU5356_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU5357_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU4706_MAINPLL_PLL0 = common dso_local global i32 0, align 4
@BHND_PMU6_MAINPLL_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"No backplane clock specified for chip %#hx rev %hhd pmurev %hhd, using default %dHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_si_clock(%struct.bhnd_pmu_query* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_query*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %2, align 8
  %5 = load i32, i32* @BHND_PMU_HT_CLOCK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %7 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %87 [
    i32 158, label %10
    i32 157, label %10
    i32 152, label %10
    i32 156, label %10
    i32 164, label %10
    i32 163, label %10
    i32 155, label %10
    i32 139, label %10
    i32 154, label %10
    i32 138, label %10
    i32 153, label %10
    i32 142, label %10
    i32 137, label %10
    i32 128, label %10
    i32 140, label %10
    i32 135, label %11
    i32 133, label %11
    i32 134, label %11
    i32 146, label %16
    i32 145, label %19
    i32 144, label %22
    i32 160, label %33
    i32 159, label %33
    i32 141, label %33
    i32 143, label %33
    i32 162, label %36
    i32 161, label %36
    i32 151, label %37
    i32 150, label %37
    i32 149, label %37
    i32 147, label %37
    i32 148, label %54
    i32 131, label %71
    i32 130, label %76
    i32 132, label %76
    i32 136, label %81
    i32 129, label %86
  ]

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 96000000, i32* %4, align 4
  br label %101

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %13 = load i32, i32* @BHND_PMU4716_MAINPLL_PLL0, align 4
  %14 = load i32, i32* @BHND_PMU5_MAINPLL_SI, align 4
  %15 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %12, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %18 = call i32 @bhnd_pmu1_cpuclk0(%struct.bhnd_pmu_query* %17)
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %1
  %20 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %21 = call i32 @bhnd_pmu0_cpuclk0(%struct.bhnd_pmu_query* %20)
  store i32 %21, i32* %4, align 4
  br label %101

22:                                               ; preds = %1
  %23 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %24 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 38400000, i32* %4, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %31 = call i32 @bhnd_pmu1_cpuclk0(%struct.bhnd_pmu_query* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %28
  br label %101

33:                                               ; preds = %1, %1, %1, %1
  %34 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %35 = call i32 @bhnd_pmu1_cpuclk0(%struct.bhnd_pmu_query* %34)
  store i32 %35, i32* %4, align 4
  br label %101

36:                                               ; preds = %1, %1
  store i32 80000000, i32* %4, align 4
  br label %101

37:                                               ; preds = %1, %1, %1, %1
  %38 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %39 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %44 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @CHIPC_CST43236_BP_CLK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  store i32 120000000, i32* %4, align 4
  br label %53

52:                                               ; preds = %37
  store i32 96000000, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %101

54:                                               ; preds = %1
  %55 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %56 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %61 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @CHIPC_CST43237_BP_CLK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 96000000, i32* %4, align 4
  br label %70

69:                                               ; preds = %54
  store i32 80000000, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %101

71:                                               ; preds = %1
  %72 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %73 = load i32, i32* @BHND_PMU5356_MAINPLL_PLL0, align 4
  %74 = load i32, i32* @BHND_PMU5_MAINPLL_SI, align 4
  %75 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %72, i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %101

76:                                               ; preds = %1, %1
  %77 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %78 = load i32, i32* @BHND_PMU5357_MAINPLL_PLL0, align 4
  %79 = load i32, i32* @BHND_PMU5_MAINPLL_SI, align 4
  %80 = call i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query* %77, i32 %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %101

81:                                               ; preds = %1
  %82 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %83 = load i32, i32* @BHND_PMU4706_MAINPLL_PLL0, align 4
  %84 = load i32, i32* @BHND_PMU6_MAINPLL_SI, align 4
  %85 = call i32 @bhnd_pmu6_4706_clock(%struct.bhnd_pmu_query* %82, i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %101

86:                                               ; preds = %1
  store i32 75000000, i32* %4, align 4
  br label %101

87:                                               ; preds = %1
  %88 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %89 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %90 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %94 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %2, align 8
  %98 = call i32 @BHND_PMU_REV(%struct.bhnd_pmu_query* %97)
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @PMU_LOG(%struct.bhnd_pmu_query* %88, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %96, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %87, %86, %81, %76, %71, %70, %53, %36, %33, %32, %19, %16, %11, %10
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @bhnd_pmu5_clock(%struct.bhnd_pmu_query*, i32, i32) #1

declare dso_local i32 @bhnd_pmu1_cpuclk0(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @bhnd_pmu0_cpuclk0(%struct.bhnd_pmu_query*) #1

declare dso_local i32 @bhnd_pmu6_4706_clock(%struct.bhnd_pmu_query*, i32, i32) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_query*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BHND_PMU_REV(%struct.bhnd_pmu_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
