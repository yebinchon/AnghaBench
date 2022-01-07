; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_find_opp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_find_opp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_dt_opp = type { i32 }
%struct.cpufreq_dt_softc = type { i64, %struct.cpufreq_dt_opp* }

@.str = private unnamed_addr constant [22 x i8] c"Looking for freq %ju\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Couldn't find one\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpufreq_dt_opp* (i32, i32)* @cpufreq_dt_find_opp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpufreq_dt_opp* @cpufreq_dt_find_opp(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_dt_opp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_dt_softc*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.cpufreq_dt_softc* @device_get_softc(i32 %8)
  store %struct.cpufreq_dt_softc* %9, %struct.cpufreq_dt_softc** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i8*, ...) @DEBUG(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %16 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %21 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %20, i32 0, i32 1
  %22 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %22, i64 %23
  %25 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @CPUFREQ_CMP(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %6, align 8
  %32 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %31, i32 0, i32 1
  %33 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.cpufreq_dt_opp, %struct.cpufreq_dt_opp* %33, i64 %34
  store %struct.cpufreq_dt_opp* %35, %struct.cpufreq_dt_opp** %3, align 8
  br label %43

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %13

40:                                               ; preds = %13
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @DEBUG(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cpufreq_dt_opp* null, %struct.cpufreq_dt_opp** %3, align 8
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.cpufreq_dt_opp*, %struct.cpufreq_dt_opp** %3, align 8
  ret %struct.cpufreq_dt_opp* %44
}

declare dso_local %struct.cpufreq_dt_softc* @device_get_softc(i32) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i64 @CPUFREQ_CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
