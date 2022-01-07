; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_swreg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_swreg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CHIPC_CST4325_PMUTOP_2B = common dso_local global i32 0, align 4
@SET_LDO_VOLTAGE_CLDO_PWM = common dso_local global i32 0, align 4
@SET_LDO_VOLTAGE_CLDO_BURST = common dso_local global i32 0, align 4
@SET_LDO_VOLTAGE_CBUCK_PWM = common dso_local global i32 0, align 4
@SET_LDO_VOLTAGE_CBUCK_BURST = common dso_local global i32 0, align 4
@SET_LDO_VOLTAGE_LNLDO1 = common dso_local global i32 0, align 4
@BHND_BFL_LNLDO2_2P5 = common dso_local global i32 0, align 4
@SET_LDO_VOLTAGE_LNLDO2_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_pmu_swreg_init(%struct.bhnd_pmu_softc* %0) #0 {
  %2 = alloca %struct.bhnd_pmu_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %2, align 8
  %4 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %76 [
    i32 130, label %8
    i32 128, label %53
    i32 129, label %72
  ]

8:                                                ; preds = %1
  %9 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %77

15:                                               ; preds = %8
  %16 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CHIPC_CST4325_PMUTOP_2B, align 4
  %22 = call i32 @BHND_PMU_GET_BITS(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %26 = load i32, i32* @SET_LDO_VOLTAGE_CLDO_PWM, align 4
  %27 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %25, i32 %26, i32 15)
  %28 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %29 = load i32, i32* @SET_LDO_VOLTAGE_CLDO_BURST, align 4
  %30 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %28, i32 %29, i32 15)
  br label %31

31:                                               ; preds = %24, %15
  %32 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %33 = load i32, i32* @SET_LDO_VOLTAGE_CBUCK_PWM, align 4
  %34 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %32, i32 %33, i32 11)
  %35 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %36 = load i32, i32* @SET_LDO_VOLTAGE_CBUCK_BURST, align 4
  %37 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %35, i32 %36, i32 11)
  %38 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %39 = load i32, i32* @SET_LDO_VOLTAGE_LNLDO1, align 4
  %40 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %38, i32 %39, i32 1)
  %41 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %42 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BHND_BFL_LNLDO2_2P5, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %50 = load i32, i32* @SET_LDO_VOLTAGE_LNLDO2_SEL, align 4
  %51 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %48, %31
  br label %77

53:                                               ; preds = %1
  %54 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %55 = load i32, i32* @SET_LDO_VOLTAGE_CLDO_PWM, align 4
  %56 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %54, i32 %55, i32 14)
  %57 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %58 = load i32, i32* @SET_LDO_VOLTAGE_CLDO_BURST, align 4
  %59 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %57, i32 %58, i32 14)
  %60 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %61 = load i32, i32* @SET_LDO_VOLTAGE_LNLDO1, align 4
  %62 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %60, i32 %61, i32 14)
  %63 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %64 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %70 = call i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc* %69, i32 2, i32 4194304, i32 4194304)
  br label %71

71:                                               ; preds = %68, %53
  br label %77

72:                                               ; preds = %1
  %73 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %2, align 8
  %74 = load i32, i32* @SET_LDO_VOLTAGE_CBUCK_PWM, align 4
  %75 = call i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %73, i32 %74, i32 0)
  br label %77

76:                                               ; preds = %1
  br label %77

77:                                               ; preds = %76, %72, %71, %52, %14
  ret void
}

declare dso_local i32 @BHND_CHIPC_READ_CHIPST(i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc*, i32, i32) #1

declare dso_local i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
