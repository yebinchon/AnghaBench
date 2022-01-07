; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu6_4706_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu6_4706_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@BHND_PMU_PLL_CONTROL_ADDR = common dso_local global i32 0, align 4
@BHND_PMU6_4706_PROCPLL_OFF = common dso_local global i32 0, align 4
@BHND_PMU_PLL_CONTROL_DATA = common dso_local global i32 0, align 4
@BHND_PMU6_4706_PROC_NDIV_INT = common dso_local global i32 0, align 4
@BHND_PMU6_4706_PROC_P1DIV = common dso_local global i32 0, align 4
@BHND_PMU6_4706_PROC_P2DIV = common dso_local global i32 0, align 4
@CHIPC_CST4706_LOWCOST_PKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad m divider: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_pmu_query*, i32, i32)* @bhnd_pmu6_4706_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_pmu6_4706_clock(%struct.bhnd_pmu_query* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_pmu_query*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %5, align 8
  %15 = load i32, i32* @BHND_PMU_PLL_CONTROL_ADDR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BHND_PMU6_4706_PROCPLL_OFF, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_query* %14, i32 %15, i32 %18)
  %20 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %5, align 8
  %21 = load i32, i32* @BHND_PMU_PLL_CONTROL_ADDR, align 4
  %22 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %20, i32 %21)
  %23 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %5, align 8
  %24 = load i32, i32* @BHND_PMU_PLL_CONTROL_DATA, align 4
  %25 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @BHND_PMU6_4706_PROC_NDIV_INT, align 4
  %28 = call i32 @BHND_PMU_GET_BITS(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @BHND_PMU6_4706_PROC_P1DIV, align 4
  %31 = call i32 @BHND_PMU_GET_BITS(i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @BHND_PMU6_4706_PROC_P2DIV, align 4
  %34 = call i32 @BHND_PMU_GET_BITS(i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  store i32 25000000, i32* %9, align 4
  %35 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %5, align 8
  %36 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %5, align 8
  %41 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @CHIPC_CST4706_LOWCOST_PKG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %49, 4
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = sdiv i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %71 [
    i32 130, label %63
    i32 129, label %65
    i32 128, label %68
  ]

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %54
  %66 = load i32, i32* %9, align 4
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %4, align 4
  br label %75

68:                                               ; preds = %54
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 4
  store i32 %70, i32* %4, align 4
  br label %75

71:                                               ; preds = %54
  %72 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @PMU_LOG(%struct.bhnd_pmu_query* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %68, %65, %63
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_query*, i32, i32) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query*, i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_query*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
