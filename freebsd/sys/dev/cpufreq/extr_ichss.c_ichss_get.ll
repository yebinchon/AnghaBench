; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_ichss.c_ichss_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.ichss_softc = type { %struct.cf_setting*, i32 }

@ICHSS_CTRL_BIT = common dso_local global i64 0, align 8
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ichss: get calibrated new rate of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @ichss_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichss_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_setting*, align 8
  %5 = alloca %struct.ichss_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ichss_softc* @device_get_softc(i32 %8)
  store %struct.ichss_softc* %9, %struct.ichss_softc** %5, align 8
  %10 = load %struct.ichss_softc*, %struct.ichss_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ICH_GET_REG(i32 %12)
  %14 = load i64, i64* @ICHSS_CTRL_BIT, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.ichss_softc*, %struct.ichss_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %16, i32 0, i32 0
  %18 = load %struct.cf_setting*, %struct.cf_setting** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %18, i64 %19
  %21 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = call i32 @cpu_est_clockrate(i32 0, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 1000000
  %29 = load %struct.ichss_softc*, %struct.ichss_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %29, i32 0, i32 0
  %31 = load %struct.cf_setting*, %struct.cf_setting** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %31, i64 %32
  %34 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %33, i32 0, i32 0
  store i32 %28, i32* %34, align 4
  %35 = load %struct.ichss_softc*, %struct.ichss_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %35, i32 0, i32 0
  %37 = load %struct.cf_setting*, %struct.cf_setting** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %37, i64 %38
  %40 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %25, %2
  %44 = load %struct.cf_setting*, %struct.cf_setting** %4, align 8
  %45 = load %struct.ichss_softc*, %struct.ichss_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ichss_softc, %struct.ichss_softc* %45, i32 0, i32 0
  %47 = load %struct.cf_setting*, %struct.cf_setting** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %47, i64 %48
  %50 = bitcast %struct.cf_setting* %44 to i8*
  %51 = bitcast %struct.cf_setting* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  ret i32 0
}

declare dso_local %struct.ichss_softc* @device_get_softc(i32) #1

declare dso_local i64 @ICH_GET_REG(i32) #1

declare dso_local i32 @cpu_est_clockrate(i32, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
