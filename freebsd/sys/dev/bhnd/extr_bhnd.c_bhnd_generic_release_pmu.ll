; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_release_pmu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_release_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bhnd_core_clkctl = type { i64, %struct.bhnd_resource*, i32 }
%struct.bhnd_resource = type { i32 }

@GIANT_REQUIRED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pmu over-release for %s\00", align 1
@BHND_CCS_FORCE_MASK = common dso_local global i32 0, align 4
@BHND_CCS_AREQ_MASK = common dso_local global i32 0, align 4
@BHND_CCS_ERSRC_REQ_MASK = common dso_local global i32 0, align 4
@M_BHND = common dso_local global i32 0, align 4
@BHND_SERVICE_PMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_release_pmu(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_softc*, align 8
  %7 = alloca %struct.bhnd_core_clkctl*, align 8
  %8 = alloca %struct.bhnd_resource*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @GIANT_REQUIRED, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call %struct.bhnd_softc* @device_get_softc(i64 %11)
  store %struct.bhnd_softc* %12, %struct.bhnd_softc** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64 %20)
  store %struct.bhnd_core_clkctl* %21, %struct.bhnd_core_clkctl** %7, align 8
  %22 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %23 = icmp eq %struct.bhnd_core_clkctl* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @device_get_nameunit(i64 %25)
  %27 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %30 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bhnd_is_hw_suspended(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %36 = call i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl* %35)
  %37 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %38 = load i32, i32* @BHND_CCS_FORCE_MASK, align 4
  %39 = load i32, i32* @BHND_CCS_AREQ_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BHND_CCS_ERSRC_REQ_MASK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl* %37, i32 0, i32 %42)
  %44 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %45 = call i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl* %44)
  br label %46

46:                                               ; preds = %34, %28
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @bhnd_set_pmu_info(i64 %47, i32* null)
  %49 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %50 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %49, i32 0, i32 1
  %51 = load %struct.bhnd_resource*, %struct.bhnd_resource** %50, align 8
  store %struct.bhnd_resource* %51, %struct.bhnd_resource** %8, align 8
  %52 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %53 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %7, align 8
  %56 = call i32 @bhnd_free_core_clkctl(%struct.bhnd_core_clkctl* %55)
  %57 = load %struct.bhnd_resource*, %struct.bhnd_resource** %8, align 8
  %58 = load i32, i32* @M_BHND, align 4
  %59 = call i32 @free(%struct.bhnd_resource* %57, i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @BHND_SERVICE_PMU, align 4
  %63 = call i32 @bhnd_release_provider(i64 %60, i64 %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %46, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.bhnd_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i64) #1

declare dso_local i32 @bhnd_is_hw_suspended(i32) #1

declare dso_local i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl*, i32, i32) #1

declare dso_local i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @bhnd_set_pmu_info(i64, i32*) #1

declare dso_local i32 @bhnd_free_core_clkctl(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @free(%struct.bhnd_resource*, i32) #1

declare dso_local i32 @bhnd_release_provider(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
