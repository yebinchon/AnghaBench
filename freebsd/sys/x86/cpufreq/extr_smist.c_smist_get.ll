; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.smist_softc = type { %struct.cf_setting* }

@GET_STATE = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"get calibrated new rate of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @smist_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smist_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.smist_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.smist_softc* @device_get_softc(i32 %10)
  store %struct.smist_softc* %11, %struct.smist_softc** %6, align 8
  %12 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %13 = load i32, i32* @GET_STATE, align 4
  %14 = call i32 @getset_state(%struct.smist_softc* %12, i32* %8, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %21 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %20, i32 0, i32 0
  %22 = load %struct.cf_setting*, %struct.cf_setting** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %22, i64 %24
  %26 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %19
  %31 = call i32 @cpu_est_clockrate(i32 0, i32* %7)
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, 1000000
  %34 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %35 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %34, i32 0, i32 0
  %36 = load %struct.cf_setting*, %struct.cf_setting** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %36, i64 %38
  %40 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %43 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %42, i32 0, i32 0
  %44 = load %struct.cf_setting*, %struct.cf_setting** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %44, i64 %46
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DPRINT(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %30, %19
  %52 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %53 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %54 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %53, i32 0, i32 0
  %55 = load %struct.cf_setting*, %struct.cf_setting** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %55, i64 %57
  %59 = bitcast %struct.cf_setting* %52 to i8*
  %60 = bitcast %struct.cf_setting* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %51, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.smist_softc* @device_get_softc(i32) #1

declare dso_local i32 @getset_state(%struct.smist_softc*, i32*, i32) #1

declare dso_local i32 @cpu_est_clockrate(i32, i32*) #1

declare dso_local i32 @DPRINT(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
