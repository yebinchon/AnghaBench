; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.ichss_softc = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ICHSS_CTRL_BIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ichss: requested setting %d\0A\00", align 1
@ICHSS_BM_DISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"transition to %d failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ichss: set calibrated new rate of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @ichss_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichss_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.ichss_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ichss_softc* @device_get_softc(i32 %13)
  store %struct.ichss_softc* %14, %struct.ichss_softc** %6, align 8
  %15 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %16 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %19 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @CPUFREQ_CMP(i32 %17, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %29 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %32 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @CPUFREQ_CMP(i32 %30, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i64, i64* @ICHSS_CTRL_BIT, align 8
  store i64 %40, i64* %10, align 8
  br label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %129

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = call i32 (...) @intr_disable()
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %49 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ICH_GET_REG(i32 %50)
  %52 = load i64, i64* @ICHSS_CTRL_BIT, align 8
  %53 = xor i64 %52, -1
  %54 = and i64 %51, %53
  store i64 %54, i64* %9, align 8
  %55 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %56 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ICH_GET_REG(i32 %57)
  %59 = load i64, i64* @ICHSS_BM_DISABLE, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %7, align 8
  %61 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %62 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ICH_SET_REG(i32 %63, i64 %64)
  %66 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %67 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = or i64 %69, %70
  %72 = call i32 @ICH_SET_REG(i32 %68, i64 %71)
  %73 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %74 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @ICHSS_BM_DISABLE, align 8
  %78 = xor i64 %77, -1
  %79 = and i64 %76, %78
  %80 = call i32 @ICH_SET_REG(i32 %75, i64 %79)
  %81 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %82 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ICH_GET_REG(i32 %83)
  store i64 %84, i64* %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @intr_restore(i32 %85)
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @ICHSS_CTRL_BIT, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %44
  %93 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %94 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %3, align 4
  br label %129

99:                                               ; preds = %44
  %100 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %101 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %99
  %110 = call i32 @cpu_est_clockrate(i32 0, i32* %11)
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %111, 1000000
  %113 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %114 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %112, i32* %118, align 4
  %119 = load %struct.ichss_softc*, %struct.ichss_softc** %6, align 8
  %120 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %109, %99
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %92, %41
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.ichss_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPUFREQ_CMP(i32, i32) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i64 @ICH_GET_REG(i32) #1

declare dso_local i32 @ICH_SET_REG(i32, i64) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @cpu_est_clockrate(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
