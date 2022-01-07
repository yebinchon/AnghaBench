; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.cpufreq_dt_softc = type { i32 }
%struct.cpufreq_dt_opp = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"cpufreq_dt_get\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't find the current freq in opp\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Current freq %dMhz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @cpufreq_dt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.cpufreq_dt_softc*, align 8
  %7 = alloca %struct.cpufreq_dt_opp*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cpufreq_dt_softc* @device_get_softc(i32 %9)
  store %struct.cpufreq_dt_softc* %10, %struct.cpufreq_dt_softc** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, i8*, ...) @DEBUG(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %14 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @clk_get_freq(i32 %15, i32* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.cpufreq_dt_opp* @cpufreq_dt_find_opp(i32 %21, i32 %22)
  store %struct.cpufreq_dt_opp* %23, %struct.cpufreq_dt_opp** %7, align 8
  %24 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %25 = icmp eq %struct.cpufreq_dt_opp* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %7, align 8
  %33 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %34 = call i32 @cpufreq_dt_opp_to_setting(i32 %31, %struct.cpufreq_dt_opp* %32, %struct.cf_setting* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %37 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @DEBUG(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %26, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.cpufreq_dt_softc* @device_get_softc(i32) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i64 @clk_get_freq(i32, i32*) #1

declare dso_local %struct.cpufreq_dt_opp* @cpufreq_dt_find_opp(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cpufreq_dt_opp_to_setting(i32, %struct.cpufreq_dt_opp*, %struct.cf_setting*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
