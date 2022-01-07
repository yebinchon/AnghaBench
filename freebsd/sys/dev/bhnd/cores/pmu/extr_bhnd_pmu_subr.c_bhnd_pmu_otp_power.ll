; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_otp_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_otp_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RES4322_OTP_PU = common dso_local global i32 0, align 4
@RES4315_OTP_PU = common dso_local global i32 0, align 4
@RES4325_OTP_PU = common dso_local global i32 0, align 4
@RES4329_OTP_PU = common dso_local global i32 0, align 4
@RES4319_OTP_PU = common dso_local global i32 0, align 4
@RES4336_OTP_PU = common dso_local global i32 0, align 4
@RES4330_OTP_PU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Adding rsrc 0x%x to min_res_mask\0A\00", align 1
@BHND_PMU_MIN_RES_MASK = common dso_local global i32 0, align 4
@BHND_PMU_MAX_TRANSITION_DLY = common dso_local global i32 0, align 4
@BHND_PMU_RES_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"timeout waiting for OTP resource enable\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Removing rsrc 0x%x from min_res_mask\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_otp_power(%struct.bhnd_pmu_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_pmu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %37 [
    i32 135, label %16
    i32 134, label %16
    i32 133, label %16
    i32 128, label %16
    i32 137, label %19
    i32 132, label %22
    i32 131, label %25
    i32 136, label %28
    i32 129, label %31
    i32 130, label %34
  ]

16:                                               ; preds = %2, %2, %2, %2
  %17 = load i32, i32* @RES4322_OTP_PU, align 4
  %18 = call i32 @PMURES_BIT(i32 %17)
  store i32 %18, i32* %8, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @RES4315_OTP_PU, align 4
  %21 = call i32 @PMURES_BIT(i32 %20)
  store i32 %21, i32* %8, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load i32, i32* @RES4325_OTP_PU, align 4
  %24 = call i32 @PMURES_BIT(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load i32, i32* @RES4329_OTP_PU, align 4
  %27 = call i32 @PMURES_BIT(i32 %26)
  store i32 %27, i32* %8, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* @RES4319_OTP_PU, align 4
  %30 = call i32 @PMURES_BIT(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @RES4336_OTP_PU, align 4
  %33 = call i32 @PMURES_BIT(i32 %32)
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @RES4330_OTP_PU, align 4
  %36 = call i32 @PMURES_BIT(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

38:                                               ; preds = %34, %31, %28, %25, %22, %19, %16
  %39 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @bhnd_pmu_res_deps(%struct.bhnd_pmu_softc* %39, i32 %40, i32 1)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %43 = call i32 @bhnd_pmu_res_masks(%struct.bhnd_pmu_softc* %42, i32* %7, i32* null)
  store i32 %43, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %110

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %47
  %55 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @PMU_DEBUG(%struct.bhnd_pmu_softc* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %61 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc* %60, i32 %61, i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %82, %54
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @BHND_PMU_MAX_TRANSITION_DLY, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %72 = load i32, i32* @BHND_PMU_RES_STATE, align 4
  %73 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %85

80:                                               ; preds = %70
  %81 = call i32 @DELAY(i32 10)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 10
  store i32 %84, i32* %11, align 4
  br label %66

85:                                               ; preds = %79, %66
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %93 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %85
  br label %109

96:                                               ; preds = %47
  %97 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @PMU_DEBUG(%struct.bhnd_pmu_softc* %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %4, align 8
  %103 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = call i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc* %102, i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %96, %95
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %91, %45, %37
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @PMURES_BIT(i32) #1

declare dso_local i32 @bhnd_pmu_res_deps(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @bhnd_pmu_res_masks(%struct.bhnd_pmu_softc*, i32*, i32*) #1

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_softc*, i8*, i32) #1

declare dso_local i32 @BHND_PMU_OR_4(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_softc*, i8*) #1

declare dso_local i32 @BHND_PMU_AND_4(%struct.bhnd_pmu_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
