; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_opp_to_setting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_opp_to_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_dt_opp = type { i32, i32, i32 }
%struct.cf_setting = type { i32, i32, i32, i32, i32 }
%struct.cpufreq_dt_softc = type { i32 }

@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cpufreq_dt_opp*, %struct.cf_setting*)* @cpufreq_dt_opp_to_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_dt_opp_to_setting(i32 %0, %struct.cpufreq_dt_opp* %1, %struct.cf_setting* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_dt_opp*, align 8
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca %struct.cpufreq_dt_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cpufreq_dt_opp* %1, %struct.cpufreq_dt_opp** %5, align 8
  store %struct.cf_setting* %2, %struct.cf_setting** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cpufreq_dt_softc* @device_get_softc(i32 %8)
  store %struct.cpufreq_dt_softc* %9, %struct.cpufreq_dt_softc** %7, align 8
  %10 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %11 = call i32 @memset(%struct.cf_setting* %10, i32 0, i32 20)
  %12 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %5, align 8
  %13 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000000
  %16 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %17 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %5, align 8
  %19 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 1000
  %22 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %23 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %25 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %26 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %5, align 8
  %28 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %31 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %34 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local %struct.cpufreq_dt_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
