; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_set_ldo_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_set_ldo_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unknown BCM4328/BCM5354 LDO %hhu\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown BCM4312 LDO %hhu\0A\00", align 1
@CHIPC_CST4325_PMUTOP_2B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown BCM4325 LDO %hhu\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown BCM4336 LDO %hhu\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"unknown BCM4330 LDO %hhu\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown BCM4331 LDO %hhu\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"cannot set LDO voltage on unsupported chip %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_set_ldo_voltage(%struct.bhnd_pmu_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_pmu_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %14 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %105 [
    i32 142, label %17
    i32 138, label %17
    i32 144, label %29
    i32 143, label %38
    i32 139, label %76
    i32 141, label %87
    i32 140, label %96
  ]

17:                                               ; preds = %3, %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %23 [
    i32 133, label %19
    i32 132, label %20
    i32 131, label %21
    i32 128, label %22
  ]

19:                                               ; preds = %17
  store i32 2, i32* %12, align 4
  store i32 25, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %28

20:                                               ; preds = %17
  store i32 3, i32* %12, align 4
  store i32 1, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %28

21:                                               ; preds = %17
  store i32 3, i32* %12, align 4
  store i32 9, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %28

22:                                               ; preds = %17
  store i32 3, i32* %12, align 4
  store i32 17, i32* %10, align 4
  store i32 63, i32* %11, align 4
  br label %28

23:                                               ; preds = %17
  %24 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  store i32 %27, i32* %4, align 4
  br label %126

28:                                               ; preds = %22, %21, %20, %19
  br label %113

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %32 [
    i32 128, label %31
  ]

31:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  store i32 21, i32* %10, align 4
  store i32 63, i32* %11, align 4
  br label %37

32:                                               ; preds = %29
  %33 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  store i32 %36, i32* %4, align 4
  br label %126

37:                                               ; preds = %31
  br label %113

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %70 [
    i32 134, label %40
    i32 135, label %41
    i32 136, label %42
    i32 137, label %55
    i32 130, label %68
    i32 129, label %69
  ]

40:                                               ; preds = %38
  store i32 5, i32* %12, align 4
  store i32 9, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %75

41:                                               ; preds = %38
  store i32 5, i32* %12, align 4
  store i32 13, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %75

42:                                               ; preds = %38
  store i32 3, i32* %12, align 4
  store i32 20, i32* %10, align 4
  store i32 31, i32* %11, align 4
  %43 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %44 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CHIPC_CST4325_PMUTOP_2B, align 4
  %49 = call i32 @BHND_PMU_GET_BITS(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = xor i32 %52, 9
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %42
  br label %75

55:                                               ; preds = %38
  store i32 3, i32* %12, align 4
  store i32 25, i32* %10, align 4
  store i32 31, i32* %11, align 4
  %56 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %57 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @BHND_CHIPC_READ_CHIPST(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @CHIPC_CST4325_PMUTOP_2B, align 4
  %62 = call i32 @BHND_PMU_GET_BITS(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, 9
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %55
  br label %75

68:                                               ; preds = %38
  store i32 5, i32* %12, align 4
  store i32 17, i32* %10, align 4
  store i32 31, i32* %11, align 4
  br label %75

69:                                               ; preds = %38
  store i32 6, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %75

70:                                               ; preds = %38
  %71 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENODEV, align 4
  store i32 %74, i32* %4, align 4
  br label %126

75:                                               ; preds = %69, %68, %67, %54, %41, %40
  br label %113

76:                                               ; preds = %3
  %77 = load i32, i32* %6, align 4
  switch i32 %77, label %81 [
    i32 134, label %78
    i32 135, label %79
    i32 130, label %80
  ]

78:                                               ; preds = %76
  store i32 4, i32* %12, align 4
  store i32 1, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %86

79:                                               ; preds = %76
  store i32 4, i32* %12, align 4
  store i32 5, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %86

80:                                               ; preds = %76
  store i32 4, i32* %12, align 4
  store i32 17, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %86

81:                                               ; preds = %76
  %82 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENODEV, align 4
  store i32 %85, i32* %4, align 4
  br label %126

86:                                               ; preds = %80, %79, %78
  br label %113

87:                                               ; preds = %3
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %90 [
    i32 136, label %89
  ]

89:                                               ; preds = %87
  store i32 3, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 31, i32* %11, align 4
  br label %95

90:                                               ; preds = %87
  %91 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @ENODEV, align 4
  store i32 %94, i32* %4, align 4
  br label %126

95:                                               ; preds = %89
  br label %113

96:                                               ; preds = %3
  %97 = load i32, i32* %6, align 4
  switch i32 %97, label %99 [
    i32 128, label %98
  ]

98:                                               ; preds = %96
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 15, i32* %11, align 4
  br label %104

99:                                               ; preds = %96
  %100 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @ENODEV, align 4
  store i32 %103, i32* %4, align 4
  br label %126

104:                                              ; preds = %98
  br label %113

105:                                              ; preds = %3
  %106 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %107 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %108 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  store i32 %112, i32* %4, align 4
  br label %126

113:                                              ; preds = %104, %95, %86, %75, %37, %28
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 %116, %117
  store i32 %118, i32* %9, align 4
  %119 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = shl i32 %122, %123
  %125 = call i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc* %119, i32 %120, i32 %121, i32 %124)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %113, %105, %99, %90, %81, %70, %32, %23
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_softc*, i8*, i32) #1

declare dso_local i32 @BHND_CHIPC_READ_CHIPST(i32) #1

declare dso_local i32 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @BHND_PMU_REGCTRL_WRITE(%struct.bhnd_pmu_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
