; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.cpufreq_dt_softc = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"cpufreq_dt_settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @cpufreq_dt_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cpufreq_dt_softc*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @DEBUG(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %13 = icmp eq %struct.cf_setting* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.cpufreq_dt_softc* @device_get_softc(i32 %20)
  store %struct.cpufreq_dt_softc* %21, %struct.cpufreq_dt_softc** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %8, align 8
  %25 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %8, align 8
  %30 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @E2BIG, align 4
  store i32 %33, i32* %4, align 4
  br label %61

34:                                               ; preds = %19
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %8, align 8
  %38 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %8, align 8
  %45 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %49, i64 %50
  %52 = call i32 @cpufreq_dt_opp_to_setting(i32 %43, i32* %48, %struct.cf_setting* %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %8, align 8
  %58 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %28, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local %struct.cpufreq_dt_softc* @device_get_softc(i32) #1

declare dso_local i32 @cpufreq_dt_opp_to_setting(i32, i32*, %struct.cf_setting*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
